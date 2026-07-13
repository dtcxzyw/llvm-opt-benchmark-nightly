inline.NumInlined: 24506
inline.NumDeleted: 9549
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE10ResolvePhiIZNSK_22AssembleOutputGraphPhiERKNS2_5PhiOpEEUlNS2_7OpIndexEiiE_EESP_SO_OT_NS2_22RegisterRepresentationE:bb.a
  br i1 %.not.i.i81, label %bb.m, label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 2336
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bm ; 2 uses
  %.sroa.02.0.copyload.i.i.i83 = load ptr, ptr %i.bt, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i84 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.2.0.copyload.i.i.i85 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i84, align 8
  %i.bu = icmp eq i32 %.057129, -1
  %i.bv = trunc nuw i8 %.sroa.2.0.copyload.i.i.i85 to i1 ; 2 uses
  br i1 %i.bu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.bv, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86: ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i83, i64 16
  %.sroa.02.0.copyload.i10.i.i87 = load i32, ptr %i.bw, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88

bb.p:                                             ; preds = %bb.m
  br i1 %i.bv, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i: ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i83, i64 20
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = icmp eq i32 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i83, i64 16
  %i.cb = add i32 %i.by, %.057129
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 1976
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cc
  %.0.i.i.i.i = select i1 %i.bz, ptr %i.ca, ptr %i.cf
  %.sroa.02.0.copyload.i12.i.i = load i32, ptr %.0.i.i.i.i, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88: ; preds = %bb.l, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i
  %.sroa.014.0.i.i82 = phi i32 [ %i.bq, %bb.l ], [ %.sroa.02.0.copyload.i12.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i ], [ %.sroa.02.0.copyload.i10.i.i87, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i86 ]
  %i.cg = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.av, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, !prof !14

