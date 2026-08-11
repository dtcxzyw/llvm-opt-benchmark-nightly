inline.NumInlined: 12080
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 418
loop-unroll.NumUnrolled: 430
begin_hunk_0_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ab unwind label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ac unwind label %bb.bl

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %5, align 8, !tbaa !87
  %.val20.i = load ptr, ptr %i.de, align 8        ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !67, !noalias !3506 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.df, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i29.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i
  %.0173.us.i.i = phi i64 [ %i.ds, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.dh = lshr i64 %.0173.us.i.i, 6
  %i.di = and i64 %.0173.us.i.i, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51, !noalias !3506
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dl, %i.dk
  %.not.us.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.dn, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.do = load i8, ptr %i.dg, align 4, !tbaa !3438, !range !489, !alias.scope !3504, !noalias !3501, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  store i8 1, ptr %i.dg, align 4, !tbaa !3438, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.af:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3504, !noalias !3501
  %i.dr = icmp sgt i32 %i.dq, %.val18.us.i.i
  br i1 %i.dr, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.ag:                                            ; preds = %bb.af
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.ag, %bb.af, %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ds = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.ds, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !3507

.preheader.i29.i:                                 ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.promoted.i30.i = load i8, ptr %i.dt, align 4, !tbaa !3438, !alias.scope !3504, !noalias !3501
  %i.du = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dv = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !3506
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dw
  %.val.i31.peel.i = load i32, ptr %i.dx, align 4, !alias.scope !3501, !noalias !3504 ; 5 uses
  br i1 %i.du, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  store i8 1, ptr %i.dt, align 4, !tbaa !3438, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dy = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3504, !noalias !3501 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, %.val.i31.peel.i
  br i1 %i.dz, label %bb.aj, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.aj:                                            ; preds = %bb.ai
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ea = phi i32 [ %.val.i31.peel.i, %bb.aj ], [ %i.dy, %bb.ai ], [ %.val.i31.peel.i, %bb.ah ] ; 2 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eb = add i64 %4, -1                          ; 3 uses
  %xtraiter59 = and i64 %i.eb, 1
  %i.ec = icmp eq i64 %4, 2
  br i1 %i.ec, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %unroll_iter = and i64 %i.eb, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.dc, align 4, !alias.scope !3501, !noalias !3504 ; 5 uses
  br i1 %i.du, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  store i8 1, ptr %i.dt, align 4, !tbaa !3438, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ed = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3504, !noalias !3501 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, %.val.us.i.peel.i
  br i1 %i.ee, label %bb.am, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.am:                                            ; preds = %bb.al
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ef = phi i32 [ %.val.us.i.peel.i, %bb.am ], [ %i.ed, %bb.al ], [ %.val.us.i.peel.i, %bb.ak ] ; 2 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter63 = and i64 %i.eg, 3                  ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %unroll_iter68 = and i64 %i.eg, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new
  %i.ej = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ey, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 2 uses
  %.04.us.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 5 uses
  %niter69 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %niter69.next.3, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.ek, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.el = icmp sgt i32 %i.ej, %.val.us.i.i
  br i1 %i.el, label %bb.an, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  store i32 %.val.us.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  %i.em = phi i32 [ %.val.us.i.i, %bb.an ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.val.us.i.i.1 = load i32, ptr %i.eo, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.ep = icmp sgt i32 %i.em, %.val.us.i.i.1
  br i1 %i.ep, label %bb.ao, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

bb.ao:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  store i32 %.val.us.i.i.1, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1: ; preds = %bb.ao, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %i.eq = phi i32 [ %.val.us.i.i.1, %bb.ao ], [ %i.em, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val.us.i.i.2 = load i32, ptr %i.es, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.et = icmp sgt i32 %i.eq, %.val.us.i.i.2
  br i1 %i.et, label %bb.ap, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

bb.ap:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  store i32 %.val.us.i.i.2, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2: ; preds = %bb.ap, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  %i.eu = phi i32 [ %.val.us.i.i.2, %bb.ap ], [ %i.eq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.val.us.i.i.3 = load i32, ptr %i.ew, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.ex = icmp sgt i32 %i.eu, %.val.us.i.i.3
  br i1 %i.ex, label %bb.aq, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

bb.aq:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  store i32 %.val.us.i.i.3, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3: ; preds = %bb.aq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  %i.ey = phi i32 [ %.val.us.i.i.3, %bb.aq ], [ %i.eu, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2 ] ; 2 uses
  %i.ez = add nuw i64 %.04.us.i.i, 4              ; 2 uses
  %niter69.next.3 = add i64 %niter69, 4           ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i, !llvm.loop !3508

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.fo, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3, !noalias !3506
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = lshr i64 %i.fc, 6
  %i.fe = and i64 %i.fc, 63
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !51, !noalias !3506
  %i.fh = shl nuw i64 1, %i.fe
  %i.fi = and i64 %i.fh, %i.fg
  %.not.i24.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fc
  %.val18.i.i = load i32, ptr %i.fj, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.fk = load i8, ptr %i.dg, align 4, !tbaa !3438, !range !489, !alias.scope !3504, !noalias !3501, !noundef !133
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  store i8 1, ptr %i.dg, align 4, !tbaa !3438, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.at:                                            ; preds = %bb.ar
  %i.fm = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3504, !noalias !3501
  %i.fn = icmp sgt i32 %i.fm, %.val18.i.i
  br i1 %i.fn, label %bb.au, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.au:                                            ; preds = %bb.at
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.au, %bb.at, %bb.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fo = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !3507

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new
  %i.fp = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gc, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 2 uses
  %.04.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gd, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !3506
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fs
  %.val.i31.i = load i32, ptr %i.ft, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.fu = icmp sgt i32 %i.fp, %.val.i31.i
  br i1 %i.fu, label %bb.av, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

bb.av:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  store i32 %.val.i31.i, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %bb.av, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  %i.fv = phi i32 [ %.val.i31.i, %bb.av ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3, !noalias !3506
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fz
  %.val.i31.i.1 = load i32, ptr %i.ga, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.gb = icmp sgt i32 %i.fv, %.val.i31.i.1
  br i1 %i.gb, label %bb.aw, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

bb.aw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  store i32 %.val.i31.i.1, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1: ; preds = %bb.aw, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %i.gc = phi i32 [ %.val.i31.i.1, %bb.aw ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 2 uses
  %i.gd = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i, !llvm.loop !3509

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3
  %lcmp.mod66.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod66.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %.epil.init65 = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ey, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ez, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader
  %i.ge = phi i32 [ %i.gh, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.epil.init65, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %.04.us.i.i.epil = phi i64 [ %i.gi, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i.epil
  %.val.us.i.i.epil = load i32, ptr %i.gf, align 4, !alias.scope !3501, !noalias !3504 ; 3 uses
  %i.gg = icmp sgt i32 %i.ge, %.val.us.i.i.epil
  br i1 %i.gg, label %bb.ax, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

bb.ax:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  store i32 %.val.us.i.i.epil, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil: ; preds = %bb.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  %i.gh = phi i32 [ %.val.us.i.i.epil, %bb.ax ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil ]
  %i.gi = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter63
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil, !llvm.loop !3510

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1
  %lcmp.mod61.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod61.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %.epil.init = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gc, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gd, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod62)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !3506
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gl
  %.val.i31.i.epil = load i32, ptr %i.gm, align 4, !alias.scope !3501, !noalias !3504 ; 2 uses
  %i.gn = icmp sgt i32 %.epil.init, %.val.i31.i.epil
  br i1 %i.gn, label %bb.ay, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

bb.ay:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader
  store i32 %.val.i31.i.epil, ptr %3, align 4, !tbaa !3442, !alias.scope !3504, !noalias !3501
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %bb.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i, %.preheader.i29.i, %.preheader1.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gq, align 8, !tbaa !96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !98
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !3511
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !3511
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.bc ], [ %i.hd, %bb.bd ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.he, label %bb.be, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !102

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hh, align 8, !tbaa !96
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !98
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ab unwind label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ac unwind label %bb.bl

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %5, align 8, !tbaa !87
  %.val20.i = load ptr, ptr %i.de, align 8        ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3802)
  call void @llvm.experimental.noalias.scope.decl(metadata !3805)
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !67, !noalias !3807 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.df, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i29.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i
  %.0173.us.i.i = phi i64 [ %i.ds, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.dh = lshr i64 %.0173.us.i.i, 6
  %i.di = and i64 %.0173.us.i.i, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51, !noalias !3807
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dl, %i.dk
  %.not.us.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.dn, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.do = load i8, ptr %i.dg, align 4, !tbaa !3739, !range !489, !alias.scope !3805, !noalias !3802, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  store i8 1, ptr %i.dg, align 4, !tbaa !3739, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.af:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3805, !noalias !3802
  %i.dr = icmp ugt i32 %i.dq, %.val18.us.i.i
  br i1 %i.dr, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.ag:                                            ; preds = %bb.af
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.ag, %bb.af, %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ds = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.ds, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !3808

.preheader.i29.i:                                 ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.promoted.i30.i = load i8, ptr %i.dt, align 4, !tbaa !3739, !alias.scope !3805, !noalias !3802
  %i.du = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dv = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !3807
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dw
  %.val.i31.peel.i = load i32, ptr %i.dx, align 4, !alias.scope !3802, !noalias !3805 ; 5 uses
  br i1 %i.du, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  store i8 1, ptr %i.dt, align 4, !tbaa !3739, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dy = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3805, !noalias !3802 ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, %.val.i31.peel.i
  br i1 %i.dz, label %bb.aj, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.aj:                                            ; preds = %bb.ai
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ea = phi i32 [ %.val.i31.peel.i, %bb.aj ], [ %i.dy, %bb.ai ], [ %.val.i31.peel.i, %bb.ah ] ; 2 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eb = add i64 %4, -1                          ; 3 uses
  %xtraiter59 = and i64 %i.eb, 1
  %i.ec = icmp eq i64 %4, 2
  br i1 %i.ec, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %unroll_iter = and i64 %i.eb, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.dc, align 4, !alias.scope !3802, !noalias !3805 ; 5 uses
  br i1 %i.du, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  store i8 1, ptr %i.dt, align 4, !tbaa !3739, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ed = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3805, !noalias !3802 ; 2 uses
  %i.ee = icmp ugt i32 %i.ed, %.val.us.i.peel.i
  br i1 %i.ee, label %bb.am, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.am:                                            ; preds = %bb.al
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ef = phi i32 [ %.val.us.i.peel.i, %bb.am ], [ %i.ed, %bb.al ], [ %.val.us.i.peel.i, %bb.ak ] ; 2 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter63 = and i64 %i.eg, 3                  ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %unroll_iter68 = and i64 %i.eg, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new
  %i.ej = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ey, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 2 uses
  %.04.us.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 5 uses
  %niter69 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %niter69.next.3, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.ek, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.el = icmp ugt i32 %i.ej, %.val.us.i.i
  br i1 %i.el, label %bb.an, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  store i32 %.val.us.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  %i.em = phi i32 [ %.val.us.i.i, %bb.an ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.val.us.i.i.1 = load i32, ptr %i.eo, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.ep = icmp ugt i32 %i.em, %.val.us.i.i.1
  br i1 %i.ep, label %bb.ao, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

bb.ao:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  store i32 %.val.us.i.i.1, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1: ; preds = %bb.ao, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %i.eq = phi i32 [ %.val.us.i.i.1, %bb.ao ], [ %i.em, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val.us.i.i.2 = load i32, ptr %i.es, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.et = icmp ugt i32 %i.eq, %.val.us.i.i.2
  br i1 %i.et, label %bb.ap, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

bb.ap:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  store i32 %.val.us.i.i.2, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2: ; preds = %bb.ap, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  %i.eu = phi i32 [ %.val.us.i.i.2, %bb.ap ], [ %i.eq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.val.us.i.i.3 = load i32, ptr %i.ew, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.ex = icmp ugt i32 %i.eu, %.val.us.i.i.3
  br i1 %i.ex, label %bb.aq, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

bb.aq:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  store i32 %.val.us.i.i.3, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3: ; preds = %bb.aq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  %i.ey = phi i32 [ %.val.us.i.i.3, %bb.aq ], [ %i.eu, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2 ] ; 2 uses
  %i.ez = add nuw i64 %.04.us.i.i, 4              ; 2 uses
  %niter69.next.3 = add i64 %niter69, 4           ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i, !llvm.loop !3809

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.fo, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3, !noalias !3807
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = lshr i64 %i.fc, 6
  %i.fe = and i64 %i.fc, 63
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !51, !noalias !3807
  %i.fh = shl nuw i64 1, %i.fe
  %i.fi = and i64 %i.fh, %i.fg
  %.not.i24.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fc
  %.val18.i.i = load i32, ptr %i.fj, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.fk = load i8, ptr %i.dg, align 4, !tbaa !3739, !range !489, !alias.scope !3805, !noalias !3802, !noundef !133
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  store i8 1, ptr %i.dg, align 4, !tbaa !3739, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.at:                                            ; preds = %bb.ar
  %i.fm = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !3805, !noalias !3802
  %i.fn = icmp ugt i32 %i.fm, %.val18.i.i
  br i1 %i.fn, label %bb.au, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.au:                                            ; preds = %bb.at
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.au, %bb.at, %bb.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fo = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !3808

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new
  %i.fp = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gc, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 2 uses
  %.04.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gd, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !3807
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fs
  %.val.i31.i = load i32, ptr %i.ft, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.fu = icmp ugt i32 %i.fp, %.val.i31.i
  br i1 %i.fu, label %bb.av, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

bb.av:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  store i32 %.val.i31.i, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %bb.av, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  %i.fv = phi i32 [ %.val.i31.i, %bb.av ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3, !noalias !3807
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fz
  %.val.i31.i.1 = load i32, ptr %i.ga, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.gb = icmp ugt i32 %i.fv, %.val.i31.i.1
  br i1 %i.gb, label %bb.aw, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

bb.aw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  store i32 %.val.i31.i.1, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1: ; preds = %bb.aw, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %i.gc = phi i32 [ %.val.i31.i.1, %bb.aw ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 2 uses
  %i.gd = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i, !llvm.loop !3810

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3
  %lcmp.mod66.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod66.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %.epil.init65 = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ey, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ez, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader
  %i.ge = phi i32 [ %i.gh, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.epil.init65, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %.04.us.i.i.epil = phi i64 [ %i.gi, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i.epil
  %.val.us.i.i.epil = load i32, ptr %i.gf, align 4, !alias.scope !3802, !noalias !3805 ; 3 uses
  %i.gg = icmp ugt i32 %i.ge, %.val.us.i.i.epil
  br i1 %i.gg, label %bb.ax, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

bb.ax:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  store i32 %.val.us.i.i.epil, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil: ; preds = %bb.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  %i.gh = phi i32 [ %.val.us.i.i.epil, %bb.ax ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil ]
  %i.gi = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter63
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil, !llvm.loop !3811

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1
  %lcmp.mod61.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod61.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %.epil.init = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gc, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gd, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod62)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !3807
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gl
  %.val.i31.i.epil = load i32, ptr %i.gm, align 4, !alias.scope !3802, !noalias !3805 ; 2 uses
  %i.gn = icmp ugt i32 %.epil.init, %.val.i31.i.epil
  br i1 %i.gn, label %bb.ay, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

bb.ay:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader
  store i32 %.val.i31.i.epil, ptr %3, align 4, !tbaa !3743, !alias.scope !3805, !noalias !3802
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %bb.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MinOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i, %.preheader.i29.i, %.preheader1.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gq, align 8, !tbaa !96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !98
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !3812
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !3812
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.bc ], [ %i.hd, %bb.bd ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.he, label %bb.be, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !102

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MinOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hh, align 8, !tbaa !96
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !98
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ab unwind label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ac unwind label %bb.bl

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %5, align 8, !tbaa !87
  %.val20.i = load ptr, ptr %i.de, align 8        ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4580)
  call void @llvm.experimental.noalias.scope.decl(metadata !4583)
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !67, !noalias !4585 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.df, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i29.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i
  %.0173.us.i.i = phi i64 [ %i.ds, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.dh = lshr i64 %.0173.us.i.i, 6
  %i.di = and i64 %.0173.us.i.i, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51, !noalias !4585
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dl, %i.dk
  %.not.us.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.dn, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.do = load i8, ptr %i.dg, align 4, !tbaa !3438, !range !489, !alias.scope !4583, !noalias !4580, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  store i8 1, ptr %i.dg, align 4, !tbaa !3438, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.af:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4583, !noalias !4580
  %i.dr = icmp sgt i32 %.val18.us.i.i, %i.dq
  br i1 %i.dr, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.ag:                                            ; preds = %bb.af
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.ag, %bb.af, %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ds = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.ds, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !4586

.preheader.i29.i:                                 ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.promoted.i30.i = load i8, ptr %i.dt, align 4, !tbaa !3438, !alias.scope !4583, !noalias !4580
  %i.du = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dv = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !4585
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dw
  %.val.i31.peel.i = load i32, ptr %i.dx, align 4, !alias.scope !4580, !noalias !4583 ; 5 uses
  br i1 %i.du, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  store i8 1, ptr %i.dt, align 4, !tbaa !3438, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dy = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4583, !noalias !4580 ; 2 uses
  %i.dz = icmp sgt i32 %.val.i31.peel.i, %i.dy
  br i1 %i.dz, label %bb.aj, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.aj:                                            ; preds = %bb.ai
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ea = phi i32 [ %.val.i31.peel.i, %bb.aj ], [ %i.dy, %bb.ai ], [ %.val.i31.peel.i, %bb.ah ] ; 2 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eb = add i64 %4, -1                          ; 3 uses
  %xtraiter59 = and i64 %i.eb, 1
  %i.ec = icmp eq i64 %4, 2
  br i1 %i.ec, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %unroll_iter = and i64 %i.eb, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.dc, align 4, !alias.scope !4580, !noalias !4583 ; 5 uses
  br i1 %i.du, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  store i8 1, ptr %i.dt, align 4, !tbaa !3438, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ed = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4583, !noalias !4580 ; 2 uses
  %i.ee = icmp sgt i32 %.val.us.i.peel.i, %i.ed
  br i1 %i.ee, label %bb.am, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.am:                                            ; preds = %bb.al
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ef = phi i32 [ %.val.us.i.peel.i, %bb.am ], [ %i.ed, %bb.al ], [ %.val.us.i.peel.i, %bb.ak ] ; 2 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter63 = and i64 %i.eg, 3                  ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %unroll_iter68 = and i64 %i.eg, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new
  %i.ej = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ey, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 2 uses
  %.04.us.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 5 uses
  %niter69 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %niter69.next.3, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.ek, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.el = icmp sgt i32 %.val.us.i.i, %i.ej
  br i1 %i.el, label %bb.an, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  store i32 %.val.us.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  %i.em = phi i32 [ %.val.us.i.i, %bb.an ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.val.us.i.i.1 = load i32, ptr %i.eo, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.ep = icmp sgt i32 %.val.us.i.i.1, %i.em
  br i1 %i.ep, label %bb.ao, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

bb.ao:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  store i32 %.val.us.i.i.1, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1: ; preds = %bb.ao, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %i.eq = phi i32 [ %.val.us.i.i.1, %bb.ao ], [ %i.em, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val.us.i.i.2 = load i32, ptr %i.es, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.et = icmp sgt i32 %.val.us.i.i.2, %i.eq
  br i1 %i.et, label %bb.ap, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

bb.ap:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  store i32 %.val.us.i.i.2, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2: ; preds = %bb.ap, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  %i.eu = phi i32 [ %.val.us.i.i.2, %bb.ap ], [ %i.eq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.val.us.i.i.3 = load i32, ptr %i.ew, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.ex = icmp sgt i32 %.val.us.i.i.3, %i.eu
  br i1 %i.ex, label %bb.aq, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

bb.aq:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  store i32 %.val.us.i.i.3, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3: ; preds = %bb.aq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  %i.ey = phi i32 [ %.val.us.i.i.3, %bb.aq ], [ %i.eu, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2 ] ; 2 uses
  %i.ez = add nuw i64 %.04.us.i.i, 4              ; 2 uses
  %niter69.next.3 = add i64 %niter69, 4           ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i, !llvm.loop !4587

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.fo, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3, !noalias !4585
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = lshr i64 %i.fc, 6
  %i.fe = and i64 %i.fc, 63
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !51, !noalias !4585
  %i.fh = shl nuw i64 1, %i.fe
  %i.fi = and i64 %i.fh, %i.fg
  %.not.i24.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fc
  %.val18.i.i = load i32, ptr %i.fj, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.fk = load i8, ptr %i.dg, align 4, !tbaa !3438, !range !489, !alias.scope !4583, !noalias !4580, !noundef !133
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  store i8 1, ptr %i.dg, align 4, !tbaa !3438, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.at:                                            ; preds = %bb.ar
  %i.fm = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4583, !noalias !4580
  %i.fn = icmp sgt i32 %.val18.i.i, %i.fm
  br i1 %i.fn, label %bb.au, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.au:                                            ; preds = %bb.at
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.au, %bb.at, %bb.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fo = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !4586

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new
  %i.fp = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gc, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 2 uses
  %.04.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gd, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !4585
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fs
  %.val.i31.i = load i32, ptr %i.ft, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.fu = icmp sgt i32 %.val.i31.i, %i.fp
  br i1 %i.fu, label %bb.av, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

bb.av:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  store i32 %.val.i31.i, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %bb.av, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  %i.fv = phi i32 [ %.val.i31.i, %bb.av ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3, !noalias !4585
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fz
  %.val.i31.i.1 = load i32, ptr %i.ga, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i31.i.1, %i.fv
  br i1 %i.gb, label %bb.aw, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

bb.aw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  store i32 %.val.i31.i.1, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1: ; preds = %bb.aw, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %i.gc = phi i32 [ %.val.i31.i.1, %bb.aw ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 2 uses
  %i.gd = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i, !llvm.loop !4588

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3
  %lcmp.mod66.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod66.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %.epil.init65 = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ey, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ez, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader
  %i.ge = phi i32 [ %i.gh, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.epil.init65, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %.04.us.i.i.epil = phi i64 [ %i.gi, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i.epil
  %.val.us.i.i.epil = load i32, ptr %i.gf, align 4, !alias.scope !4580, !noalias !4583 ; 3 uses
  %i.gg = icmp sgt i32 %.val.us.i.i.epil, %i.ge
  br i1 %i.gg, label %bb.ax, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

bb.ax:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  store i32 %.val.us.i.i.epil, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil: ; preds = %bb.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  %i.gh = phi i32 [ %.val.us.i.i.epil, %bb.ax ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil ]
  %i.gi = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter63
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil, !llvm.loop !4589

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1
  %lcmp.mod61.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod61.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %.epil.init = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gc, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gd, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod62)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !4585
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gl
  %.val.i31.i.epil = load i32, ptr %i.gm, align 4, !alias.scope !4580, !noalias !4583 ; 2 uses
  %i.gn = icmp sgt i32 %.val.i31.i.epil, %.epil.init
  br i1 %i.gn, label %bb.ay, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

bb.ay:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader
  store i32 %.val.i31.i.epil, ptr %3, align 4, !tbaa !3442, !alias.scope !4583, !noalias !4580
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %bb.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIiNS0_11MinMaxStateIiEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i, %.preheader.i29.i, %.preheader1.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gq, align 8, !tbaa !96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !98
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !4590
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !4590
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.bc ], [ %i.hd, %bb.bd ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.he, label %bb.be, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !102

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIiEEiNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hh, align 8, !tbaa !96
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !98
end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ab unwind label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.ac unwind label %bb.bl

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %5, align 8, !tbaa !87
  %.val20.i = load ptr, ptr %i.de, align 8        ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4860)
  call void @llvm.experimental.noalias.scope.decl(metadata !4863)
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !67, !noalias !4865 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.df, null
  %.not7.i.i = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not.i.i22.i, label %.preheader.i29.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.preheader1.i.i
  %.not.i19.i.i = icmp eq ptr %.val20.i, null
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  br i1 %.not.i19.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i
  %.0173.us.i.i = phi i64 [ %i.ds, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i ], [ 0, %.lr.ph.i23.i ] ; 4 uses
  %i.dh = lshr i64 %.0173.us.i.i, 6
  %i.di = and i64 %.0173.us.i.i, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51, !noalias !4865
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dl, %i.dk
  %.not.us.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.dn, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.do = load i8, ptr %i.dg, align 4, !tbaa !3739, !range !489, !alias.scope !4863, !noalias !4860, !noundef !133
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  store i8 1, ptr %i.dg, align 4, !tbaa !3739, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.af:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4863, !noalias !4860
  %i.dr = icmp ugt i32 %.val18.us.i.i, %i.dq
  br i1 %i.dr, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.ag:                                            ; preds = %bb.af
  store i32 %.val18.us.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.ag, %bb.af, %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.ds = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.ds, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !4866

.preheader.i29.i:                                 ; preds = %bb.ac
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.promoted.i30.i = load i8, ptr %i.dt, align 4, !tbaa !3739, !alias.scope !4863, !noalias !4860
  %i.du = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dv = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !4865
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dw
  %.val.i31.peel.i = load i32, ptr %i.dx, align 4, !alias.scope !4860, !noalias !4863 ; 5 uses
  br i1 %i.du, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  store i8 1, ptr %i.dt, align 4, !tbaa !3739, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dy = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4863, !noalias !4860 ; 2 uses
  %i.dz = icmp ugt i32 %.val.i31.peel.i, %i.dy
  br i1 %i.dz, label %bb.aj, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.aj:                                            ; preds = %bb.ai
  store i32 %.val.i31.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ea = phi i32 [ %.val.i31.peel.i, %bb.aj ], [ %i.dy, %bb.ai ], [ %.val.i31.peel.i, %bb.ah ] ; 2 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eb = add i64 %4, -1                          ; 3 uses
  %xtraiter59 = and i64 %i.eb, 1
  %i.ec = icmp eq i64 %4, 2
  br i1 %i.ec, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %unroll_iter = and i64 %i.eb, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.dc, align 4, !alias.scope !4860, !noalias !4863 ; 5 uses
  br i1 %i.du, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  store i8 1, ptr %i.dt, align 4, !tbaa !3739, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ed = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4863, !noalias !4860 ; 2 uses
  %i.ee = icmp ugt i32 %.val.us.i.peel.i, %i.ed
  br i1 %i.ee, label %bb.am, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.am:                                            ; preds = %bb.al
  store i32 %.val.us.i.peel.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ef = phi i32 [ %.val.us.i.peel.i, %bb.am ], [ %i.ed, %bb.al ], [ %.val.us.i.peel.i, %bb.ak ] ; 2 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter63 = and i64 %i.eg, 3                  ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %unroll_iter68 = and i64 %i.eg, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new
  %i.ej = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ey, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 2 uses
  %.04.us.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ] ; 5 uses
  %niter69 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader.new ], [ %niter69.next.3, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.ek, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.el = icmp ugt i32 %.val.us.i.i, %i.ej
  br i1 %i.el, label %bb.an, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  store i32 %.val.us.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i
  %i.em = phi i32 [ %.val.us.i.i, %bb.an ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.val.us.i.i.1 = load i32, ptr %i.eo, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.ep = icmp ugt i32 %.val.us.i.i.1, %i.em
  br i1 %i.ep, label %bb.ao, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

bb.ao:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  store i32 %.val.us.i.i.1, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1: ; preds = %bb.ao, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %i.eq = phi i32 [ %.val.us.i.i.1, %bb.ao ], [ %i.em, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val.us.i.i.2 = load i32, ptr %i.es, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.et = icmp ugt i32 %.val.us.i.i.2, %i.eq
  br i1 %i.et, label %bb.ap, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

bb.ap:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  store i32 %.val.us.i.i.2, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2: ; preds = %bb.ap, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1
  %i.eu = phi i32 [ %.val.us.i.i.2, %bb.ap ], [ %i.eq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.1 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.val.us.i.i.3 = load i32, ptr %i.ew, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.ex = icmp ugt i32 %.val.us.i.i.3, %i.eu
  br i1 %i.ex, label %bb.aq, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

bb.aq:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  store i32 %.val.us.i.i.3, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3: ; preds = %bb.aq, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2
  %i.ey = phi i32 [ %.val.us.i.i.3, %bb.aq ], [ %i.eu, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.2 ] ; 2 uses
  %i.ez = add nuw i64 %.04.us.i.i, 4              ; 2 uses
  %niter69.next.3 = add i64 %niter69, 4           ; 2 uses
  %niter69.ncmp.3 = icmp eq i64 %niter69.next.3, %unroll_iter68
  br i1 %niter69.ncmp.3, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i, !llvm.loop !4867

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.fo, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3, !noalias !4865
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = lshr i64 %i.fc, 6
  %i.fe = and i64 %i.fc, 63
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !51, !noalias !4865
  %i.fh = shl nuw i64 1, %i.fe
  %i.fi = and i64 %i.fh, %i.fg
  %.not.i24.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fc
  %.val18.i.i = load i32, ptr %i.fj, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.fk = load i8, ptr %i.dg, align 4, !tbaa !3739, !range !489, !alias.scope !4863, !noalias !4860, !noundef !133
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  store i8 1, ptr %i.dg, align 4, !tbaa !3739, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.at:                                            ; preds = %bb.ar
  %i.fm = load i32, ptr %3, align 4, !tbaa !3, !alias.scope !4863, !noalias !4860
  %i.fn = icmp ugt i32 %.val18.i.i, %i.fm
  br i1 %i.fn, label %bb.au, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.au:                                            ; preds = %bb.at
  store i32 %.val18.i.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.au, %bb.at, %bb.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fo = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !4866

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new
  %i.fp = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gc, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 2 uses
  %.04.i.i = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %i.gd, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader.new ], [ %niter.next.1, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1 ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !4865
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fs
  %.val.i31.i = load i32, ptr %i.ft, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.fu = icmp ugt i32 %.val.i31.i, %i.fp
  br i1 %i.fu, label %bb.av, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

bb.av:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  store i32 %.val.i31.i, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %bb.av, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i
  %i.fv = phi i32 [ %.val.i31.i, %bb.av ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3, !noalias !4865
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fz
  %.val.i31.i.1 = load i32, ptr %i.ga, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.gb = icmp ugt i32 %.val.i31.i.1, %i.fv
  br i1 %i.gb, label %bb.aw, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

bb.aw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  store i32 %.val.i31.i.1, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1: ; preds = %bb.aw, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %i.gc = phi i32 [ %.val.i31.i.1, %bb.aw ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 2 uses
  %i.gd = add nuw i64 %.04.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i, !llvm.loop !4868

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.3
  %lcmp.mod66.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod66.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader
  %.epil.init65 = phi i32 [ %i.ef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ey, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.preheader ], [ %i.ez, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader
  %i.ge = phi i32 [ %i.gh, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.epil.init65, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %.04.us.i.i.epil = phi i64 [ %i.gi, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.04.us.i.i.epil
  %.val.us.i.i.epil = load i32, ptr %i.gf, align 4, !alias.scope !4860, !noalias !4863 ; 3 uses
  %i.gg = icmp ugt i32 %.val.us.i.i.epil, %i.ge
  br i1 %i.gg, label %bb.ax, label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

bb.ax:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  store i32 %.val.us.i.i.epil, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil: ; preds = %bb.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil
  %i.gh = phi i32 [ %.val.us.i.i.epil, %bb.ax ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil ]
  %i.gi = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter63
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.peel.next.i.epil, !llvm.loop !4869

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.1
  %lcmp.mod61.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod61.not, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader
  %.epil.init = phi i32 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gc, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.preheader ], [ %i.gd, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod62)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !4865
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.gl
  %.val.i31.i.epil = load i32, ptr %i.gm, align 4, !alias.scope !4860, !noalias !4863 ; 2 uses
  %i.gn = icmp ugt i32 %.val.i31.i.epil, %.epil.init
  br i1 %i.gn, label %bb.ay, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

bb.ay:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader
  store i32 %.val.i31.i.epil, ptr %3, align 4, !tbaa !3743, !alias.scope !4863, !noalias !4860
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit50.unr-lcssa, %bb.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.peel.next.i.epil.preheader, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_110MinMaxBase9OperationIjNS0_11MinMaxStateIjEENS0_12MaxOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i, %.preheader.i29.i, %.preheader1.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gq, align 8, !tbaa !96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !98
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !4870
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22, !inline_history !4870
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.bc ], [ %i.hd, %bb.bd ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.he, label %bb.be, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !102

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_111MinMaxStateIjEEjNS2_12MaxOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hh, align 8, !tbaa !96
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !98
end_hunk_3
