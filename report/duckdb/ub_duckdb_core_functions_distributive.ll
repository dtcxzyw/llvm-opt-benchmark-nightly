inline.NumInlined: 35645
inline.NumDeleted: 8765
begin_hunk_0_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i8, ptr %i.df, align 1, !alias.scope !8116, !noalias !8113 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8118
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i8, ptr %i.dj, align 1, !alias.scope !8113, !noalias !8116 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8116, !noalias !8113
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = and i8 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i8 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i8, ptr %i.co, align 1, !alias.scope !8113, !noalias !8116 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8116, !noalias !8113
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = and i8 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i8 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 9
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 33
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 24
  %n.vec93 = and i64 %i.dp, -32                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <16 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <16 x i8> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <16 x i8> [ splat (i8 -1), %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 17
  %wide.load98 = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !8113, !noalias !8116
  %wide.load99 = load <16 x i8>, ptr %i.du, align 1, !alias.scope !8113, !noalias !8116
  %i.dv = and <16 x i8> %wide.load98, %vec.phi96  ; 2 uses
  %i.dw = and <16 x i8> %wide.load99, %vec.phi97  ; 2 uses
  %index.next100 = add nuw i64 %index95, 32       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !8120

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = and <16 x i8> %i.dw, %i.dv
  %i.dy = call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8107

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i8 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -8                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <8 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <8 x i8> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %wide.load116 = load <8 x i8>, ptr %i.ec, align 1, !alias.scope !8113, !noalias !8116
  %i.ed = and <8 x i8> %wide.load116, %vec.phi115 ; 2 uses
  %index.next117 = add nuw i64 %index114, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !8121

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i8 @llvm.vector.reduce.and.v8i8(<8 x i8> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i8 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i8, ptr %i.eg, align 1, !alias.scope !8113, !noalias !8116
  %i.eh = and i8 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8122

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8118
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !8118
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.el
  %.val18.i.i = load i8, ptr %i.es, align 1, !alias.scope !8113, !noalias !8116 ; 2 uses
  %i.et = load i8, ptr %3, align 1, !tbaa !8046, !range !225, !alias.scope !8116, !noalias !8113, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %.val18.i.i, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8116, !noalias !8113
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8116, !noalias !8113
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i8, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8116, !noalias !8113
  %i.ew = and i8 %i.ev, %.val18.i.i
  store i8 %i.ew, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8116, !noalias !8113
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8119

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !8118
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fa
  %.val.i31.i = load i8, ptr %i.fb, align 1, !alias.scope !8113, !noalias !8116
  %i.fc = and i8 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !8118
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i8, ptr %i.fh, align 1, !alias.scope !8113, !noalias !8116
  %i.fi = and i8 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !8118
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i8, ptr %i.fn, align 1, !alias.scope !8113, !noalias !8116
  %i.fo = and i8 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !8118
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i8, ptr %i.ft, align 1, !alias.scope !8113, !noalias !8116
  %i.fu = and i8 %.val.i31.i.3, %i.fo             ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8123

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i8 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !8118
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i8, ptr %i.fz, align 1, !alias.scope !8113, !noalias !8116
  %i.ga = and i8 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8124

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i8 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 1, !tbaa !8050, !alias.scope !8116, !noalias !8113
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8125
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8125
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8126
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8126
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIaNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_18BitStateItEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 {
bb.a:
  ret i64 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateItEENS2_15BitAndOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 2, !tbaa !8127
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i16, ptr %i.df, align 2, !alias.scope !8196, !noalias !8193 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8198
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i16, ptr %i.dj, align 2, !alias.scope !8193, !noalias !8196 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8196, !noalias !8193
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = and i16 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i16 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i16, ptr %i.co, align 2, !alias.scope !8193, !noalias !8196 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8196, !noalias !8193
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = and i16 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i16 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 5
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 17
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 12
  %n.vec93 = and i64 %i.dp, -16                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <8 x i16> <i16 poison, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>, i16 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <8 x i16> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <8 x i16> [ splat (i16 -1), %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  %wide.load98 = load <8 x i16>, ptr %i.dt, align 2, !alias.scope !8193, !noalias !8196
  %wide.load99 = load <8 x i16>, ptr %i.du, align 2, !alias.scope !8193, !noalias !8196
  %i.dv = and <8 x i16> %wide.load98, %vec.phi96  ; 2 uses
  %i.dw = and <8 x i16> %wide.load99, %vec.phi97  ; 2 uses
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !8200

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = and <8 x i16> %i.dw, %i.dv
  %i.dy = call i16 @llvm.vector.reduce.and.v8i16(<8 x i16> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8187

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i16 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -4                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <4 x i16> <i16 poison, i16 -1, i16 -1, i16 -1>, i16 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i16> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %wide.load116 = load <4 x i16>, ptr %i.ec, align 2, !alias.scope !8193, !noalias !8196
  %i.ed = and <4 x i16> %wide.load116, %vec.phi115 ; 2 uses
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !8201

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i16 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i16, ptr %i.eg, align 2, !alias.scope !8193, !noalias !8196
  %i.eh = and i16 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8202

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8198
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !8198
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.el
  %.val18.i.i = load i16, ptr %i.es, align 2, !alias.scope !8193, !noalias !8196 ; 2 uses
  %i.et = load i8, ptr %3, align 2, !tbaa !8127, !range !225, !alias.scope !8196, !noalias !8193, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %.val18.i.i, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8196, !noalias !8193
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8196, !noalias !8193
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i16, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8196, !noalias !8193
  %i.ew = and i16 %i.ev, %.val18.i.i
  store i16 %i.ew, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8196, !noalias !8193
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8199

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !8198
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fa
  %.val.i31.i = load i16, ptr %i.fb, align 2, !alias.scope !8193, !noalias !8196
  %i.fc = and i16 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !8198
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i16, ptr %i.fh, align 2, !alias.scope !8193, !noalias !8196
  %i.fi = and i16 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !8198
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i16, ptr %i.fn, align 2, !alias.scope !8193, !noalias !8196
  %i.fo = and i16 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !8198
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i16, ptr %i.ft, align 2, !alias.scope !8193, !noalias !8196
  %i.fu = and i16 %.val.i31.i.3, %i.fo            ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8203

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i16 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !8198
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i16, ptr %i.fz, align 2, !alias.scope !8193, !noalias !8196
  %i.ga = and i16 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8204

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i16 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 2, !tbaa !8131, !alias.scope !8196, !noalias !8193
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8205
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8205
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8206
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8206
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIsNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_18BitStateIjEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateIjEENS2_15BitAndOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 4, !tbaa !8207
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.cl, align 4, !alias.scope !8270, !noalias !8273 ; 2 uses
  %i.cm = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !8273, !noalias !8270, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.val18.us.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  %i.cp = and i32 %i.co, %.val18.us.i.i
  store i32 %i.cp, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !8276

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 4, !tbaa !8207, !alias.scope !8273, !noalias !8270
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i32, ptr %i.cr, align 4, !alias.scope !8273, !noalias !8270 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8275
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i32, ptr %i.cv, align 4, !alias.scope !8270, !noalias !8273 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = and i32 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i32 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.ca, align 4, !alias.scope !8270, !noalias !8273 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = and i32 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i32 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 9
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -8                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 -1), %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %wide.load70 = load <4 x i32>, ptr %i.df, align 4, !alias.scope !8270, !noalias !8273
  %wide.load71 = load <4 x i32>, ptr %i.dg, align 4, !alias.scope !8270, !noalias !8273
  %i.dh = and <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.di = and <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !8277

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = and <4 x i32> %i.di, %i.dh
  %i.dk = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i32 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.dl, align 4, !alias.scope !8270, !noalias !8273
  %i.dm = and i32 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8278

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !8275
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !8275
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i32, ptr %i.dx, align 4, !alias.scope !8270, !noalias !8273 ; 2 uses
  %i.dy = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !8273, !noalias !8270, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.val18.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  %i.eb = and i32 %i.ea, %.val18.i.i
  store i32 %i.eb, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8276

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !8275
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i32, ptr %i.eg, align 4, !alias.scope !8270, !noalias !8273
  %i.eh = and i32 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8275
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i32, ptr %i.em, align 4, !alias.scope !8270, !noalias !8273
  %i.en = and i32 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !8275
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i32, ptr %i.es, align 4, !alias.scope !8270, !noalias !8273
  %i.et = and i32 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !8275
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i32, ptr %i.ey, align 4, !alias.scope !8270, !noalias !8273
  %i.ez = and i32 %.val.i31.i.3, %i.et            ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8279

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i32 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !8275
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i32, ptr %i.fe, align 4, !alias.scope !8270, !noalias !8273
  %i.ff = and i32 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8280

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i32 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 4, !tbaa !8211, !alias.scope !8273, !noalias !8270
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8281
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8281
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8282
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8282
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIiNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_18BitStateImEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateImEENS2_15BitAndOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8283
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.cl, align 8, !alias.scope !8346, !noalias !8349 ; 2 uses
  %i.cm = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !8349, !noalias !8346, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.val18.us.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  %i.cp = and i64 %i.co, %.val18.us.i.i
  store i64 %i.cp, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !8352

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 8, !tbaa !8283, !alias.scope !8349, !noalias !8346
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.cr, align 8, !alias.scope !8349, !noalias !8346 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8351
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i64, ptr %i.cv, align 8, !alias.scope !8346, !noalias !8349 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = and i64 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i64 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i64, ptr %i.ca, align 8, !alias.scope !8346, !noalias !8349 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = and i64 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i64 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 5
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -4                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ splat (i64 -1), %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %wide.load70 = load <2 x i64>, ptr %i.df, align 8, !alias.scope !8346, !noalias !8349
  %wide.load71 = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !8346, !noalias !8349
  %i.dh = and <2 x i64> %wide.load70, %vec.phi68  ; 2 uses
  %i.di = and <2 x i64> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !8353

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = and <2 x i64> %i.di, %i.dh
  %i.dk = call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i64 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i64, ptr %i.dl, align 8, !alias.scope !8346, !noalias !8349
  %i.dm = and i64 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8354

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !8351
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !8351
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i64, ptr %i.dx, align 8, !alias.scope !8346, !noalias !8349 ; 2 uses
  %i.dy = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !8349, !noalias !8346, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.val18.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  %i.eb = and i64 %i.ea, %.val18.i.i
  store i64 %i.eb, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8352

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !8351
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i64, ptr %i.eg, align 8, !alias.scope !8346, !noalias !8349
  %i.eh = and i64 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8351
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i64, ptr %i.em, align 8, !alias.scope !8346, !noalias !8349
  %i.en = and i64 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !8351
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i64, ptr %i.es, align 8, !alias.scope !8346, !noalias !8349
  %i.et = and i64 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !8351
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i64, ptr %i.ey, align 8, !alias.scope !8346, !noalias !8349
  %i.ez = and i64 %.val.i31.i.3, %i.et            ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8355

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i64 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !8351
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !8346, !noalias !8349
  %i.ff = and i64 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8356

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i64 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 8, !tbaa !8287, !alias.scope !8349, !noalias !8346
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8357
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8357
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8358
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8358
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIlNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 {
bb.a:
  ret i64 24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEENS2_15BitAndOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8359
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEES4_NS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_3
begin_hunk_4_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i8, ptr %i.df, align 1, !alias.scope !8490, !noalias !8487 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8492
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i8, ptr %i.dj, align 1, !alias.scope !8487, !noalias !8490 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8490, !noalias !8487
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = and i8 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i8 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i8, ptr %i.co, align 1, !alias.scope !8487, !noalias !8490 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8490, !noalias !8487
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = and i8 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i8 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 9
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 33
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 24
  %n.vec93 = and i64 %i.dp, -32                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <16 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <16 x i8> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <16 x i8> [ splat (i8 -1), %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 17
  %wide.load98 = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !8487, !noalias !8490
  %wide.load99 = load <16 x i8>, ptr %i.du, align 1, !alias.scope !8487, !noalias !8490
  %i.dv = and <16 x i8> %wide.load98, %vec.phi96  ; 2 uses
  %i.dw = and <16 x i8> %wide.load99, %vec.phi97  ; 2 uses
  %index.next100 = add nuw i64 %index95, 32       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !8494

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = and <16 x i8> %i.dw, %i.dv
  %i.dy = call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8107

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i8 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -8                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <8 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <8 x i8> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %wide.load116 = load <8 x i8>, ptr %i.ec, align 1, !alias.scope !8487, !noalias !8490
  %i.ed = and <8 x i8> %wide.load116, %vec.phi115 ; 2 uses
  %index.next117 = add nuw i64 %index114, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !8495

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i8 @llvm.vector.reduce.and.v8i8(<8 x i8> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i8 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i8, ptr %i.eg, align 1, !alias.scope !8487, !noalias !8490
  %i.eh = and i8 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8496

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8492
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !8492
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.el
  %.val18.i.i = load i8, ptr %i.es, align 1, !alias.scope !8487, !noalias !8490 ; 2 uses
  %i.et = load i8, ptr %3, align 1, !tbaa !8046, !range !225, !alias.scope !8490, !noalias !8487, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %.val18.i.i, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8490, !noalias !8487
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8490, !noalias !8487
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i8, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8490, !noalias !8487
  %i.ew = and i8 %i.ev, %.val18.i.i
  store i8 %i.ew, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8490, !noalias !8487
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8493

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !8492
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fa
  %.val.i31.i = load i8, ptr %i.fb, align 1, !alias.scope !8487, !noalias !8490
  %i.fc = and i8 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !8492
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i8, ptr %i.fh, align 1, !alias.scope !8487, !noalias !8490
  %i.fi = and i8 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !8492
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i8, ptr %i.fn, align 1, !alias.scope !8487, !noalias !8490
  %i.fo = and i8 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !8492
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i8, ptr %i.ft, align 1, !alias.scope !8487, !noalias !8490
  %i.fu = and i8 %.val.i31.i.3, %i.fo             ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8497

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i8 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !8492
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i8, ptr %i.fz, align 1, !alias.scope !8487, !noalias !8490
  %i.ga = and i8 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8498

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i8 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 1, !tbaa !8050, !alias.scope !8490, !noalias !8487
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8499
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8499
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8500
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8500
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIhNS0_8BitStateIhEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateItEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
end_hunk_4
begin_hunk_5_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i16, ptr %i.df, align 2, !alias.scope !8563, !noalias !8560 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8565
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i16, ptr %i.dj, align 2, !alias.scope !8560, !noalias !8563 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8563, !noalias !8560
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = and i16 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i16 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i16, ptr %i.co, align 2, !alias.scope !8560, !noalias !8563 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8563, !noalias !8560
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = and i16 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i16 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 5
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 17
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 12
  %n.vec93 = and i64 %i.dp, -16                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <8 x i16> <i16 poison, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>, i16 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <8 x i16> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <8 x i16> [ splat (i16 -1), %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  %wide.load98 = load <8 x i16>, ptr %i.dt, align 2, !alias.scope !8560, !noalias !8563
  %wide.load99 = load <8 x i16>, ptr %i.du, align 2, !alias.scope !8560, !noalias !8563
  %i.dv = and <8 x i16> %wide.load98, %vec.phi96  ; 2 uses
  %i.dw = and <8 x i16> %wide.load99, %vec.phi97  ; 2 uses
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !8567

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = and <8 x i16> %i.dw, %i.dv
  %i.dy = call i16 @llvm.vector.reduce.and.v8i16(<8 x i16> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8187

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i16 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -4                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <4 x i16> <i16 poison, i16 -1, i16 -1, i16 -1>, i16 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i16> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %wide.load116 = load <4 x i16>, ptr %i.ec, align 2, !alias.scope !8560, !noalias !8563
  %i.ed = and <4 x i16> %wide.load116, %vec.phi115 ; 2 uses
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !8568

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i16 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i16, ptr %i.eg, align 2, !alias.scope !8560, !noalias !8563
  %i.eh = and i16 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8569

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8565
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !8565
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.el
  %.val18.i.i = load i16, ptr %i.es, align 2, !alias.scope !8560, !noalias !8563 ; 2 uses
  %i.et = load i8, ptr %3, align 2, !tbaa !8127, !range !225, !alias.scope !8563, !noalias !8560, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %.val18.i.i, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8563, !noalias !8560
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8563, !noalias !8560
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i16, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8563, !noalias !8560
  %i.ew = and i16 %i.ev, %.val18.i.i
  store i16 %i.ew, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8563, !noalias !8560
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8566

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !8565
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fa
  %.val.i31.i = load i16, ptr %i.fb, align 2, !alias.scope !8560, !noalias !8563
  %i.fc = and i16 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !8565
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i16, ptr %i.fh, align 2, !alias.scope !8560, !noalias !8563
  %i.fi = and i16 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !8565
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i16, ptr %i.fn, align 2, !alias.scope !8560, !noalias !8563
  %i.fo = and i16 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !8565
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i16, ptr %i.ft, align 2, !alias.scope !8560, !noalias !8563
  %i.fu = and i16 %.val.i31.i.3, %i.fo            ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8570

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i16 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !8565
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i16, ptr %i.fz, align 2, !alias.scope !8560, !noalias !8563
  %i.ga = and i16 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8571

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i16 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 2, !tbaa !8131, !alias.scope !8563, !noalias !8560
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8572
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8572
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8573
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8573
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationItNS0_8BitStateItEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIjEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
end_hunk_5
begin_hunk_6_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.cl, align 4, !alias.scope !8631, !noalias !8634 ; 2 uses
  %i.cm = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !8634, !noalias !8631, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.val18.us.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  %i.cp = and i32 %i.co, %.val18.us.i.i
  store i32 %i.cp, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !8637

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 4, !tbaa !8207, !alias.scope !8634, !noalias !8631
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i32, ptr %i.cr, align 4, !alias.scope !8634, !noalias !8631 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8636
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i32, ptr %i.cv, align 4, !alias.scope !8631, !noalias !8634 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = and i32 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i32 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.ca, align 4, !alias.scope !8631, !noalias !8634 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = and i32 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i32 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 9
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -8                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 -1), %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %wide.load70 = load <4 x i32>, ptr %i.df, align 4, !alias.scope !8631, !noalias !8634
  %wide.load71 = load <4 x i32>, ptr %i.dg, align 4, !alias.scope !8631, !noalias !8634
  %i.dh = and <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.di = and <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !8638

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = and <4 x i32> %i.di, %i.dh
  %i.dk = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i32 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.dl, align 4, !alias.scope !8631, !noalias !8634
  %i.dm = and i32 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8639

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !8636
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !8636
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i32, ptr %i.dx, align 4, !alias.scope !8631, !noalias !8634 ; 2 uses
  %i.dy = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !8634, !noalias !8631, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.val18.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  %i.eb = and i32 %i.ea, %.val18.i.i
  store i32 %i.eb, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8637

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !8636
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i32, ptr %i.eg, align 4, !alias.scope !8631, !noalias !8634
  %i.eh = and i32 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8636
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i32, ptr %i.em, align 4, !alias.scope !8631, !noalias !8634
  %i.en = and i32 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !8636
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i32, ptr %i.es, align 4, !alias.scope !8631, !noalias !8634
  %i.et = and i32 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !8636
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i32, ptr %i.ey, align 4, !alias.scope !8631, !noalias !8634
  %i.ez = and i32 %.val.i31.i.3, %i.et            ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8640

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i32 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !8636
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i32, ptr %i.fe, align 4, !alias.scope !8631, !noalias !8634
  %i.ff = and i32 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8641

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i32 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 4, !tbaa !8211, !alias.scope !8634, !noalias !8631
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8642
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8642
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8643
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8643
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIjNS0_8BitStateIjEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateImEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
end_hunk_6
begin_hunk_7_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.cl, align 8, !alias.scope !8701, !noalias !8704 ; 2 uses
  %i.cm = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !8704, !noalias !8701, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.val18.us.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  %i.cp = and i64 %i.co, %.val18.us.i.i
  store i64 %i.cp, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !8707

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 8, !tbaa !8283, !alias.scope !8704, !noalias !8701
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.cr, align 8, !alias.scope !8704, !noalias !8701 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8706
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i64, ptr %i.cv, align 8, !alias.scope !8701, !noalias !8704 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = and i64 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i64 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i64, ptr %i.ca, align 8, !alias.scope !8701, !noalias !8704 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = and i64 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i64 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 5
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -4                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ splat (i64 -1), %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %wide.load70 = load <2 x i64>, ptr %i.df, align 8, !alias.scope !8701, !noalias !8704
  %wide.load71 = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !8701, !noalias !8704
  %i.dh = and <2 x i64> %wide.load70, %vec.phi68  ; 2 uses
  %i.di = and <2 x i64> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !8708

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = and <2 x i64> %i.di, %i.dh
  %i.dk = call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i64 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i64, ptr %i.dl, align 8, !alias.scope !8701, !noalias !8704
  %i.dm = and i64 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8709

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !8706
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !8706
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i64, ptr %i.dx, align 8, !alias.scope !8701, !noalias !8704 ; 2 uses
  %i.dy = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !8704, !noalias !8701, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.val18.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  %i.eb = and i64 %i.ea, %.val18.i.i
  store i64 %i.eb, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8707

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !8706
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i64, ptr %i.eg, align 8, !alias.scope !8701, !noalias !8704
  %i.eh = and i64 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8706
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i64, ptr %i.em, align 8, !alias.scope !8701, !noalias !8704
  %i.en = and i64 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !8706
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i64, ptr %i.es, align 8, !alias.scope !8701, !noalias !8704
  %i.et = and i64 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !8706
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i64, ptr %i.ey, align 8, !alias.scope !8701, !noalias !8704
  %i.ez = and i64 %.val.i31.i.3, %i.et            ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8710

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i64 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !8706
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !8701, !noalias !8704
  %i.ff = and i64 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8711

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i64 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 8, !tbaa !8287, !alias.scope !8704, !noalias !8701
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8712
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !8712
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8713
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !8713
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitAndOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationImNS0_8BitStateImEENS0_15BitAndOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 {
bb.a:
  ret i64 24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEENS2_15BitAndOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8714
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEES4_NS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_7
begin_hunk_8_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i8, ptr %i.df, align 1, !alias.scope !8916, !noalias !8913 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8918
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i8, ptr %i.dj, align 1, !alias.scope !8913, !noalias !8916 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8916, !noalias !8913
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = or i8 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i8 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i8, ptr %i.co, align 1, !alias.scope !8913, !noalias !8916 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8916, !noalias !8913
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = or i8 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i8 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 9
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 33
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 24
  %n.vec93 = and i64 %i.dp, -32                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <16 x i8> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <16 x i8> [ zeroinitializer, %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 17
  %wide.load98 = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !8913, !noalias !8916
  %wide.load99 = load <16 x i8>, ptr %i.du, align 1, !alias.scope !8913, !noalias !8916
  %i.dv = or <16 x i8> %wide.load98, %vec.phi96   ; 2 uses
  %i.dw = or <16 x i8> %wide.load99, %vec.phi97   ; 2 uses
  %index.next100 = add nuw i64 %index95, 32       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !8920

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = or <16 x i8> %i.dw, %i.dv
  %i.dy = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8107

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i8 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -8                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <8 x i8> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %wide.load116 = load <8 x i8>, ptr %i.ec, align 1, !alias.scope !8913, !noalias !8916
  %i.ed = or <8 x i8> %wide.load116, %vec.phi115  ; 2 uses
  %index.next117 = add nuw i64 %index114, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !8921

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i8 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i8, ptr %i.eg, align 1, !alias.scope !8913, !noalias !8916
  %i.eh = or i8 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8922

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8918
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !8918
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.el
  %.val18.i.i = load i8, ptr %i.es, align 1, !alias.scope !8913, !noalias !8916 ; 2 uses
  %i.et = load i8, ptr %3, align 1, !tbaa !8046, !range !225, !alias.scope !8916, !noalias !8913, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %.val18.i.i, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8916, !noalias !8913
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !8916, !noalias !8913
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i8, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8916, !noalias !8913
  %i.ew = or i8 %i.ev, %.val18.i.i
  store i8 %i.ew, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !8916, !noalias !8913
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8919

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !8918
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fa
  %.val.i31.i = load i8, ptr %i.fb, align 1, !alias.scope !8913, !noalias !8916
  %i.fc = or i8 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !8918
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i8, ptr %i.fh, align 1, !alias.scope !8913, !noalias !8916
  %i.fi = or i8 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !8918
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i8, ptr %i.fn, align 1, !alias.scope !8913, !noalias !8916
  %i.fo = or i8 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !8918
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i8, ptr %i.ft, align 1, !alias.scope !8913, !noalias !8916
  %i.fu = or i8 %.val.i31.i.3, %i.fo              ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8923

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i8 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !8918
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i8, ptr %i.fz, align 1, !alias.scope !8913, !noalias !8916
  %i.ga = or i8 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8924

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i8 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 1, !tbaa !8050, !alias.scope !8916, !noalias !8913
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8925
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8925
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8926
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !8926
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIaNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateItEENS2_14BitOrOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 2, !tbaa !8127
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateItEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i16, ptr %i.df, align 2, !alias.scope !8990, !noalias !8987 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !8992
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i16, ptr %i.dj, align 2, !alias.scope !8987, !noalias !8990 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8990, !noalias !8987
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = or i16 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i16 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i16, ptr %i.co, align 2, !alias.scope !8987, !noalias !8990 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8990, !noalias !8987
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = or i16 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i16 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 5
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 17
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 12
  %n.vec93 = and i64 %i.dp, -16                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <8 x i16> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <8 x i16> [ zeroinitializer, %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  %wide.load98 = load <8 x i16>, ptr %i.dt, align 2, !alias.scope !8987, !noalias !8990
  %wide.load99 = load <8 x i16>, ptr %i.du, align 2, !alias.scope !8987, !noalias !8990
  %i.dv = or <8 x i16> %wide.load98, %vec.phi96   ; 2 uses
  %i.dw = or <8 x i16> %wide.load99, %vec.phi97   ; 2 uses
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !8994

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = or <8 x i16> %i.dw, %i.dv
  %i.dy = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8187

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i16 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -4                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i16> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %wide.load116 = load <4 x i16>, ptr %i.ec, align 2, !alias.scope !8987, !noalias !8990
  %i.ed = or <4 x i16> %wide.load116, %vec.phi115 ; 2 uses
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !8995

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i16 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i16, ptr %i.eg, align 2, !alias.scope !8987, !noalias !8990
  %i.eh = or i16 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !8996

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !8992
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !8992
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.el
  %.val18.i.i = load i16, ptr %i.es, align 2, !alias.scope !8987, !noalias !8990 ; 2 uses
  %i.et = load i8, ptr %3, align 2, !tbaa !8127, !range !225, !alias.scope !8990, !noalias !8987, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %.val18.i.i, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8990, !noalias !8987
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !8990, !noalias !8987
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i16, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8990, !noalias !8987
  %i.ew = or i16 %i.ev, %.val18.i.i
  store i16 %i.ew, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !8990, !noalias !8987
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !8993

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !8992
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fa
  %.val.i31.i = load i16, ptr %i.fb, align 2, !alias.scope !8987, !noalias !8990
  %i.fc = or i16 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !8992
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i16, ptr %i.fh, align 2, !alias.scope !8987, !noalias !8990
  %i.fi = or i16 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !8992
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i16, ptr %i.fn, align 2, !alias.scope !8987, !noalias !8990
  %i.fo = or i16 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !8992
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i16, ptr %i.ft, align 2, !alias.scope !8987, !noalias !8990
  %i.fu = or i16 %.val.i31.i.3, %i.fo             ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !8997

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i16 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !8992
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i16, ptr %i.fz, align 2, !alias.scope !8987, !noalias !8990
  %i.ga = or i16 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !8998

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i16 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 2, !tbaa !8131, !alias.scope !8990, !noalias !8987
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8999
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !8999
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !9000
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !9000
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIsNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateIjEENS2_14BitOrOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 4, !tbaa !8207
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIjEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.cl, align 4, !alias.scope !9059, !noalias !9062 ; 2 uses
  %i.cm = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !9062, !noalias !9059, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.val18.us.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  %i.cp = or i32 %i.co, %.val18.us.i.i
  store i32 %i.cp, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !9065

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 4, !tbaa !8207, !alias.scope !9062, !noalias !9059
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i32, ptr %i.cr, align 4, !alias.scope !9062, !noalias !9059 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !9064
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i32, ptr %i.cv, align 4, !alias.scope !9059, !noalias !9062 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = or i32 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i32 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.ca, align 4, !alias.scope !9059, !noalias !9062 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = or i32 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i32 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 9
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -8                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %wide.load70 = load <4 x i32>, ptr %i.df, align 4, !alias.scope !9059, !noalias !9062
  %wide.load71 = load <4 x i32>, ptr %i.dg, align 4, !alias.scope !9059, !noalias !9062
  %i.dh = or <4 x i32> %wide.load70, %vec.phi68   ; 2 uses
  %i.di = or <4 x i32> %wide.load71, %vec.phi69   ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !9066

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = or <4 x i32> %i.di, %i.dh
  %i.dk = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i32 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.dl, align 4, !alias.scope !9059, !noalias !9062
  %i.dm = or i32 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9067

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !9064
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !9064
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i32, ptr %i.dx, align 4, !alias.scope !9059, !noalias !9062 ; 2 uses
  %i.dy = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !9062, !noalias !9059, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.val18.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  %i.eb = or i32 %i.ea, %.val18.i.i
  store i32 %i.eb, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9065

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !9064
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i32, ptr %i.eg, align 4, !alias.scope !9059, !noalias !9062
  %i.eh = or i32 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !9064
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i32, ptr %i.em, align 4, !alias.scope !9059, !noalias !9062
  %i.en = or i32 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !9064
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i32, ptr %i.es, align 4, !alias.scope !9059, !noalias !9062
  %i.et = or i32 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !9064
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i32, ptr %i.ey, align 4, !alias.scope !9059, !noalias !9062
  %i.ez = or i32 %.val.i31.i.3, %i.et             ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9068

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i32 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !9064
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i32, ptr %i.fe, align 4, !alias.scope !9059, !noalias !9062
  %i.ff = or i32 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9069

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i32 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 4, !tbaa !8211, !alias.scope !9062, !noalias !9059
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9070
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9070
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9071
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9071
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIiNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateImEENS2_14BitOrOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8283
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateImEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.cl, align 8, !alias.scope !9130, !noalias !9133 ; 2 uses
  %i.cm = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !9133, !noalias !9130, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.val18.us.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  %i.cp = or i64 %i.co, %.val18.us.i.i
  store i64 %i.cp, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !9136

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 8, !tbaa !8283, !alias.scope !9133, !noalias !9130
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.cr, align 8, !alias.scope !9133, !noalias !9130 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !9135
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i64, ptr %i.cv, align 8, !alias.scope !9130, !noalias !9133 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = or i64 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i64 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i64, ptr %i.ca, align 8, !alias.scope !9130, !noalias !9133 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = or i64 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i64 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 5
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -4                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %wide.load70 = load <2 x i64>, ptr %i.df, align 8, !alias.scope !9130, !noalias !9133
  %wide.load71 = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !9130, !noalias !9133
  %i.dh = or <2 x i64> %wide.load70, %vec.phi68   ; 2 uses
  %i.di = or <2 x i64> %wide.load71, %vec.phi69   ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !9137

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = or <2 x i64> %i.di, %i.dh
  %i.dk = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i64 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i64, ptr %i.dl, align 8, !alias.scope !9130, !noalias !9133
  %i.dm = or i64 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9138

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !9135
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !9135
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i64, ptr %i.dx, align 8, !alias.scope !9130, !noalias !9133 ; 2 uses
  %i.dy = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !9133, !noalias !9130, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.val18.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  %i.eb = or i64 %i.ea, %.val18.i.i
  store i64 %i.eb, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9136

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !9135
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i64, ptr %i.eg, align 8, !alias.scope !9130, !noalias !9133
  %i.eh = or i64 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !9135
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i64, ptr %i.em, align 8, !alias.scope !9130, !noalias !9133
  %i.en = or i64 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !9135
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i64, ptr %i.es, align 8, !alias.scope !9130, !noalias !9133
  %i.et = or i64 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !9135
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i64, ptr %i.ey, align 8, !alias.scope !9130, !noalias !9133
  %i.ez = or i64 %.val.i31.i.3, %i.et             ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9139

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i64 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !9135
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !9130, !noalias !9133
  %i.ff = or i64 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9140

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i64 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 8, !tbaa !8287, !alias.scope !9133, !noalias !9130
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9141
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9141
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9142
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9142
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIlNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEENS2_14BitOrOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8359
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEES4_NS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
end_hunk_11
begin_hunk_12_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i8, ptr %i.df, align 1, !alias.scope !9270, !noalias !9267 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !9272
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i8, ptr %i.dj, align 1, !alias.scope !9267, !noalias !9270 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !9270, !noalias !9267
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = or i8 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i8 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i8, ptr %i.co, align 1, !alias.scope !9267, !noalias !9270 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !9270, !noalias !9267
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = or i8 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i8 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 9
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 33
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 24
  %n.vec93 = and i64 %i.dp, -32                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <16 x i8> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <16 x i8> [ zeroinitializer, %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 17
  %wide.load98 = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !9267, !noalias !9270
  %wide.load99 = load <16 x i8>, ptr %i.du, align 1, !alias.scope !9267, !noalias !9270
  %i.dv = or <16 x i8> %wide.load98, %vec.phi96   ; 2 uses
  %i.dw = or <16 x i8> %wide.load99, %vec.phi97   ; 2 uses
  %index.next100 = add nuw i64 %index95, 32       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !9274

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = or <16 x i8> %i.dw, %i.dv
  %i.dy = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8107

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i8 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -8                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <8 x i8> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %wide.load116 = load <8 x i8>, ptr %i.ec, align 1, !alias.scope !9267, !noalias !9270
  %i.ed = or <8 x i8> %wide.load116, %vec.phi115  ; 2 uses
  %index.next117 = add nuw i64 %index114, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !9275

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i8 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i8, ptr %i.eg, align 1, !alias.scope !9267, !noalias !9270
  %i.eh = or i8 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9276

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !9272
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !9272
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.el
  %.val18.i.i = load i8, ptr %i.es, align 1, !alias.scope !9267, !noalias !9270 ; 2 uses
  %i.et = load i8, ptr %3, align 1, !tbaa !8046, !range !225, !alias.scope !9270, !noalias !9267, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %.val18.i.i, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !9270, !noalias !9267
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !9270, !noalias !9267
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i8, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !9270, !noalias !9267
  %i.ew = or i8 %i.ev, %.val18.i.i
  store i8 %i.ew, ptr %i.cs, align 1, !tbaa !8050, !alias.scope !9270, !noalias !9267
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9273

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !9272
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fa
  %.val.i31.i = load i8, ptr %i.fb, align 1, !alias.scope !9267, !noalias !9270
  %i.fc = or i8 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !9272
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i8, ptr %i.fh, align 1, !alias.scope !9267, !noalias !9270
  %i.fi = or i8 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !9272
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i8, ptr %i.fn, align 1, !alias.scope !9267, !noalias !9270
  %i.fo = or i8 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !9272
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i8, ptr %i.ft, align 1, !alias.scope !9267, !noalias !9270
  %i.fu = or i8 %.val.i31.i.3, %i.fo              ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9277

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i8 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i8 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !9272
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i8, ptr %i.fz, align 1, !alias.scope !9267, !noalias !9270
  %i.ga = or i8 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9278

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i8 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i8 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 1, !tbaa !8050, !alias.scope !9270, !noalias !9267
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !9279
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !9279
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !9280
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !9280
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIhNS0_8BitStateIhEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateItEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
end_hunk_12
begin_hunk_13_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i16, ptr %i.df, align 2, !alias.scope !9343, !noalias !9340 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.dh = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !9345
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.di
  %.val.i31.peel.i = load i16, ptr %i.dj, align 2, !alias.scope !9340, !noalias !9343 ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !9343, !noalias !9340
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.dk = or i16 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i16 [ %i.dk, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.dl = add i64 %4, -1                          ; 2 uses
  %i.dm = add i64 %4, -2
  %xtraiter = and i64 %i.dl, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.dl, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i16, ptr %i.co, align 2, !alias.scope !9340, !noalias !9343 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !9343, !noalias !9340
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.do = or i16 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i16 [ %i.do, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check106

iter.check106:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.dp = add i64 %4, -1                          ; 5 uses
  %min.iters.check88 = icmp ult i64 %4, 5
  br i1 %min.iters.check88, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check106
  %min.iters.check90 = icmp ult i64 %4, 17
  br i1 %min.iters.check90, label %vec.epilog.ph110, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %n.mod.vf92 = and i64 %i.dp, 12
  %n.vec93 = and i64 %i.dp, -16                   ; 4 uses
  %i.dq = or disjoint i64 %n.vec93, 1
  %i.dr = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <8 x i16> [ %i.dr, %vector.ph91 ], [ %i.dv, %vector.body94 ]
  %vec.phi97 = phi <8 x i16> [ zeroinitializer, %vector.ph91 ], [ %i.dw, %vector.body94 ]
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index95 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  %wide.load98 = load <8 x i16>, ptr %i.dt, align 2, !alias.scope !9340, !noalias !9343
  %wide.load99 = load <8 x i16>, ptr %i.du, align 2, !alias.scope !9340, !noalias !9343
  %i.dv = or <8 x i16> %wide.load98, %vec.phi96   ; 2 uses
  %i.dw = or <8 x i16> %wide.load99, %vec.phi97   ; 2 uses
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.dx = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.dx, label %middle.block101, label %vector.body94, !llvm.loop !9347

middle.block101:                                  ; preds = %vector.body94
  %bin.rdx102 = or <8 x i16> %i.dw, %i.dv
  %i.dy = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx102) ; 3 uses
  %cmp.n103 = icmp eq i64 %i.dp, %n.vec93
  br i1 %cmp.n103, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block101
  %min.epilog.iters.check109 = icmp eq i64 %n.mod.vf92, 0
  br i1 %min.epilog.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph110, !prof !8187

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i64 [ %n.vec93, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check89 ]
  %bc.merge.rdx105 = phi i16 [ %i.dy, %vec.epilog.iter.check108 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check89 ]
  %n.vec112 = and i64 %i.dp, -4                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec112, 1
  %i.ea = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx105, i64 0
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph110
  %index114 = phi i64 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i16> [ %i.ea, %vec.epilog.ph110 ], [ %i.ed, %vec.epilog.vector.body113 ]
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %wide.load116 = load <4 x i16>, ptr %i.ec, align 2, !alias.scope !9340, !noalias !9343
  %i.ed = or <4 x i16> %wide.load116, %vec.phi115 ; 2 uses
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ee, label %vec.epilog.middle.block118, label %vec.epilog.vector.body113, !llvm.loop !9348

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body113
  %i.ef = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ed) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.dp, %n.vec112
  br i1 %cmp.n119, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.val.us.sink25.i.i.ph = phi i16 [ %.val.us.sink.i.peel.i, %iter.check106 ], [ %i.dy, %vec.epilog.iter.check108 ], [ %i.ef, %vec.epilog.middle.block118 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check106 ], [ %i.dq, %vec.epilog.iter.check108 ], [ %i.dz, %vec.epilog.middle.block118 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.ei, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.04.us.i.i
  %.val.us.i.i = load i16, ptr %i.eg, align 2, !alias.scope !9340, !noalias !9343
  %i.eh = or i16 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.ei = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ei, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9349

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ex, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !9345
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !90, !noalias !9345
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.eq, %i.ep
  %.not.i24.i = icmp eq i64 %i.er, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.el
  %.val18.i.i = load i16, ptr %i.es, align 2, !alias.scope !9340, !noalias !9343 ; 2 uses
  %i.et = load i8, ptr %3, align 2, !tbaa !8127, !range !225, !alias.scope !9343, !noalias !9340, !noundef !226
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %.val18.i.i, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !9343, !noalias !9340
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !9343, !noalias !9340
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ev = load i16, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !9343, !noalias !9340
  %i.ew = or i16 %i.ev, %.val18.i.i
  store i16 %i.ew, ptr %i.cs, align 2, !tbaa !8131, !alias.scope !9343, !noalias !9340
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ex = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ex, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9346

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !9345
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fa
  %.val.i31.i = load i16, ptr %i.fb, align 2, !alias.scope !9340, !noalias !9343
  %i.fc = or i16 %.val.i31.i, %.val.sink23.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !9345
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fg
  %.val.i31.i.1 = load i16, ptr %i.fh, align 2, !alias.scope !9340, !noalias !9343
  %i.fi = or i16 %.val.i31.i.1, %i.fc
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !9345
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fm
  %.val.i31.i.2 = load i16, ptr %i.fn, align 2, !alias.scope !9340, !noalias !9343
  %i.fo = or i16 %.val.i31.i.2, %i.fi
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !9345
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fs
  %.val.i31.i.3 = load i16, ptr %i.ft, align 2, !alias.scope !9340, !noalias !9343
  %i.fu = or i16 %.val.i31.i.3, %i.fo             ; 3 uses
  %i.fv = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9350

.loopexit.sink.split.i.i.loopexit125.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i16 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fv, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i16 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !9345
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.fy
  %.val.i31.i.epil = load i16, ptr %i.fz, align 2, !alias.scope !9340, !noalias !9343
  %i.ga = or i16 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gb = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9351

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit125.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block101, %vec.epilog.middle.block118, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i16 [ %i.eh, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.ef, %vec.epilog.middle.block118 ], [ %i.dy, %middle.block101 ], [ %i.fu, %.loopexit.sink.split.i.i.loopexit125.unr-lcssa ], [ %i.ga, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i16 %.val.sink.lcssa.sink.i.i, ptr %i.df, align 2, !tbaa !8131, !alias.scope !9343, !noalias !9340
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ge, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !52
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !9352
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27, !inline_history !9352
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.gr, %bb.ad ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.gv, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !52
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !9353
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27, !inline_history !9353
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gy, %bb.ai ], [ %i.hi, %bb.aj ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hj, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationItNS0_8BitStateItEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIjEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
end_hunk_13
begin_hunk_14_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.cl, align 4, !alias.scope !9411, !noalias !9414 ; 2 uses
  %i.cm = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !9414, !noalias !9411, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.val18.us.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  %i.cp = or i32 %i.co, %.val18.us.i.i
  store i32 %i.cp, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !9417

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 4, !tbaa !8207, !alias.scope !9414, !noalias !9411
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i32, ptr %i.cr, align 4, !alias.scope !9414, !noalias !9411 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !9416
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i32, ptr %i.cv, align 4, !alias.scope !9411, !noalias !9414 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = or i32 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i32 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i32, ptr %i.ca, align 4, !alias.scope !9411, !noalias !9414 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = or i32 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i32 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 9
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -8                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %wide.load70 = load <4 x i32>, ptr %i.df, align 4, !alias.scope !9411, !noalias !9414
  %wide.load71 = load <4 x i32>, ptr %i.dg, align 4, !alias.scope !9411, !noalias !9414
  %i.dh = or <4 x i32> %wide.load70, %vec.phi68   ; 2 uses
  %i.di = or <4 x i32> %wide.load71, %vec.phi69   ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !9418

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = or <4 x i32> %i.di, %i.dh
  %i.dk = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i32 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i32, ptr %i.dl, align 4, !alias.scope !9411, !noalias !9414
  %i.dm = or i32 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9419

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !9416
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !9416
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i32, ptr %i.dx, align 4, !alias.scope !9411, !noalias !9414 ; 2 uses
  %i.dy = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !9414, !noalias !9411, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.val18.i.i, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i32, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  %i.eb = or i32 %i.ea, %.val18.i.i
  store i32 %i.eb, ptr %i.ce, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9417

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !9416
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i32, ptr %i.eg, align 4, !alias.scope !9411, !noalias !9414
  %i.eh = or i32 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !9416
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i32, ptr %i.em, align 4, !alias.scope !9411, !noalias !9414
  %i.en = or i32 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !9416
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i32, ptr %i.es, align 4, !alias.scope !9411, !noalias !9414
  %i.et = or i32 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !9416
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i32, ptr %i.ey, align 4, !alias.scope !9411, !noalias !9414
  %i.ez = or i32 %.val.i31.i.3, %i.et             ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9420

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i32 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i32 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !9416
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i32, ptr %i.fe, align 4, !alias.scope !9411, !noalias !9414
  %i.ff = or i32 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9421

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i32 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i32 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 4, !tbaa !8211, !alias.scope !9414, !noalias !9411
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9422
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9422
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9423
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9423
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationIjNS0_8BitStateIjEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateImEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
end_hunk_14
begin_hunk_15_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.cl, align 8, !alias.scope !9481, !noalias !9484 ; 2 uses
  %i.cm = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !9484, !noalias !9481, !noundef !226
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.val18.us.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  %i.cp = or i64 %i.co, %.val18.us.i.i
  store i64 %i.cp, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i: ; preds = %bb.r, %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.cq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.cq, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !9487

.preheader.i29.i:                                 ; preds = %bb.o
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i30.i = load i8, ptr %3, align 8, !tbaa !8283, !alias.scope !9484, !noalias !9481
  %i.cs = trunc nuw i8 %.promoted.i30.i to i1     ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.cr, align 8, !alias.scope !9484, !noalias !9481 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ct = load i32, ptr %.val20.i, align 4, !tbaa !3, !noalias !9486
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cu
  %.val.i31.peel.i = load i64, ptr %i.cv, align 8, !alias.scope !9481, !noalias !9484 ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.cw = or i64 %.val.i31.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.sink.i.peel.i = phi i64 [ %i.cw, %bb.t ], [ %.val.i31.peel.i, %bb.s ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.cx = add i64 %4, -1                          ; 2 uses
  %i.cy = add i64 %4, -2
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  br i1 %i.cz, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.cx, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i.peel.i = load i64, ptr %i.ca, align 8, !alias.scope !9481, !noalias !9484 ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.da = or i64 %.val.us.i.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.v, %bb.u
  %.val.us.sink.i.peel.i = phi i64 [ %i.da, %bb.v ], [ %.val.us.i.peel.i, %bb.u ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.db = add i64 %4, -1                          ; 2 uses
  %min.iters.check62 = icmp ult i64 %4, 5
  br i1 %min.iters.check62, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, label %vector.ph63

vector.ph63:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec65 = and i64 %i.db, -4                    ; 3 uses
  %i.dc = or disjoint i64 %n.vec65, 1
  %i.dd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.dd, %vector.ph63 ], [ %i.dh, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph63 ], [ %i.di, %vector.body66 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index67 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %wide.load70 = load <2 x i64>, ptr %i.df, align 8, !alias.scope !9481, !noalias !9484
  %wide.load71 = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !9481, !noalias !9484
  %i.dh = or <2 x i64> %wide.load70, %vec.phi68   ; 2 uses
  %i.di = or <2 x i64> %wide.load71, %vec.phi69   ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !9488

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = or <2 x i64> %i.di, %i.dh
  %i.dk = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n75, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block73
  %.val.us.sink25.i.i.ph = phi i64 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dk, %middle.block73 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.dc, %middle.block73 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ]
  %.04.us.i.i = phi i64 [ %i.dn, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader78 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.04.us.i.i
  %.val.us.i.i = load i64, ptr %i.dl, align 8, !alias.scope !9481, !noalias !9484
  %i.dm = or i64 %.val.us.i.i, %.val.us.sink25.i.i ; 2 uses
  %i.dn = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dn, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9489

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i23.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i
  %.0173.i.i = phi i64 [ %i.ec, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i ], [ 0, %.lr.ph.i23.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.0173.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !9486
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !90, !noalias !9486
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.dv, %i.du
  %.not.i24.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dq
  %.val18.i.i = load i64, ptr %i.dx, align 8, !alias.scope !9481, !noalias !9484 ; 2 uses
  %i.dy = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !9484, !noalias !9481, !noundef !226
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %.val18.i.i, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

bb.y:                                             ; preds = %bb.w
  %i.ea = load i64, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  %i.eb = or i64 %i.ea, %.val18.i.i
  store i64 %i.eb, ptr %i.ce, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i: ; preds = %bb.y, %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.ec = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9487

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ez, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !9486
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ef
  %.val.i31.i = load i64, ptr %i.eg, align 8, !alias.scope !9481, !noalias !9484
  %i.eh = or i64 %.val.i31.i, %.val.sink23.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !9486
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.el
  %.val.i31.i.1 = load i64, ptr %i.em, align 8, !alias.scope !9481, !noalias !9484
  %i.en = or i64 %.val.i31.i.1, %i.eh
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !9486
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.er
  %.val.i31.i.2 = load i64, ptr %i.es, align 8, !alias.scope !9481, !noalias !9484
  %i.et = or i64 %.val.i31.i.2, %i.en
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !9486
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ex
  %.val.i31.i.3 = load i64, ptr %i.ey, align 8, !alias.scope !9481, !noalias !9484
  %i.ez = or i64 %.val.i31.i.3, %i.et             ; 3 uses
  %i.fa = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9490

.loopexit.sink.split.i.i.loopexit81.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i64 [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.fa, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i64 [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.fg, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3, !noalias !9486
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fd
  %.val.i31.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !9481, !noalias !9484
  %i.ff = or i64 %.val.i31.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.fg = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9491

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit81.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block73, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i64 [ %i.dm, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.dk, %middle.block73 ], [ %i.ez, %.loopexit.sink.split.i.i.loopexit81.unr-lcssa ], [ %i.ff, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i64 %.val.sink.lcssa.sink.i.i, ptr %i.cr, align 8, !tbaa !8287, !alias.scope !9484, !noalias !9481
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i25.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i28.i, %.loopexit.sink.split.i.i, %.preheader.i29.i, %.preheader1.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fj, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !52
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9492
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27, !inline_history !9492
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.ac ], [ %i.fw, %bb.ad ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fx, label %bb.ae, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ga, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !52
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9493
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !9493
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gd, %bb.ai ], [ %i.gn, %bb.aj ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.go, label %bb.ak, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ag, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.al:                                            ; preds = %bb.n, %bb.m
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gp

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_14BitOrOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation17ConstantOperationImNS0_8BitStateImEENS0_14BitOrOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEENS2_14BitOrOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8714
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEES4_NS2_14BitOrOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
end_hunk_15
begin_hunk_16_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i8, ptr %i.ez, align 1, !alias.scope !9726, !noalias !9723 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.fb = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !9728
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fc
  %.val.i36.peel.i = load i8, ptr %i.fd, align 1, !alias.scope !9723, !noalias !9726 ; 2 uses
  br i1 %i.fa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !9726, !noalias !9723
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.fe = xor i8 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i8 [ %i.fe, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.ff = add i64 %4, -1                          ; 2 uses
  %i.fg = add i64 %4, -2
  %xtraiter231 = and i64 %i.ff, 3                 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 3
  br i1 %i.fh, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.ff, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i8, ptr %i.ei, align 1, !alias.scope !9723, !noalias !9726 ; 2 uses
  br i1 %i.fa, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !9726, !noalias !9723
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.fi = xor i8 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i8 [ %i.fi, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check189

iter.check189:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.fj = add i64 %4, -1                          ; 5 uses
  %min.iters.check170 = icmp ult i64 %4, 9
  br i1 %min.iters.check170, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check189
  %min.iters.check172 = icmp ult i64 %4, 33
  br i1 %min.iters.check172, label %vec.epilog.ph193, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %n.mod.vf174 = and i64 %i.fj, 24
  %n.vec175 = and i64 %i.fj, -32                  ; 4 uses
  %i.fk = or disjoint i64 %n.vec175, 1
  %i.fl = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %vec.phi178 = phi <16 x i8> [ %i.fl, %vector.ph173 ], [ %i.fp, %vector.body176 ]
  %vec.phi179 = phi <16 x i8> [ zeroinitializer, %vector.ph173 ], [ %i.fq, %vector.body176 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index177 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 17
  %wide.load180 = load <16 x i8>, ptr %i.fn, align 1, !alias.scope !9723, !noalias !9726
  %wide.load181 = load <16 x i8>, ptr %i.fo, align 1, !alias.scope !9723, !noalias !9726
  %i.fp = xor <16 x i8> %wide.load180, %vec.phi178 ; 2 uses
  %i.fq = xor <16 x i8> %wide.load181, %vec.phi179 ; 2 uses
  %index.next182 = add nuw i64 %index177, 32      ; 2 uses
  %i.fr = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.fr, label %middle.block183, label %vector.body176, !llvm.loop !9730

middle.block183:                                  ; preds = %vector.body176
  %bin.rdx184 = xor <16 x i8> %i.fq, %i.fp
  %i.fs = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx184) ; 3 uses
  %cmp.n185 = icmp eq i64 %i.fj, %n.vec175
  br i1 %cmp.n185, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block183
  %min.epilog.iters.check192 = icmp eq i64 %n.mod.vf174, 0
  br i1 %min.epilog.iters.check192, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph193, !prof !8107

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check191
  %vec.epilog.resume.val186 = phi i64 [ %n.vec175, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check171 ]
  %bc.merge.rdx187 = phi i8 [ %i.fs, %vec.epilog.iter.check191 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check171 ]
  %n.vec195 = and i64 %i.fj, -8                   ; 3 uses
  %i.ft = or disjoint i64 %n.vec195, 1
  %i.fu = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx187, i64 0
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val186, %vec.epilog.ph193 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 2 uses
  %vec.phi198 = phi <8 x i8> [ %i.fu, %vec.epilog.ph193 ], [ %i.fx, %vec.epilog.vector.body196 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index197
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %wide.load199 = load <8 x i8>, ptr %i.fw, align 1, !alias.scope !9723, !noalias !9726
  %i.fx = xor <8 x i8> %wide.load199, %vec.phi198 ; 2 uses
  %index.next200 = add nuw i64 %index197, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.fy, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !9731

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  %i.fz = call i8 @llvm.vector.reduce.xor.v8i8(<8 x i8> %i.fx) ; 2 uses
  %cmp.n202 = icmp eq i64 %i.fj, %n.vec195
  br i1 %cmp.n202, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block201
  %.val.us.sink25.i.i.ph = phi i8 [ %.val.us.sink.i.peel.i, %iter.check189 ], [ %i.fs, %vec.epilog.iter.check191 ], [ %i.fz, %vec.epilog.middle.block201 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check189 ], [ %i.fk, %vec.epilog.iter.check191 ], [ %i.ft, %vec.epilog.middle.block201 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i8 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.gc, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.04.us.i.i
  %.val.us.i38.i = load i8, ptr %i.ga, align 1, !alias.scope !9723, !noalias !9726
  %i.gb = xor i8 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.gc = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.gc, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9732

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.gr, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3, !noalias !9728
  %i.gf = zext i32 %i.ge to i64                   ; 3 uses
  %i.gg = lshr i64 %i.gf, 6
  %i.gh = and i64 %i.gf, 63
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.gg
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !90, !noalias !9728
  %i.gk = shl nuw i64 1, %i.gh
  %i.gl = and i64 %i.gk, %i.gj
  %.not.i29.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gf
  %.val18.i.i = load i8, ptr %i.gm, align 1, !alias.scope !9723, !noalias !9726 ; 2 uses
  %i.gn = load i8, ptr %3, align 1, !tbaa !8046, !range !225, !alias.scope !9726, !noalias !9723, !noundef !226
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 %.val18.i.i, ptr %i.em, align 1, !tbaa !8050, !alias.scope !9726, !noalias !9723
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !9726, !noalias !9723
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.gp = load i8, ptr %i.em, align 1, !tbaa !8050, !alias.scope !9726, !noalias !9723
  %i.gq = xor i8 %i.gp, %.val18.i.i
  store i8 %i.gq, ptr %i.em, align 1, !tbaa !8050, !alias.scope !9726, !noalias !9723
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gr = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.gr, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9729

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i8 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ho, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !9728
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gu
  %.val.i36.i = load i8, ptr %i.gv, align 1, !alias.scope !9723, !noalias !9726
  %i.gw = xor i8 %.val.i36.i, %.val.sink23.i.i
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !9728
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ha
  %.val.i36.i.1 = load i8, ptr %i.hb, align 1, !alias.scope !9723, !noalias !9726
  %i.hc = xor i8 %.val.i36.i.1, %i.gw
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !9728
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hg
  %.val.i36.i.2 = load i8, ptr %i.hh, align 1, !alias.scope !9723, !noalias !9726
  %i.hi = xor i8 %.val.i36.i.2, %i.hc
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3, !noalias !9728
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hm
  %.val.i36.i.3 = load i8, ptr %i.hn, align 1, !alias.scope !9723, !noalias !9726
  %i.ho = xor i8 %.val.i36.i.3, %i.hi             ; 3 uses
  %i.hp = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9733

.loopexit.sink.split.i.i.loopexit208.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i8 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.hp, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i8 [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.hv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !9728
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hs
  %.val.i36.i.epil = load i8, ptr %i.ht, align 1, !alias.scope !9723, !noalias !9726
  %i.hu = xor i8 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.hv = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter231
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9734

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block183, %vec.epilog.middle.block201, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i8 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.fz, %vec.epilog.middle.block201 ], [ %i.fs, %middle.block183 ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ], [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i8 %.val.sink.lcssa.sink.i.i, ptr %i.ez, align 1, !tbaa !8050, !alias.scope !9726, !noalias !9723
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.hy, align 8, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !52
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !9735
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !9735
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.aa ], [ %i.il, %bb.ab ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.im, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ip, align 8, !tbaa !50
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !52
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !9736
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !9736
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.is, %bb.ag ], [ %i.jc, %bb.ah ]
  %i.jd = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jd, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.je

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block108, %vec.epilog.middle.block126, %middle.block149, %vec.epilog.middle.block167, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIaNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateItEENS2_15BitXorOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 2, !tbaa !8127
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !92
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateItEEEEPT_RNS_6VectorE.exit.i, label %bb.d

end_hunk_16
begin_hunk_17_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i16, ptr %i.ez, align 2, !alias.scope !9836, !noalias !9833 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.fb = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !9838
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.fc
  %.val.i36.peel.i = load i16, ptr %i.fd, align 2, !alias.scope !9833, !noalias !9836 ; 2 uses
  br i1 %i.fa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !9836, !noalias !9833
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.fe = xor i16 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i16 [ %i.fe, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.ff = add i64 %4, -1                          ; 2 uses
  %i.fg = add i64 %4, -2
  %xtraiter231 = and i64 %i.ff, 3                 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 3
  br i1 %i.fh, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.ff, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i16, ptr %i.ei, align 2, !alias.scope !9833, !noalias !9836 ; 2 uses
  br i1 %i.fa, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !9836, !noalias !9833
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.fi = xor i16 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i16 [ %i.fi, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check189

iter.check189:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.fj = add i64 %4, -1                          ; 5 uses
  %min.iters.check170 = icmp ult i64 %4, 5
  br i1 %min.iters.check170, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check189
  %min.iters.check172 = icmp ult i64 %4, 17
  br i1 %min.iters.check172, label %vec.epilog.ph193, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %n.mod.vf174 = and i64 %i.fj, 12
  %n.vec175 = and i64 %i.fj, -16                  ; 4 uses
  %i.fk = or disjoint i64 %n.vec175, 1
  %i.fl = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %vec.phi178 = phi <8 x i16> [ %i.fl, %vector.ph173 ], [ %i.fp, %vector.body176 ]
  %vec.phi179 = phi <8 x i16> [ zeroinitializer, %vector.ph173 ], [ %i.fq, %vector.body176 ]
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index177 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 18
  %wide.load180 = load <8 x i16>, ptr %i.fn, align 2, !alias.scope !9833, !noalias !9836
  %wide.load181 = load <8 x i16>, ptr %i.fo, align 2, !alias.scope !9833, !noalias !9836
  %i.fp = xor <8 x i16> %wide.load180, %vec.phi178 ; 2 uses
  %i.fq = xor <8 x i16> %wide.load181, %vec.phi179 ; 2 uses
  %index.next182 = add nuw i64 %index177, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.fr, label %middle.block183, label %vector.body176, !llvm.loop !9840

middle.block183:                                  ; preds = %vector.body176
  %bin.rdx184 = xor <8 x i16> %i.fq, %i.fp
  %i.fs = call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> %bin.rdx184) ; 3 uses
  %cmp.n185 = icmp eq i64 %i.fj, %n.vec175
  br i1 %cmp.n185, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block183
  %min.epilog.iters.check192 = icmp eq i64 %n.mod.vf174, 0
  br i1 %min.epilog.iters.check192, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph193, !prof !8187

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check191
  %vec.epilog.resume.val186 = phi i64 [ %n.vec175, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check171 ]
  %bc.merge.rdx187 = phi i16 [ %i.fs, %vec.epilog.iter.check191 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check171 ]
  %n.vec195 = and i64 %i.fj, -4                   ; 3 uses
  %i.ft = or disjoint i64 %n.vec195, 1
  %i.fu = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx187, i64 0
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val186, %vec.epilog.ph193 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 2 uses
  %vec.phi198 = phi <4 x i16> [ %i.fu, %vec.epilog.ph193 ], [ %i.fx, %vec.epilog.vector.body196 ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index197
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %wide.load199 = load <4 x i16>, ptr %i.fw, align 2, !alias.scope !9833, !noalias !9836
  %i.fx = xor <4 x i16> %wide.load199, %vec.phi198 ; 2 uses
  %index.next200 = add nuw i64 %index197, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.fy, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !9841

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  %i.fz = call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> %i.fx) ; 2 uses
  %cmp.n202 = icmp eq i64 %i.fj, %n.vec195
  br i1 %cmp.n202, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block201
  %.val.us.sink25.i.i.ph = phi i16 [ %.val.us.sink.i.peel.i, %iter.check189 ], [ %i.fs, %vec.epilog.iter.check191 ], [ %i.fz, %vec.epilog.middle.block201 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check189 ], [ %i.fk, %vec.epilog.iter.check191 ], [ %i.ft, %vec.epilog.middle.block201 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i16 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.gc, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %.04.us.i.i
  %.val.us.i38.i = load i16, ptr %i.ga, align 2, !alias.scope !9833, !noalias !9836
  %i.gb = xor i16 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.gc = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.gc, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9842

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.gr, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3, !noalias !9838
  %i.gf = zext i32 %i.ge to i64                   ; 3 uses
  %i.gg = lshr i64 %i.gf, 6
  %i.gh = and i64 %i.gf, 63
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.gg
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !90, !noalias !9838
  %i.gk = shl nuw i64 1, %i.gh
  %i.gl = and i64 %i.gk, %i.gj
  %.not.i29.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.gf
  %.val18.i.i = load i16, ptr %i.gm, align 2, !alias.scope !9833, !noalias !9836 ; 2 uses
  %i.gn = load i8, ptr %3, align 2, !tbaa !8127, !range !225, !alias.scope !9836, !noalias !9833, !noundef !226
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %.val18.i.i, ptr %i.em, align 2, !tbaa !8131, !alias.scope !9836, !noalias !9833
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !9836, !noalias !9833
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.gp = load i16, ptr %i.em, align 2, !tbaa !8131, !alias.scope !9836, !noalias !9833
  %i.gq = xor i16 %i.gp, %.val18.i.i
  store i16 %i.gq, ptr %i.em, align 2, !tbaa !8131, !alias.scope !9836, !noalias !9833
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gr = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.gr, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9839

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i16 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ho, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !9838
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.gu
  %.val.i36.i = load i16, ptr %i.gv, align 2, !alias.scope !9833, !noalias !9836
  %i.gw = xor i16 %.val.i36.i, %.val.sink23.i.i
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !9838
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.ha
  %.val.i36.i.1 = load i16, ptr %i.hb, align 2, !alias.scope !9833, !noalias !9836
  %i.hc = xor i16 %.val.i36.i.1, %i.gw
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !9838
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.hg
  %.val.i36.i.2 = load i16, ptr %i.hh, align 2, !alias.scope !9833, !noalias !9836
  %i.hi = xor i16 %.val.i36.i.2, %i.hc
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3, !noalias !9838
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.hm
  %.val.i36.i.3 = load i16, ptr %i.hn, align 2, !alias.scope !9833, !noalias !9836
  %i.ho = xor i16 %.val.i36.i.3, %i.hi            ; 3 uses
  %i.hp = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9843

.loopexit.sink.split.i.i.loopexit208.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i16 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.hp, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i16 [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.hv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !9838
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.hs
  %.val.i36.i.epil = load i16, ptr %i.ht, align 2, !alias.scope !9833, !noalias !9836
  %i.hu = xor i16 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.hv = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter231
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9844

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block183, %vec.epilog.middle.block201, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i16 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.fz, %vec.epilog.middle.block201 ], [ %i.fs, %middle.block183 ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ], [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i16 %.val.sink.lcssa.sink.i.i, ptr %i.ez, align 2, !tbaa !8131, !alias.scope !9836, !noalias !9833
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.hy, align 8, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !52
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !9845
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !9845
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.aa ], [ %i.il, %bb.ab ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.im, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ip, align 8, !tbaa !50
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !52
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !9846
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !9846
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.is, %bb.ag ], [ %i.jc, %bb.ah ]
  %i.jd = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jd, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.je

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEsNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block108, %vec.epilog.middle.block126, %middle.block149, %vec.epilog.middle.block167, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIsNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateIjEENS2_15BitXorOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 4, !tbaa !8207
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !92
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIjEEEEPT_RNS_6VectorE.exit.i, label %bb.d

end_hunk_17
begin_hunk_18_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.du, align 4, !alias.scope !9937, !noalias !9940 ; 2 uses
  %i.dv = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !9940, !noalias !9937, !noundef !226
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.val18.us.i.i, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

bb.p:                                             ; preds = %bb.n
  %i.dx = load i32, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  %i.dy = xor i32 %i.dx, %.val18.us.i.i
  store i32 %i.dy, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dz = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.dz, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !9943

.preheader.i34.i:                                 ; preds = %bb.m
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i34.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted.i35.i = load i8, ptr %3, align 4, !tbaa !8207, !alias.scope !9940, !noalias !9937
  %i.eb = trunc nuw i8 %.promoted.i35.i to i1     ; 2 uses
  %.promoted24.i.i = load i32, ptr %i.ea, align 4, !alias.scope !9940, !noalias !9937 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ec = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !9942
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ed
  %.val.i36.peel.i = load i32, ptr %i.ee, align 4, !alias.scope !9937, !noalias !9940 ; 2 uses
  br i1 %i.eb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.ef = xor i32 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i32 [ %i.ef, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter150 = and i64 %i.eg, 3                 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.eg, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i32, ptr %i.dj, align 4, !alias.scope !9937, !noalias !9940 ; 2 uses
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ej = xor i32 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i32 [ %i.ej, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.ek = add i64 %4, -1                          ; 2 uses
  %min.iters.check109 = icmp ult i64 %4, 9
  br i1 %min.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, label %vector.ph110

vector.ph110:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec112 = and i64 %i.ek, -8                   ; 3 uses
  %i.el = or disjoint i64 %n.vec112, 1
  %i.em = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i32> [ %i.em, %vector.ph110 ], [ %i.eq, %vector.body113 ]
  %vec.phi116 = phi <4 x i32> [ zeroinitializer, %vector.ph110 ], [ %i.er, %vector.body113 ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index114 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %wide.load117 = load <4 x i32>, ptr %i.eo, align 4, !alias.scope !9937, !noalias !9940
  %wide.load118 = load <4 x i32>, ptr %i.ep, align 4, !alias.scope !9937, !noalias !9940
  %i.eq = xor <4 x i32> %wide.load117, %vec.phi115 ; 2 uses
  %i.er = xor <4 x i32> %wide.load118, %vec.phi116 ; 2 uses
  %index.next119 = add nuw i64 %index114, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.es, label %middle.block120, label %vector.body113, !llvm.loop !9944

middle.block120:                                  ; preds = %vector.body113
  %bin.rdx121 = xor <4 x i32> %i.er, %i.eq
  %i.et = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx121) ; 2 uses
  %cmp.n122 = icmp eq i64 %i.ek, %n.vec112
  br i1 %cmp.n122, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block120
  %.val.us.sink25.i.i.ph = phi i32 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.et, %middle.block120 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.el, %middle.block120 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i32 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ]
  %.04.us.i.i = phi i64 [ %i.ew, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.04.us.i.i
  %.val.us.i38.i = load i32, ptr %i.eu, align 4, !alias.scope !9937, !noalias !9940
  %i.ev = xor i32 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.ew = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !9945

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.fl, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !9942
  %i.ez = zext i32 %i.ey to i64                   ; 3 uses
  %i.fa = lshr i64 %i.ez, 6
  %i.fb = and i64 %i.ez, 63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !90, !noalias !9942
  %i.fe = shl nuw i64 1, %i.fb
  %i.ff = and i64 %i.fe, %i.fd
  %.not.i29.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ez
  %.val18.i.i = load i32, ptr %i.fg, align 4, !alias.scope !9937, !noalias !9940 ; 2 uses
  %i.fh = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !9940, !noalias !9937, !noundef !226
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.val18.i.i, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.fj = load i32, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  %i.fk = xor i32 %i.fj, %.val18.i.i
  store i32 %i.fk, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fl = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.fl, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !9943

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i32 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gi, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gj, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !9942
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fo
  %.val.i36.i = load i32, ptr %i.fp, align 4, !alias.scope !9937, !noalias !9940
  %i.fq = xor i32 %.val.i36.i, %.val.sink23.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !9942
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fu
  %.val.i36.i.1 = load i32, ptr %i.fv, align 4, !alias.scope !9937, !noalias !9940
  %i.fw = xor i32 %.val.i36.i.1, %i.fq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3, !noalias !9942
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ga
  %.val.i36.i.2 = load i32, ptr %i.gb, align 4, !alias.scope !9937, !noalias !9940
  %i.gc = xor i32 %.val.i36.i.2, %i.fw
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3, !noalias !9942
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.gg
  %.val.i36.i.3 = load i32, ptr %i.gh, align 4, !alias.scope !9937, !noalias !9940
  %i.gi = xor i32 %.val.i36.i.3, %i.gc            ; 3 uses
  %i.gj = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !9946

.loopexit.sink.split.i.i.loopexit128.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i32 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gj, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i32 [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3, !noalias !9942
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.gm
  %.val.i36.i.epil = load i32, ptr %i.gn, align 4, !alias.scope !9937, !noalias !9940
  %i.go = xor i32 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gp = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter150
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !9947

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block120, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i32 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.et, %middle.block120 ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ], [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i32 %.val.sink.lcssa.sink.i.i, ptr %i.ea, align 4, !tbaa !8211, !alias.scope !9940, !noalias !9937
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.gs, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !52
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !9948
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !9948
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gv, %bb.aa ], [ %i.hf, %bb.ab ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.hg, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.hj, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !52
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !9949
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !9949
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.hm, %bb.ag ], [ %i.hw, %bb.ah ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hx, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hy

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEiNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block80, %middle.block103, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIiNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateImEENS2_15BitXorOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8283
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !92
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateImEEEEPT_RNS_6VectorE.exit.i, label %bb.d

end_hunk_18
begin_hunk_19_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.du, align 8, !alias.scope !10040, !noalias !10043 ; 2 uses
  %i.dv = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !10043, !noalias !10040, !noundef !226
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.val18.us.i.i, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

bb.p:                                             ; preds = %bb.n
  %i.dx = load i64, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  %i.dy = xor i64 %i.dx, %.val18.us.i.i
  store i64 %i.dy, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dz = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.dz, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !10046

.preheader.i34.i:                                 ; preds = %bb.m
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i34.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i35.i = load i8, ptr %3, align 8, !tbaa !8283, !alias.scope !10043, !noalias !10040
  %i.eb = trunc nuw i8 %.promoted.i35.i to i1     ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.ea, align 8, !alias.scope !10043, !noalias !10040 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ec = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !10045
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ed
  %.val.i36.peel.i = load i64, ptr %i.ee, align 8, !alias.scope !10040, !noalias !10043 ; 2 uses
  br i1 %i.eb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.ef = xor i64 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i64 [ %i.ef, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter150 = and i64 %i.eg, 3                 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.eg, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i64, ptr %i.dj, align 8, !alias.scope !10040, !noalias !10043 ; 2 uses
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ej = xor i64 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i64 [ %i.ej, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.ek = add i64 %4, -1                          ; 2 uses
  %min.iters.check109 = icmp ult i64 %4, 5
  br i1 %min.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, label %vector.ph110

vector.ph110:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec112 = and i64 %i.ek, -4                   ; 3 uses
  %i.el = or disjoint i64 %n.vec112, 1
  %i.em = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <2 x i64> [ %i.em, %vector.ph110 ], [ %i.eq, %vector.body113 ]
  %vec.phi116 = phi <2 x i64> [ zeroinitializer, %vector.ph110 ], [ %i.er, %vector.body113 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index114 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %wide.load117 = load <2 x i64>, ptr %i.eo, align 8, !alias.scope !10040, !noalias !10043
  %wide.load118 = load <2 x i64>, ptr %i.ep, align 8, !alias.scope !10040, !noalias !10043
  %i.eq = xor <2 x i64> %wide.load117, %vec.phi115 ; 2 uses
  %i.er = xor <2 x i64> %wide.load118, %vec.phi116 ; 2 uses
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.es, label %middle.block120, label %vector.body113, !llvm.loop !10047

middle.block120:                                  ; preds = %vector.body113
  %bin.rdx121 = xor <2 x i64> %i.er, %i.eq
  %i.et = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx121) ; 2 uses
  %cmp.n122 = icmp eq i64 %i.ek, %n.vec112
  br i1 %cmp.n122, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block120
  %.val.us.sink25.i.i.ph = phi i64 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.et, %middle.block120 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.el, %middle.block120 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i64 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ]
  %.04.us.i.i = phi i64 [ %i.ew, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.04.us.i.i
  %.val.us.i38.i = load i64, ptr %i.eu, align 8, !alias.scope !10040, !noalias !10043
  %i.ev = xor i64 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.ew = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !10048

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.fl, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !10045
  %i.ez = zext i32 %i.ey to i64                   ; 3 uses
  %i.fa = lshr i64 %i.ez, 6
  %i.fb = and i64 %i.ez, 63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !90, !noalias !10045
  %i.fe = shl nuw i64 1, %i.fb
  %i.ff = and i64 %i.fe, %i.fd
  %.not.i29.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ez
  %.val18.i.i = load i64, ptr %i.fg, align 8, !alias.scope !10040, !noalias !10043 ; 2 uses
  %i.fh = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !10043, !noalias !10040, !noundef !226
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.val18.i.i, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.fj = load i64, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  %i.fk = xor i64 %i.fj, %.val18.i.i
  store i64 %i.fk, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fl = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.fl, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10046

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i64 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gi, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gj, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !10045
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fo
  %.val.i36.i = load i64, ptr %i.fp, align 8, !alias.scope !10040, !noalias !10043
  %i.fq = xor i64 %.val.i36.i, %.val.sink23.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !10045
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fu
  %.val.i36.i.1 = load i64, ptr %i.fv, align 8, !alias.scope !10040, !noalias !10043
  %i.fw = xor i64 %.val.i36.i.1, %i.fq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3, !noalias !10045
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ga
  %.val.i36.i.2 = load i64, ptr %i.gb, align 8, !alias.scope !10040, !noalias !10043
  %i.gc = xor i64 %.val.i36.i.2, %i.fw
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3, !noalias !10045
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.gg
  %.val.i36.i.3 = load i64, ptr %i.gh, align 8, !alias.scope !10040, !noalias !10043
  %i.gi = xor i64 %.val.i36.i.3, %i.gc            ; 3 uses
  %i.gj = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !10049

.loopexit.sink.split.i.i.loopexit128.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i64 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gj, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i64 [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3, !noalias !10045
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.gm
  %.val.i36.i.epil = load i64, ptr %i.gn, align 8, !alias.scope !10040, !noalias !10043
  %i.go = xor i64 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gp = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter150
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !10050

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block120, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i64 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.et, %middle.block120 ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ], [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i64 %.val.sink.lcssa.sink.i.i, ptr %i.ea, align 8, !tbaa !8287, !alias.scope !10043, !noalias !10040
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.gs, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !52
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !10051
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !10051
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gv, %bb.aa ], [ %i.hf, %bb.ab ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.hg, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.hj, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !52
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !10052
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !10052
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.hm, %bb.ag ], [ %i.hw, %bb.ah ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hx, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hy

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEElNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block80, %middle.block103, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIlNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEENS2_15BitXorOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8359
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateINS_9hugeint_tEEES4_NS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
end_hunk_19
begin_hunk_20_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i8, ptr %i.ez, align 1, !alias.scope !10217, !noalias !10214 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.fb = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !10219
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fc
  %.val.i36.peel.i = load i8, ptr %i.fd, align 1, !alias.scope !10214, !noalias !10217 ; 2 uses
  br i1 %i.fa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !10217, !noalias !10214
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.fe = xor i8 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i8 [ %i.fe, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.ff = add i64 %4, -1                          ; 2 uses
  %i.fg = add i64 %4, -2
  %xtraiter231 = and i64 %i.ff, 3                 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 3
  br i1 %i.fh, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.ff, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i8, ptr %i.ei, align 1, !alias.scope !10214, !noalias !10217 ; 2 uses
  br i1 %i.fa, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !10217, !noalias !10214
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.fi = xor i8 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i8 [ %i.fi, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check189

iter.check189:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.fj = add i64 %4, -1                          ; 5 uses
  %min.iters.check170 = icmp ult i64 %4, 9
  br i1 %min.iters.check170, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check189
  %min.iters.check172 = icmp ult i64 %4, 33
  br i1 %min.iters.check172, label %vec.epilog.ph193, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %n.mod.vf174 = and i64 %i.fj, 24
  %n.vec175 = and i64 %i.fj, -32                  ; 4 uses
  %i.fk = or disjoint i64 %n.vec175, 1
  %i.fl = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %vec.phi178 = phi <16 x i8> [ %i.fl, %vector.ph173 ], [ %i.fp, %vector.body176 ]
  %vec.phi179 = phi <16 x i8> [ zeroinitializer, %vector.ph173 ], [ %i.fq, %vector.body176 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index177 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 17
  %wide.load180 = load <16 x i8>, ptr %i.fn, align 1, !alias.scope !10214, !noalias !10217
  %wide.load181 = load <16 x i8>, ptr %i.fo, align 1, !alias.scope !10214, !noalias !10217
  %i.fp = xor <16 x i8> %wide.load180, %vec.phi178 ; 2 uses
  %i.fq = xor <16 x i8> %wide.load181, %vec.phi179 ; 2 uses
  %index.next182 = add nuw i64 %index177, 32      ; 2 uses
  %i.fr = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.fr, label %middle.block183, label %vector.body176, !llvm.loop !10221

middle.block183:                                  ; preds = %vector.body176
  %bin.rdx184 = xor <16 x i8> %i.fq, %i.fp
  %i.fs = call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx184) ; 3 uses
  %cmp.n185 = icmp eq i64 %i.fj, %n.vec175
  br i1 %cmp.n185, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block183
  %min.epilog.iters.check192 = icmp eq i64 %n.mod.vf174, 0
  br i1 %min.epilog.iters.check192, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph193, !prof !8107

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check191
  %vec.epilog.resume.val186 = phi i64 [ %n.vec175, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check171 ]
  %bc.merge.rdx187 = phi i8 [ %i.fs, %vec.epilog.iter.check191 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check171 ]
  %n.vec195 = and i64 %i.fj, -8                   ; 3 uses
  %i.ft = or disjoint i64 %n.vec195, 1
  %i.fu = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx187, i64 0
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val186, %vec.epilog.ph193 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 2 uses
  %vec.phi198 = phi <8 x i8> [ %i.fu, %vec.epilog.ph193 ], [ %i.fx, %vec.epilog.vector.body196 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index197
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %wide.load199 = load <8 x i8>, ptr %i.fw, align 1, !alias.scope !10214, !noalias !10217
  %i.fx = xor <8 x i8> %wide.load199, %vec.phi198 ; 2 uses
  %index.next200 = add nuw i64 %index197, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.fy, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !10222

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  %i.fz = call i8 @llvm.vector.reduce.xor.v8i8(<8 x i8> %i.fx) ; 2 uses
  %cmp.n202 = icmp eq i64 %i.fj, %n.vec195
  br i1 %cmp.n202, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block201
  %.val.us.sink25.i.i.ph = phi i8 [ %.val.us.sink.i.peel.i, %iter.check189 ], [ %i.fs, %vec.epilog.iter.check191 ], [ %i.fz, %vec.epilog.middle.block201 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check189 ], [ %i.fk, %vec.epilog.iter.check191 ], [ %i.ft, %vec.epilog.middle.block201 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i8 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.gc, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.04.us.i.i
  %.val.us.i38.i = load i8, ptr %i.ga, align 1, !alias.scope !10214, !noalias !10217
  %i.gb = xor i8 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.gc = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.gc, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !10223

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.gr, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3, !noalias !10219
  %i.gf = zext i32 %i.ge to i64                   ; 3 uses
  %i.gg = lshr i64 %i.gf, 6
  %i.gh = and i64 %i.gf, 63
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.gg
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !90, !noalias !10219
  %i.gk = shl nuw i64 1, %i.gh
  %i.gl = and i64 %i.gk, %i.gj
  %.not.i29.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gf
  %.val18.i.i = load i8, ptr %i.gm, align 1, !alias.scope !10214, !noalias !10217 ; 2 uses
  %i.gn = load i8, ptr %3, align 1, !tbaa !8046, !range !225, !alias.scope !10217, !noalias !10214, !noundef !226
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 %.val18.i.i, ptr %i.em, align 1, !tbaa !8050, !alias.scope !10217, !noalias !10214
  store i8 1, ptr %3, align 1, !tbaa !8046, !alias.scope !10217, !noalias !10214
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.gp = load i8, ptr %i.em, align 1, !tbaa !8050, !alias.scope !10217, !noalias !10214
  %i.gq = xor i8 %i.gp, %.val18.i.i
  store i8 %i.gq, ptr %i.em, align 1, !tbaa !8050, !alias.scope !10217, !noalias !10214
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gr = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.gr, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10220

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i8 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ho, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !10219
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.gu
  %.val.i36.i = load i8, ptr %i.gv, align 1, !alias.scope !10214, !noalias !10217
  %i.gw = xor i8 %.val.i36.i, %.val.sink23.i.i
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !10219
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ha
  %.val.i36.i.1 = load i8, ptr %i.hb, align 1, !alias.scope !10214, !noalias !10217
  %i.hc = xor i8 %.val.i36.i.1, %i.gw
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !10219
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hg
  %.val.i36.i.2 = load i8, ptr %i.hh, align 1, !alias.scope !10214, !noalias !10217
  %i.hi = xor i8 %.val.i36.i.2, %i.hc
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3, !noalias !10219
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hm
  %.val.i36.i.3 = load i8, ptr %i.hn, align 1, !alias.scope !10214, !noalias !10217
  %i.ho = xor i8 %.val.i36.i.3, %i.hi             ; 3 uses
  %i.hp = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !10224

.loopexit.sink.split.i.i.loopexit208.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i8 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.hp, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i8 [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.hv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !10219
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hs
  %.val.i36.i.epil = load i8, ptr %i.ht, align 1, !alias.scope !10214, !noalias !10217
  %i.hu = xor i8 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.hv = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter231
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !10225

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block183, %vec.epilog.middle.block201, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i8 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.fz, %vec.epilog.middle.block201 ], [ %i.fs, %middle.block183 ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ], [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i8 %.val.sink.lcssa.sink.i.i, ptr %i.ez, align 1, !tbaa !8050, !alias.scope !10217, !noalias !10214
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.hy, align 8, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !52
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !10226
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !10226
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.aa ], [ %i.il, %bb.ab ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.im, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ip, align 8, !tbaa !50
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !52
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !10227
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !10227
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.is, %bb.ag ], [ %i.jc, %bb.ah ]
  %i.jd = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jd, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.je

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIhEEhNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block108, %vec.epilog.middle.block126, %middle.block149, %vec.epilog.middle.block167, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIhNS0_8BitStateIhEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !92
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateItEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

end_hunk_20
begin_hunk_21_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.promoted24.i.i = load i16, ptr %i.ez, align 2, !alias.scope !10326, !noalias !10323 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.fb = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !10328
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.fc
  %.val.i36.peel.i = load i16, ptr %i.fd, align 2, !alias.scope !10323, !noalias !10326 ; 2 uses
  br i1 %i.fa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !10326, !noalias !10323
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.fe = xor i16 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i16 [ %i.fe, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.ff = add i64 %4, -1                          ; 2 uses
  %i.fg = add i64 %4, -2
  %xtraiter231 = and i64 %i.ff, 3                 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 3
  br i1 %i.fh, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.ff, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i16, ptr %i.ei, align 2, !alias.scope !10323, !noalias !10326 ; 2 uses
  br i1 %i.fa, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !10326, !noalias !10323
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.fi = xor i16 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i16 [ %i.fi, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 4 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %iter.check189

iter.check189:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.fj = add i64 %4, -1                          ; 5 uses
  %min.iters.check170 = icmp ult i64 %4, 5
  br i1 %min.iters.check170, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check189
  %min.iters.check172 = icmp ult i64 %4, 17
  br i1 %min.iters.check172, label %vec.epilog.ph193, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %n.mod.vf174 = and i64 %i.fj, 12
  %n.vec175 = and i64 %i.fj, -16                  ; 4 uses
  %i.fk = or disjoint i64 %n.vec175, 1
  %i.fl = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %vec.phi178 = phi <8 x i16> [ %i.fl, %vector.ph173 ], [ %i.fp, %vector.body176 ]
  %vec.phi179 = phi <8 x i16> [ zeroinitializer, %vector.ph173 ], [ %i.fq, %vector.body176 ]
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index177 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 18
  %wide.load180 = load <8 x i16>, ptr %i.fn, align 2, !alias.scope !10323, !noalias !10326
  %wide.load181 = load <8 x i16>, ptr %i.fo, align 2, !alias.scope !10323, !noalias !10326
  %i.fp = xor <8 x i16> %wide.load180, %vec.phi178 ; 2 uses
  %i.fq = xor <8 x i16> %wide.load181, %vec.phi179 ; 2 uses
  %index.next182 = add nuw i64 %index177, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.fr, label %middle.block183, label %vector.body176, !llvm.loop !10330

middle.block183:                                  ; preds = %vector.body176
  %bin.rdx184 = xor <8 x i16> %i.fq, %i.fp
  %i.fs = call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> %bin.rdx184) ; 3 uses
  %cmp.n185 = icmp eq i64 %i.fj, %n.vec175
  br i1 %cmp.n185, label %.loopexit.sink.split.i.i, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block183
  %min.epilog.iters.check192 = icmp eq i64 %n.mod.vf174, 0
  br i1 %min.epilog.iters.check192, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, label %vec.epilog.ph193, !prof !8187

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check191
  %vec.epilog.resume.val186 = phi i64 [ %n.vec175, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check171 ]
  %bc.merge.rdx187 = phi i16 [ %i.fs, %vec.epilog.iter.check191 ], [ %.val.us.sink.i.peel.i, %vector.main.loop.iter.check171 ]
  %n.vec195 = and i64 %i.fj, -4                   ; 3 uses
  %i.ft = or disjoint i64 %n.vec195, 1
  %i.fu = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx187, i64 0
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val186, %vec.epilog.ph193 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 2 uses
  %vec.phi198 = phi <4 x i16> [ %i.fu, %vec.epilog.ph193 ], [ %i.fx, %vec.epilog.vector.body196 ]
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %index197
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %wide.load199 = load <4 x i16>, ptr %i.fw, align 2, !alias.scope !10323, !noalias !10326
  %i.fx = xor <4 x i16> %wide.load199, %vec.phi198 ; 2 uses
  %index.next200 = add nuw i64 %index197, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.fy, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !10331

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  %i.fz = call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> %i.fx) ; 2 uses
  %cmp.n202 = icmp eq i64 %i.fj, %n.vec195
  br i1 %cmp.n202, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block201
  %.val.us.sink25.i.i.ph = phi i16 [ %.val.us.sink.i.peel.i, %iter.check189 ], [ %i.fs, %vec.epilog.iter.check191 ], [ %i.fz, %vec.epilog.middle.block201 ]
  %.04.us.i.i.ph = phi i64 [ 1, %iter.check189 ], [ %i.fk, %vec.epilog.iter.check191 ], [ %i.ft, %vec.epilog.middle.block201 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i16 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ]
  %.04.us.i.i = phi i64 [ %i.gc, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %.04.us.i.i
  %.val.us.i38.i = load i16, ptr %i.ga, align 2, !alias.scope !10323, !noalias !10326
  %i.gb = xor i16 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.gc = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.gc, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !10332

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.gr, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3, !noalias !10328
  %i.gf = zext i32 %i.ge to i64                   ; 3 uses
  %i.gg = lshr i64 %i.gf, 6
  %i.gh = and i64 %i.gf, 63
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.gg
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !90, !noalias !10328
  %i.gk = shl nuw i64 1, %i.gh
  %i.gl = and i64 %i.gk, %i.gj
  %.not.i29.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.gf
  %.val18.i.i = load i16, ptr %i.gm, align 2, !alias.scope !10323, !noalias !10326 ; 2 uses
  %i.gn = load i8, ptr %3, align 2, !tbaa !8127, !range !225, !alias.scope !10326, !noalias !10323, !noundef !226
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %.val18.i.i, ptr %i.em, align 2, !tbaa !8131, !alias.scope !10326, !noalias !10323
  store i8 1, ptr %3, align 2, !tbaa !8127, !alias.scope !10326, !noalias !10323
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.gp = load i16, ptr %i.em, align 2, !tbaa !8131, !alias.scope !10326, !noalias !10323
  %i.gq = xor i16 %i.gp, %.val18.i.i
  store i16 %i.gq, ptr %i.em, align 2, !tbaa !8131, !alias.scope !10326, !noalias !10323
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gr = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.gr, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10329

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i16 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.ho, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !10328
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.gu
  %.val.i36.i = load i16, ptr %i.gv, align 2, !alias.scope !10323, !noalias !10326
  %i.gw = xor i16 %.val.i36.i, %.val.sink23.i.i
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !10328
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.ha
  %.val.i36.i.1 = load i16, ptr %i.hb, align 2, !alias.scope !10323, !noalias !10326
  %i.hc = xor i16 %.val.i36.i.1, %i.gw
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !10328
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.hg
  %.val.i36.i.2 = load i16, ptr %i.hh, align 2, !alias.scope !10323, !noalias !10326
  %i.hi = xor i16 %.val.i36.i.2, %i.hc
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3, !noalias !10328
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.hm
  %.val.i36.i.3 = load i16, ptr %i.hn, align 2, !alias.scope !10323, !noalias !10326
  %i.ho = xor i16 %.val.i36.i.3, %i.hi            ; 3 uses
  %i.hp = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !10333

.loopexit.sink.split.i.i.loopexit208.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i16 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.hp, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i16 [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.hv, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !10328
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.hs
  %.val.i36.i.epil = load i16, ptr %i.ht, align 2, !alias.scope !10323, !noalias !10326
  %i.hu = xor i16 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.hv = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter231
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !10334

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit208.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block183, %vec.epilog.middle.block201, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i16 [ %i.gb, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.fz, %vec.epilog.middle.block201 ], [ %i.fs, %middle.block183 ], [ %i.ho, %.loopexit.sink.split.i.i.loopexit208.unr-lcssa ], [ %i.hu, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i16 %.val.sink.lcssa.sink.i.i, ptr %i.ez, align 2, !tbaa !8131, !alias.scope !10326, !noalias !10323
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.hy, align 8, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !52
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !10335
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27, !inline_history !10335
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.aa ], [ %i.il, %bb.ab ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.im, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ip, align 8, !tbaa !50
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !52
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !10336
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27, !inline_history !10336
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.is, %bb.ag ], [ %i.jc, %bb.ah ]
  %i.jd = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jd, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.je

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateItEEtNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block108, %vec.epilog.middle.block126, %middle.block149, %vec.epilog.middle.block167, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationItNS0_8BitStateItEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !92
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIjEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

end_hunk_21
begin_hunk_22_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.0173.us.i.i
  %.val18.us.i.i = load i32, ptr %i.du, align 4, !alias.scope !10426, !noalias !10429 ; 2 uses
  %i.dv = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !10429, !noalias !10426, !noundef !226
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.val18.us.i.i, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

bb.p:                                             ; preds = %bb.n
  %i.dx = load i32, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  %i.dy = xor i32 %i.dx, %.val18.us.i.i
  store i32 %i.dy, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dz = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.dz, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !10432

.preheader.i34.i:                                 ; preds = %bb.m
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i34.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.promoted.i35.i = load i8, ptr %3, align 4, !tbaa !8207, !alias.scope !10429, !noalias !10426
  %i.eb = trunc nuw i8 %.promoted.i35.i to i1     ; 2 uses
  %.promoted24.i.i = load i32, ptr %i.ea, align 4, !alias.scope !10429, !noalias !10426 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ec = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !10431
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ed
  %.val.i36.peel.i = load i32, ptr %i.ee, align 4, !alias.scope !10426, !noalias !10429 ; 2 uses
  br i1 %i.eb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.ef = xor i32 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i32 [ %i.ef, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter150 = and i64 %i.eg, 3                 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.eg, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i32, ptr %i.dj, align 4, !alias.scope !10426, !noalias !10429 ; 2 uses
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ej = xor i32 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i32 [ %i.ej, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.ek = add i64 %4, -1                          ; 2 uses
  %min.iters.check109 = icmp ult i64 %4, 9
  br i1 %min.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, label %vector.ph110

vector.ph110:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec112 = and i64 %i.ek, -8                   ; 3 uses
  %i.el = or disjoint i64 %n.vec112, 1
  %i.em = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i32> [ %i.em, %vector.ph110 ], [ %i.eq, %vector.body113 ]
  %vec.phi116 = phi <4 x i32> [ zeroinitializer, %vector.ph110 ], [ %i.er, %vector.body113 ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index114 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %wide.load117 = load <4 x i32>, ptr %i.eo, align 4, !alias.scope !10426, !noalias !10429
  %wide.load118 = load <4 x i32>, ptr %i.ep, align 4, !alias.scope !10426, !noalias !10429
  %i.eq = xor <4 x i32> %wide.load117, %vec.phi115 ; 2 uses
  %i.er = xor <4 x i32> %wide.load118, %vec.phi116 ; 2 uses
  %index.next119 = add nuw i64 %index114, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.es, label %middle.block120, label %vector.body113, !llvm.loop !10433

middle.block120:                                  ; preds = %vector.body113
  %bin.rdx121 = xor <4 x i32> %i.er, %i.eq
  %i.et = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx121) ; 2 uses
  %cmp.n122 = icmp eq i64 %i.ek, %n.vec112
  br i1 %cmp.n122, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block120
  %.val.us.sink25.i.i.ph = phi i32 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.et, %middle.block120 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.el, %middle.block120 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i32 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ]
  %.04.us.i.i = phi i64 [ %i.ew, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.04.us.i.i
  %.val.us.i38.i = load i32, ptr %i.eu, align 4, !alias.scope !10426, !noalias !10429
  %i.ev = xor i32 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.ew = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !10434

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.fl, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !10431
  %i.ez = zext i32 %i.ey to i64                   ; 3 uses
  %i.fa = lshr i64 %i.ez, 6
  %i.fb = and i64 %i.ez, 63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !90, !noalias !10431
  %i.fe = shl nuw i64 1, %i.fb
  %i.ff = and i64 %i.fe, %i.fd
  %.not.i29.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ez
  %.val18.i.i = load i32, ptr %i.fg, align 4, !alias.scope !10426, !noalias !10429 ; 2 uses
  %i.fh = load i8, ptr %3, align 4, !tbaa !8207, !range !225, !alias.scope !10429, !noalias !10426, !noundef !226
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.val18.i.i, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  store i8 1, ptr %3, align 4, !tbaa !8207, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.fj = load i32, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  %i.fk = xor i32 %i.fj, %.val18.i.i
  store i32 %i.fk, ptr %i.dn, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fl = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.fl, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10432

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i32 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gi, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gj, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !10431
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fo
  %.val.i36.i = load i32, ptr %i.fp, align 4, !alias.scope !10426, !noalias !10429
  %i.fq = xor i32 %.val.i36.i, %.val.sink23.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !10431
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.fu
  %.val.i36.i.1 = load i32, ptr %i.fv, align 4, !alias.scope !10426, !noalias !10429
  %i.fw = xor i32 %.val.i36.i.1, %i.fq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3, !noalias !10431
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ga
  %.val.i36.i.2 = load i32, ptr %i.gb, align 4, !alias.scope !10426, !noalias !10429
  %i.gc = xor i32 %.val.i36.i.2, %i.fw
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3, !noalias !10431
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.gg
  %.val.i36.i.3 = load i32, ptr %i.gh, align 4, !alias.scope !10426, !noalias !10429
  %i.gi = xor i32 %.val.i36.i.3, %i.gc            ; 3 uses
  %i.gj = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !10435

.loopexit.sink.split.i.i.loopexit128.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i32 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gj, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i32 [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3, !noalias !10431
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.gm
  %.val.i36.i.epil = load i32, ptr %i.gn, align 4, !alias.scope !10426, !noalias !10429
  %i.go = xor i32 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gp = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter150
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !10436

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block120, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i32 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.et, %middle.block120 ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ], [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i32 %.val.sink.lcssa.sink.i.i, ptr %i.ea, align 4, !tbaa !8211, !alias.scope !10429, !noalias !10426
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.gs, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !52
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !10437
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !10437
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gv, %bb.aa ], [ %i.hf, %bb.ab ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.hg, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.hj, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !52
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !10438
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !10438
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.hm, %bb.ag ], [ %i.hw, %bb.ah ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hx, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hy

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateIjEEjNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block80, %middle.block103, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationIjNS0_8BitStateIjEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !92
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateImEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

end_hunk_22
begin_hunk_23_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.us.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0173.us.i.i
  %.val18.us.i.i = load i64, ptr %i.du, align 8, !alias.scope !10528, !noalias !10531 ; 2 uses
  %i.dv = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !10531, !noalias !10528, !noundef !226
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.val18.us.i.i, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

bb.p:                                             ; preds = %bb.n
  %i.dx = load i64, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  %i.dy = xor i64 %i.dx, %.val18.us.i.i
  store i64 %i.dy, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i: ; preds = %bb.p, %bb.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.dz = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %i.dz, %4
  br i1 %exitcond11.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !10534

.preheader.i34.i:                                 ; preds = %bb.m
  br i1 %.not7.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i34.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i35.i = load i8, ptr %3, align 8, !tbaa !8283, !alias.scope !10531, !noalias !10528
  %i.eb = trunc nuw i8 %.promoted.i35.i to i1     ; 2 uses
  %.promoted24.i.i = load i64, ptr %i.ea, align 8, !alias.scope !10531, !noalias !10528 ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.ec = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !10533
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ed
  %.val.i36.peel.i = load i64, ptr %i.ee, align 8, !alias.scope !10528, !noalias !10531 ; 2 uses
  br i1 %i.eb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.ef = xor i64 %.val.i36.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.r, %bb.q
  %.val.sink.i37.peel.i = phi i64 [ %i.ef, %bb.r ], [ %.val.i36.peel.i, %bb.q ] ; 3 uses
  %exitcond12.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond12.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.eg = add i64 %4, -1                          ; 2 uses
  %i.eh = add i64 %4, -2
  %xtraiter150 = and i64 %i.eg, 3                 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter = and i64 %i.eg, -4
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load i64, ptr %i.dj, align 8, !alias.scope !10528, !noalias !10531 ; 2 uses
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.ej = xor i64 %.val.us.i38.peel.i, %.promoted24.i.i
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.t, %bb.s
  %.val.us.sink.i.peel.i = phi i64 [ %i.ej, %bb.t ], [ %.val.us.i38.peel.i, %bb.s ] ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.ek = add i64 %4, -1                          ; 2 uses
  %min.iters.check109 = icmp ult i64 %4, 5
  br i1 %min.iters.check109, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, label %vector.ph110

vector.ph110:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %n.vec112 = and i64 %i.ek, -4                   ; 3 uses
  %i.el = or disjoint i64 %n.vec112, 1
  %i.em = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val.us.sink.i.peel.i, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <2 x i64> [ %i.em, %vector.ph110 ], [ %i.eq, %vector.body113 ]
  %vec.phi116 = phi <2 x i64> [ zeroinitializer, %vector.ph110 ], [ %i.er, %vector.body113 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index114 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %wide.load117 = load <2 x i64>, ptr %i.eo, align 8, !alias.scope !10528, !noalias !10531
  %wide.load118 = load <2 x i64>, ptr %i.ep, align 8, !alias.scope !10528, !noalias !10531
  %i.eq = xor <2 x i64> %wide.load117, %vec.phi115 ; 2 uses
  %i.er = xor <2 x i64> %wide.load118, %vec.phi116 ; 2 uses
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.es, label %middle.block120, label %vector.body113, !llvm.loop !10535

middle.block120:                                  ; preds = %vector.body113
  %bin.rdx121 = xor <2 x i64> %i.er, %i.eq
  %i.et = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx121) ; 2 uses
  %cmp.n122 = icmp eq i64 %i.ek, %n.vec112
  br i1 %cmp.n122, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader, %middle.block120
  %.val.us.sink25.i.i.ph = phi i64 [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.et, %middle.block120 ]
  %.04.us.i.i.ph = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.el, %middle.block120 ]
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %.val.us.sink25.i.i = phi i64 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink25.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ]
  %.04.us.i.i = phi i64 [ %i.ew, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.04.us.i.i.ph, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader125 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.04.us.i.i
  %.val.us.i38.i = load i64, ptr %i.eu, align 8, !alias.scope !10528, !noalias !10531
  %i.ev = xor i64 %.val.us.i38.i, %.val.us.sink25.i.i ; 2 uses
  %i.ew = add nuw i64 %.04.us.i.i, 1              ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond13.not.i.i, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !10536

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i
  %.0173.i.i = phi i64 [ %i.fl, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3, !noalias !10533
  %i.ez = zext i32 %i.ey to i64                   ; 3 uses
  %i.fa = lshr i64 %i.ez, 6
  %i.fb = and i64 %i.ez, 63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !90, !noalias !10533
  %i.fe = shl nuw i64 1, %i.fb
  %i.ff = and i64 %i.fe, %i.fd
  %.not.i29.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i29.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ez
  %.val18.i.i = load i64, ptr %i.fg, align 8, !alias.scope !10528, !noalias !10531 ; 2 uses
  %i.fh = load i8, ptr %3, align 8, !tbaa !8283, !range !225, !alias.scope !10531, !noalias !10528, !noundef !226
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.val18.i.i, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  store i8 1, ptr %3, align 8, !tbaa !8283, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.w:                                             ; preds = %bb.u
  %i.fj = load i64, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  %i.fk = xor i64 %i.fj, %.val18.i.i
  store i64 %i.fk, ptr %i.dn, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.w, %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.fl = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.fl, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10534

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %.val.sink23.i.i = phi i64 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gi, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.gj, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter.next.3, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !10533
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fo
  %.val.i36.i = load i64, ptr %i.fp, align 8, !alias.scope !10528, !noalias !10531
  %i.fq = xor i64 %.val.i36.i, %.val.sink23.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !10533
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fu
  %.val.i36.i.1 = load i64, ptr %i.fv, align 8, !alias.scope !10528, !noalias !10531
  %i.fw = xor i64 %.val.i36.i.1, %i.fq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3, !noalias !10533
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ga
  %.val.i36.i.2 = load i64, ptr %i.gb, align 8, !alias.scope !10528, !noalias !10531
  %i.gc = xor i64 %.val.i36.i.2, %i.fw
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3, !noalias !10533
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.gg
  %.val.i36.i.3 = load i64, ptr %i.gh, align 8, !alias.scope !10528, !noalias !10531
  %i.gi = xor i64 %.val.i36.i.3, %i.gc            ; 3 uses
  %i.gj = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !10537

.loopexit.sink.split.i.i.loopexit128.unr-lcssa:   ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.val.sink23.i.i.epil.init = phi i64 [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.gj, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %.val.sink23.i.i.epil = phi i64 [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.val.sink23.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.gp, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3, !noalias !10533
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.gm
  %.val.i36.i.epil = load i64, ptr %i.gn, align 8, !alias.scope !10528, !noalias !10531
  %i.go = xor i64 %.val.i36.i.epil, %.val.sink23.i.i.epil ; 2 uses
  %i.gp = add nuw i64 %.04.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter150
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i.i, label %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !10538

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit128.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %middle.block120, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.val.sink.lcssa.sink.i.i = phi i64 [ %i.ev, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ], [ %.val.us.sink.i.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %.val.sink.i37.peel.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.et, %middle.block120 ], [ %i.gi, %.loopexit.sink.split.i.i.loopexit128.unr-lcssa ], [ %i.go, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store i64 %.val.sink.lcssa.sink.i.i, ptr %i.ea, align 8, !tbaa !8287, !alias.scope !10531, !noalias !10528
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %.loopexit.sink.split.i.i, %.preheader.i34.i, %.preheader1.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.gs, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !52
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !10539
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27, !inline_history !10539
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gv, %bb.aa ], [ %i.hf, %bb.ab ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.hg, label %bb.ac, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.y, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.hj, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !52
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !10540
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !inline_history !10540
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.hm, %bb.ag ], [ %i.hw, %bb.ah ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.hx, label %bb.ai, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.ae, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.hy

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_18BitStateImEEmNS2_15BitXorOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.prol.loopexit, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i, %middle.block80, %middle.block103, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %_ZN6duckdb12_GLOBAL__N_116BitwiseOperation9OperationImNS0_8BitStateImEENS0_15BitXorOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.peel.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEENS2_15BitXorOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 {
bb.a:
  store i8 0, ptr %1, align 8, !tbaa !8714
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateINS_10uhugeint_tEEES4_NS2_15BitXorOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !75
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90
end_hunk_23
begin_hunk_24_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %i.eg = and i64 %.0173.us.i.i, 63
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ef
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !90, !noalias !10747
  %i.ej = shl nuw i64 1, %i.eg
  %i.ek = and i64 %i.ej, %i.ei
  %.not.us.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.us.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.0173.us.i.i
  %.val18.us.i.i = load double, ptr %i.el, align 8, !alias.scope !10742, !noalias !10745
  %i.em = load i8, ptr %3, align 8, !tbaa !10676, !range !225, !alias.scope !10745, !noalias !10742, !noundef !226
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.m, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %3, align 8, !tbaa !10676, !alias.scope !10745, !noalias !10742
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i: ; preds = %bb.m, %bb.l
  %i.eo = load double, ptr %i.ee, align 8, !tbaa !10674, !alias.scope !10745, !noalias !10742
  %i.ep = fmul double %.val18.us.i.i, %i.eo
  store double %i.ep, ptr %i.ee, align 8, !tbaa !10674, !alias.scope !10745, !noalias !10742
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i33.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.eq = add nuw i64 %.0173.us.i.i, 1            ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.eq, %4
  br i1 %exitcond12.not.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !10748

.preheader.i34.i:                                 ; preds = %bb.k
  br i1 %.not8.i.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %.lr.ph5.i.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i34.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i35.i = load i8, ptr %3, align 8, !tbaa !10676, !alias.scope !10745, !noalias !10742
  %.promoted6.i.i = load double, ptr %i.er, align 8, !tbaa !10674, !alias.scope !10745, !noalias !10742 ; 2 uses
  %i.es = trunc nuw i8 %.promoted.i35.i to i1     ; 2 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i: ; preds = %.lr.ph5.i.i
  %i.et = load i32, ptr %.val.i, align 4, !tbaa !3, !noalias !10747
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eu
  %.val.i36.peel.i = load double, ptr %i.ev, align 8, !alias.scope !10742, !noalias !10745
  br i1 %i.es, label %bb.o, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  store i8 0, ptr %3, align 8, !tbaa !10676, !alias.scope !10745, !noalias !10742
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i: ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.preheader.i
  %i.ew = fmul double %.promoted6.i.i, %.val.i36.peel.i ; 3 uses
  %exitcond13.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond13.not.i.peel.i, label %..loopexit_crit_edge.i37.i, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %i.ex = add i64 %4, -1                          ; 2 uses
  %i.ey = add i64 %4, -2
  %xtraiter74 = and i64 %i.ex, 3                  ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 3
  br i1 %i.ez, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %unroll_iter81 = and i64 %i.ex, -4
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i: ; preds = %.lr.ph5.i.i
  %.val.us.i38.peel.i = load double, ptr %i.ea, align 8, !alias.scope !10742, !noalias !10745
  br i1 %i.es, label %bb.p, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  store i8 0, ptr %3, align 8, !tbaa !10676, !alias.scope !10745, !noalias !10742
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i: ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.preheader.i
  %i.fa = fmul double %.promoted6.i.i, %.val.us.i38.peel.i ; 3 uses
  %exitcond14.not.i.peel.i = icmp eq i64 %4, 1
  br i1 %exitcond14.not.i.peel.i, label %..loopexit_crit_edge.i37.i, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i
  %i.fb = add i64 %4, -1                          ; 2 uses
  %i.fc = add i64 %4, -2
  %xtraiter83 = and i64 %i.fb, 7                  ; 3 uses
  %i.fd = icmp ult i64 %i.fc, 7
  br i1 %i.fd, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader.new

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader.new: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %unroll_iter90 = and i64 %i.fb, -8
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader.new
  %i.fe = phi double [ %i.fa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader.new ], [ %i.gb, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ]
  %.04.us.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader.new ], [ %i.gc, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ] ; 9 uses
  %niter91 = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader.new ], [ %niter91.next.7, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %.val.us.i38.i = load double, ptr %i.ff, align 8, !alias.scope !10742, !noalias !10745
  %i.fg = fmul double %i.fe, %.val.us.i38.i
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.val.us.i38.i.1 = load double, ptr %i.fi, align 8, !alias.scope !10742, !noalias !10745
  %i.fj = fmul double %i.fg, %.val.us.i38.i.1
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %.val.us.i38.i.2 = load double, ptr %i.fl, align 8, !alias.scope !10742, !noalias !10745
  %i.fm = fmul double %i.fj, %.val.us.i38.i.2
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %.val.us.i38.i.3 = load double, ptr %i.fo, align 8, !alias.scope !10742, !noalias !10745
  %i.fp = fmul double %i.fm, %.val.us.i38.i.3
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %.val.us.i38.i.4 = load double, ptr %i.fr, align 8, !alias.scope !10742, !noalias !10745
  %i.fs = fmul double %i.fp, %.val.us.i38.i.4
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %.val.us.i38.i.5 = load double, ptr %i.fu, align 8, !alias.scope !10742, !noalias !10745
  %i.fv = fmul double %i.fs, %.val.us.i38.i.5
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %.val.us.i38.i.6 = load double, ptr %i.fx, align 8, !alias.scope !10742, !noalias !10745
  %i.fy = fmul double %i.fv, %.val.us.i38.i.6
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %.val.us.i38.i.7 = load double, ptr %i.ga, align 8, !alias.scope !10742, !noalias !10745
  %i.gb = fmul double %i.fy, %.val.us.i38.i.7     ; 3 uses
  %i.gc = add nuw i64 %.04.us.i.i, 8              ; 2 uses
  %niter91.next.7 = add i64 %niter91, 8           ; 2 uses
  %niter91.ncmp.7 = icmp eq i64 %niter91.next.7, %unroll_iter90
  br i1 %niter91.ncmp.7, label %..loopexit_crit_edge.i37.i.loopexit.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i, !llvm.loop !10749

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i28.i, %bb.s
  %.0173.i.i = phi i64 [ %i.gr, %bb.s ], [ 0, %.lr.ph.i28.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0173.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3, !noalias !10747
  %i.gf = zext i32 %i.ge to i64                   ; 3 uses
  %i.gg = lshr i64 %i.gf, 6
  %i.gh = and i64 %i.gf, 63
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.gg
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !90, !noalias !10747
  %i.gk = shl nuw i64 1, %i.gh
  %i.gl = and i64 %i.gk, %i.gj
  %.not.i29.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i29.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.gf
  %.val18.i.i = load double, ptr %i.gm, align 8, !alias.scope !10742, !noalias !10745
  %i.gn = load i8, ptr %3, align 8, !tbaa !10676, !range !225, !alias.scope !10745, !noalias !10742, !noundef !226
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.r, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %3, align 8, !tbaa !10676, !alias.scope !10745, !noalias !10742
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i: ; preds = %bb.r, %bb.q
  %i.gp = load double, ptr %i.ee, align 8, !tbaa !10674, !alias.scope !10745, !noalias !10742
  %i.gq = fmul double %.val18.i.i, %i.gp
  store double %i.gq, ptr %i.ee, align 8, !tbaa !10674, !alias.scope !10745, !noalias !10742
  br label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i30.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.gr = add nuw i64 %.0173.i.i, 1               ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.gr, %4
  br i1 %exitcond.not.i31.i, label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !10748

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new
  %i.gs = phi double [ %i.ew, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %.04.i.i = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %i.hq, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ] ; 5 uses
  %niter82 = phi i64 [ 0, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader.new ], [ %niter82.next.3, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !10747
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.gv
  %.val.i36.i = load double, ptr %i.gw, align 8, !alias.scope !10742, !noalias !10745
  %i.gx = fmul double %i.gs, %.val.i36.i
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3, !noalias !10747
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hb
  %.val.i36.i.1 = load double, ptr %i.hc, align 8, !alias.scope !10742, !noalias !10745
  %i.hd = fmul double %i.gx, %.val.i36.i.1
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3, !noalias !10747
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hh
  %.val.i36.i.2 = load double, ptr %i.hi, align 8, !alias.scope !10742, !noalias !10745
  %i.hj = fmul double %i.hd, %.val.i36.i.2
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3, !noalias !10747
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hn
  %.val.i36.i.3 = load double, ptr %i.ho, align 8, !alias.scope !10742, !noalias !10745
  %i.hp = fmul double %i.hj, %.val.i36.i.3        ; 3 uses
  %i.hq = add nuw i64 %.04.i.i, 4                 ; 2 uses
  %niter82.next.3 = add nuw i64 %niter82, 4       ; 2 uses
  %niter82.ncmp.3 = icmp eq i64 %niter82.next.3, %unroll_iter81
  br i1 %niter82.ncmp.3, label %..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i, !llvm.loop !10750

..loopexit_crit_edge.i37.i.loopexit.unr-lcssa:    ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i
  %lcmp.mod87.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod87.not, label %..loopexit_crit_edge.i37.i, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i37.i.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader
  %.epil.init86 = phi double [ %i.fa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.gb, %..loopexit_crit_edge.i37.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.preheader ], [ %i.gc, %..loopexit_crit_edge.i37.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter83, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader
  %i.hr = phi double [ %i.ht, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.epil.init86, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader ]
  %.04.us.i.i.epil = phi i64 [ %i.hu, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %.04.us.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter84 = phi i64 [ %epil.iter84.next, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil.preheader ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.04.us.i.i.epil
  %.val.us.i38.i.epil = load double, ptr %i.hs, align 8, !alias.scope !10742, !noalias !10745
  %i.ht = fmul double %i.hr, %.val.us.i38.i.epil  ; 2 uses
  %i.hu = add nuw i64 %.04.us.i.i.epil, 1
  %epil.iter84.next = add i64 %epil.iter84, 1     ; 2 uses
  %epil.iter84.cmp.not = icmp eq i64 %epil.iter84.next, %xtraiter83
  br i1 %epil.iter84.cmp.not, label %..loopexit_crit_edge.i37.i, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, !llvm.loop !10751

..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa:  ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod78.not, label %..loopexit_crit_edge.i37.i, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader
  %.epil.init77 = phi double [ %i.ew, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.hp, %..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 1, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.preheader ], [ %i.hq, %..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter74, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader
  %i.hv = phi double [ %i.ia, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.epil.init77, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %.04.i.i.epil = phi i64 [ %i.ib, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ %.04.i.i.epil.init, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ] ; 2 uses
  %epil.iter75 = phi i64 [ %epil.iter75.next, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil.preheader ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !10747
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hy
  %.val.i36.i.epil = load double, ptr %i.hz, align 8, !alias.scope !10742, !noalias !10745
  %i.ia = fmul double %i.hv, %.val.i36.i.epil     ; 2 uses
  %i.ib = add nuw i64 %.04.i.i.epil, 1
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %xtraiter74
  br i1 %epil.iter75.cmp.not, label %..loopexit_crit_edge.i37.i, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, !llvm.loop !10752

..loopexit_crit_edge.i37.i:                       ; preds = %..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil, %..loopexit_crit_edge.i37.i.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i
  %.us-phi.i.i = phi double [ %i.ht, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.i.epil ], [ %i.fa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.us.i.peel.i ], [ %i.ew, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.peel.i ], [ %i.gb, %..loopexit_crit_edge.i37.i.loopexit.unr-lcssa ], [ %i.hp, %..loopexit_crit_edge.i37.i.loopexit50.unr-lcssa ], [ %i.ia, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit23.i.i.epil ]
  store double %.us-phi.i.i, ptr %i.er, align 8, !tbaa !10674, !alias.scope !10745, !noalias !10742
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.s, %bb.n, %..loopexit_crit_edge.i37.i, %.preheader.i34.i, %.preheader1.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.if = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 4294967297
  %i.ih = trunc i64 %i.if to i32                  ; 2 uses
  br i1 %i.ig, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ie, align 8, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.ii, align 4, !tbaa !52
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !47
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #27, !inline_history !10753
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !47
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #27, !inline_history !10753
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ih, %bb.w ], [ %i.ir, %bb.x ]
  %i.is = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.is, label %bb.y, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !54

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.u, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 4 uses
  %i.iw = load atomic i64, ptr %i.iv acquire, align 8 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 4294967297
  %i.iy = trunc i64 %i.iw to i32                  ; 2 uses
  br i1 %i.ix, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.iv, align 8, !tbaa !50
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !52
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !47
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #27, !inline_history !10754
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !47
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #27, !inline_history !10754
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jh = add nsw i32 %i.iy, -1
  store i32 %i.jh, ptr %i.iv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ji = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.iy, %bb.ac ], [ %i.ji, %bb.ad ]
  %i.jj = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jj, label %bb.ae, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !54

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.aa, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.af:                                            ; preds = %bb.j, %bb.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.jk

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod70.not, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.preheader
  %.epil.init69 = phi double [ %i.l, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.preheader ], [ %i.z, %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter66, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil.preheader
  %i.jl = phi double [ %i.jm, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil ], [ %.epil.init69, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil.preheader ]
  %epil.iter67 = phi i64 [ %epil.iter67.next, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil ], [ 0, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil.preheader ]
  %.val.i.i.epil = load double, ptr %i.g, align 8
  %i.jm = fmul double %i.jl, %.val.i.i.epil       ; 2 uses
  store double %i.jm, ptr %i.h, align 8, !tbaa !10674
  %epil.iter67.next = add i64 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i64 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.epil, !llvm.loop !10755

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit53.unr-lcssa: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod64.not, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil.preheader

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil.preheader: ; preds = %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit53.unr-lcssa, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.preheader.i.i
  %.epil.init = phi double [ %.pre.i.i, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.preheader.i.i ], [ %i.u, %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_112ProductStateEdNS2_15ProductFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit.loopexit53.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter62, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil

_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil: ; preds = %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil.preheader
  %i.jn = phi double [ %i.jo, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil ], [ %.epil.init, %_ZN6duckdb12_GLOBAL__N_115ProductFunction9OperationIdNS0_12ProductStateES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.epil.preheader ]
end_hunk_24