bb.r:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i = load ptr, ptr %i.au, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit: ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88, %bb.r
  %i.cj = phi ptr [ %.pre.i.i, %bb.r ], [ %i.cg, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit88 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.ck, ptr %i.au, align 8
  store i32 %.sroa.014.0.i.i82, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.055130, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = add nsw i32 %.057129, -1
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit, %bb.k, %.lr.ph
  %.158 = phi i32 [ %i.cn, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit ], [ %.057129, %bb.k ], [ %.057129, %.lr.ph ]
  %.156 = phi ptr [ %i.cm, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit ], [ %.055130, %bb.k ], [ null, %.lr.ph ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0131, i64 64
  %i.cp = icmp eq i64 %.sroa.0105.0.add, 8
  br i1 %i.cp, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %._crit_edge
  %i.cq = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %.1132 = load ptr, ptr %i.cr, align 8           ; 2 uses
  %.not62133 = icmp eq ptr %.1132, null
  br i1 %.not62133, label %._crit_edge138, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.ct = load i32, ptr %i.cs, align 8
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %.lr.ph137
  %.1135 = phi ptr [ %.1, %.lr.ph137 ], [ %.1132, %.lr.ph137.preheader ] ; 2 uses
  %.061.in134 = phi i32 [ %.061, %.lr.ph137 ], [ %i.ct, %.lr.ph137.preheader ]
  %.061 = add i32 %.061.in134, -1                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1135, i64 96
  store i32 %.061, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.1135, i64 64
  %.1 = load ptr, ptr %i.cv, align 8              ; 2 uses
  %.not62 = icmp eq ptr %.1, null
  br i1 %.not62, label %._crit_edge138, label %.lr.ph137, !llvm.loop !601

._crit_edge138:                                   ; preds = %.lr.ph137, %bb.t
  %i.cw = load ptr, ptr %4, align 8
  store ptr %i.cw, ptr %i.au, align 8
  %i.cx = load ptr, ptr %i.y, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %.2139 = load ptr, ptr %i.cy, align 8           ; 2 uses
  %.not63140 = icmp eq ptr %.2139, null
  br i1 %.not63140, label %.loopexit, label %.lr.ph144

.lr.ph144:                                        ; preds = %._crit_edge138, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101
  %.2142 = phi ptr [ %.2, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101 ], [ %.2139, %._crit_edge138 ] ; 2 uses
  %.259141 = phi i32 [ %i.eg, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101 ], [ %i.bc, %._crit_edge138 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2142, i64 88
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dd
  %.sroa.04.0.copyload = load i32, ptr %i.de, align 4
  %i.df = load ptr, ptr %2, align 8               ; 3 uses
  %i.dg = lshr i32 %.sroa.04.0.copyload, 4
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2232
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %.not.i.i89 = icmp eq i32 %i.dl, -1
  br i1 %.not.i.i89, label %bb.u, label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99

bb.u:                                             ; preds = %.lr.ph144
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 2336
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dh ; 2 uses
  %.sroa.02.0.copyload.i.i.i91 = load ptr, ptr %i.do, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i92 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.2.0.copyload.i.i.i93 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i92, align 8
  %i.dp = icmp eq i32 %.259141, -1
  %i.dq = trunc nuw i8 %.sroa.2.0.copyload.i.i.i93 to i1 ; 2 uses
  br i1 %i.dp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.dq, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97: ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i91, i64 16
  %.sroa.02.0.copyload.i10.i.i98 = load i32, ptr %i.dr, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99

bb.x:                                             ; preds = %bb.u
  br i1 %i.dq, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94: ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i91, i64 20
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = icmp eq i32 %i.dt, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i91, i64 16
  %i.dw = add i32 %i.dt, %.259141
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 1976
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dx
  %.0.i.i.i.i95 = select i1 %i.du, ptr %i.dv, ptr %i.ea
  %.sroa.02.0.copyload.i12.i.i96 = load i32, ptr %.0.i.i.i.i95, align 4
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99: ; preds = %.lr.ph144, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94
  %.sroa.014.0.i.i90 = phi i32 [ %i.dl, %.lr.ph144 ], [ %.sroa.02.0.copyload.i12.i.i96, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit11.i.i94 ], [ %.sroa.02.0.copyload.i10.i.i98, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i97 ]
  %i.eb = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.av, align 8
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.z, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101, !prof !14

bb.z:                                             ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  %.pre.i.i100 = load ptr, ptr %i.au, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101: ; preds = %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99, %bb.z
  %i.ee = phi ptr [ %.pre.i.i100, %bb.z ], [ %i.eb, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit99 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.ef, ptr %i.au, align 8
  store i32 %.sroa.014.0.i.i90, ptr %i.ee, align 4
  %i.eg = add nsw i32 %.259141, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %.2142, i64 64
  %.2 = load ptr, ptr %i.eh, align 8              ; 2 uses
  %.not63 = icmp eq ptr %.2, null
  br i1 %.not63, label %.loopexit, label %.lr.ph144, !llvm.loop !602

.loopexit:                                        ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE9push_backES5_.exit101, %._crit_edge138, %._crit_edge
  %i.ei = load ptr, ptr %i.au, align 8            ; 6 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = load ptr, ptr %4, align 8               ; 12 uses
  %i.el = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.em = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.en = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4
  br i1 %i.ep, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %.sroa.054.0.copyload = load i32, ptr %i.ek, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.eq = icmp ne ptr %i.ek, %i.ei
  %.012.i.i = getelementptr inbounds i8, ptr %i.ei, i64 -4 ; 5 uses
  %i.er = icmp ult ptr %i.ek, %.012.i.i
  %or.cond.i.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.es = add i64 %i.em, -8
  %i.et = add i64 %i.en, 4
  %umax160 = call i64 @llvm.umax.i64(i64 %i.es, i64 %i.et)
  %5 = sub i64 %umax160, %i.en                    ; 2 uses
  %i.eu = icmp ne i64 %5, 4
  %umin161 = zext i1 %i.eu to i64                 ; 2 uses
  %6 = sub i64 %5, %umin161
  %7 = add i64 %6, -4
  %i.ev = lshr i64 %7, 3
  %i.ew = add nuw nsw i64 %i.ev, %umin161         ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ew, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ey = add i64 %i.ej, -8
  %i.ez = add i64 %i.el, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = add i64 %umax, -4                       ; 2 uses
  %i.fb = icmp ne i64 %i.fa, %i.el
  %umin = zext i1 %i.fb to i64                    ; 2 uses
  %i.fc = add i64 %i.el, %umin
  %i.fd = sub i64 %i.fa, %i.fc
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = add nuw nsw i64 %i.fe, %umin
  %i.fg = shl nuw i64 %i.ff, 2                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ek, i64 %i.fg
  %scevgep = getelementptr i8, ptr %i.fh, i64 4
  %i.fi = sub nuw nsw i64 -4, %i.fg
  %scevgep159 = getelementptr i8, ptr %i.ei, i64 %i.fi
  %bound0 = icmp ult ptr %i.ek, %i.ei
  %bound1 = icmp ult ptr %scevgep159, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ex, 9223372036854775800     ; 4 uses
  %i.fj = mul i64 %n.vec, -4
  %i.fk = getelementptr i8, ptr %.012.i.i, i64 %i.fj
  %i.fl = shl i64 %n.vec, 2
  %i.fm = getelementptr i8, ptr %i.ek, i64 %i.fl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fn = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.012.i.i, i64 %i.fn ; 2 uses
  %i.fo = shl i64 %index, 2
  %next.gep162 = getelementptr i8, ptr %i.ek, i64 %i.fo ; 3 uses
  %i.fp = getelementptr i8, ptr %next.gep162, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep162, align 4, !alias.scope !603, !noalias !606
  %wide.load163.a = load <4 x i32>, ptr %i.fp, align 4, !alias.scope !603, !noalias !606
  %i.fq = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load164 = load <4 x i32>, ptr %i.fq, align 4, !alias.scope !606
  %wide.load165 = load <4 x i32>, ptr %i.fr, align 4, !alias.scope !606
  %reverse = shufflevector <4 x i32> %wide.load164, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse166.a = shufflevector <4 x i32> %wide.load165, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep162, align 4, !alias.scope !603, !noalias !606
  store <4 x i32> %reverse166.a, ptr %i.fp, align 4, !alias.scope !603, !noalias !606
  %reverse167 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse168 = shufflevector <4 x i32> %wide.load163.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse167, ptr %i.fq, align 4, !alias.scope !606
  store <4 x i32> %reverse168, ptr %i.fr, align 4, !alias.scope !606
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, label %.lr.ph.i.i.preheader170

.lr.ph.i.i.preheader170:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %.012.i.i, %vector.memcheck ], [ %.012.i.i, %.lr.ph.i.i.preheader ], [ %i.fk, %middle.block ]
  %.0913.i.i.ph = phi ptr [ %i.ek, %vector.memcheck ], [ %i.ek, %.lr.ph.i.i.preheader ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader170, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.fu, %.lr.ph.i.i ], [ %.0913.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.0913.i.i, align 4
  %i.ft = load i32, ptr %.014.i.i, align 4
  store i32 %i.ft, ptr %.0913.i.i, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 4 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -4 ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %.0.i.i
  br i1 %i.fv, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, !llvm.loop !609

_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load ptr, ptr %4, align 8               ; 2 uses
  %.pre145 = load ptr, ptr %i.au, align 8
  %.pre146 = ptrtoint ptr %.pre145 to i64
  %.pre147 = ptrtoint ptr %.pre to i64
  %.pre149 = sub i64 %.pre146, %.pre147
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit: ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit, %bb.ab
  %.pre-phi150 = phi i64 [ %.pre149, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit ], [ %i.eo, %bb.ab ]
  %i.fw = phi ptr [ %.pre, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit.loopexit ], [ %i.ek, %bb.ab ]
  %i.fx = ashr exact i64 %.pre-phi150, 2
  %i.fy = call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE9ReducePhiENSA_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(1688) %0, ptr %i.fw, i64 %i.fx, i8 %3)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit, %bb.aa
  %.sroa.054.1 = phi i32 [ %.sroa.054.0.copyload, %bb.aa ], [ %i.fy, %_ZSt7reverseIPN2v88internal8compiler10turboshaft7OpIndexEEvT_S6_.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit

_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit: ; preds = %bb.ac, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit76, %bb.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, %bb.b
  %.sroa.054.3 = phi i32 [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ], [ %i.k, %bb.b ], [ %.sroa.054.1, %bb.ac ], [ %.sroa.014.0.i.i70, %_ZZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE22AssembleOutputGraphPhiERKNS2_5PhiOpEENKUlNS2_7OpIndexEiiE_clESO_ii.exit76 ], [ %i.as, %bb.i ]
  ret i32 %.sroa.054.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20ReducerBaseForwarderINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE26ReduceInputGraphFrameStateENS2_7OpIndexERKNS2_12FrameStateOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.1233", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = zext i16 %i.c to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !alias.scope !610
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !610
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !610
  %.idx.i = shl nuw nsw i64 %i.d, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not11.i = icmp eq i16 %i.c, 0
  br i1 %.not11.i, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2336
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i, %.lr.ph.i
  %.012.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.z, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.012.i, align 4, !noalias !610
  %i.l = lshr i32 %.sroa.02.0.copyload.i, 4
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = load ptr, ptr %i.j, align 8, !noalias !610
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, -1
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !noalias !610
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.s = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.s, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.c
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.t, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, %bb.b
  %.sroa.014.0.i.i = phi i32 [ %i.p, %bb.b ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.u = load ptr, ptr %i.f, align 8, !alias.scope !610 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !alias.scope !610
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i, !prof !14

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !610
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i
  %i.x = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.u, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.f, align 8, !alias.scope !610
  store i32 %.sroa.014.0.i.i, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.i
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit.loopexit, label %bb.b

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE9push_backES5_.exit.i
  %.pre = load ptr, ptr %3, align 8
  %.pre3 = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit.loopexit, %bb.a
  %i.aa = phi ptr [ %.pre3, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit.loopexit ], [ %i.e, %bb.a ]
  %i.ab = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILm32EEENSA_11SmallVectorINS2_7OpIndexEXT_ESaISN_EEENSA_6VectorIKSN_EE.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !range !5, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
