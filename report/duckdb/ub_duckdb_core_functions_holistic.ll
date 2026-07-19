inline.NumInlined: 37317
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN6duckdb16QuantileSortTreeC2ERNS_18AggregateInputDataERKNS_20WindowPartitionInputE:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !335 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.bf, null
  br i1 %.not.i1.i, label %_ZN6duckdb16BoundOrderByNodeD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(88) %i.bf) #30, !inline_history !2351
  br label %_ZN6duckdb16BoundOrderByNodeD2Ev.exit

_ZN6duckdb16BoundOrderByNodeD2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i
  %i.bj = load ptr, ptr %12, align 8, !tbaa !335  ; 3 uses
  %.not.i93 = icmp eq ptr %i.bj, null
  br i1 %.not.i93, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb16BoundOrderByNodeD2Ev.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(88) %i.bj) #30, !inline_history !2352
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb16BoundOrderByNodeD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.bn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %.noexc94 unwind label %bb.av  ; 3 uses

.noexc94:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.bn, ptr %13, align 8, !tbaa !130
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !207
  store i64 0, ptr %i.bn, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !129
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !2353
  %i.bt = load ptr, ptr %2, align 8, !tbaa !2354, !nonnull !235, !align !683
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2355, !nonnull !235, !align !683
  %i.bv = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #31
          to label %.noexc95 unwind label %bb.aw  ; 3 uses

.noexc95:                                         ; preds = %.noexc94
  invoke void @_ZN6duckdb15WindowIndexTreeC1ERNS_13ClientContextERKNS_18BoundOrderModifierERKNS_6vectorImLb1ESaImEEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.bv, ptr noundef nonnull align 8 dereferenceable(512) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.bs)
          to label %_ZN6duckdb9make_uniqINS_15WindowIndexTreeEJRNS_13ClientContextERNS_18BoundOrderModifierERNS_6vectorImLb1ESaImEEERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.v, !noalias !2361

bb.v:                                             ; preds = %.noexc95
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #34, !noalias !2361
  br label %.body96

_ZN6duckdb9make_uniqINS_15WindowIndexTreeEJRNS_13ClientContextERNS_18BoundOrderModifierERNS_6vectorImLb1ESaImEEERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc95
  %i.bx = load ptr, ptr %0, align 8, !tbaa !2078  ; 3 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !2078
  %.not.i.i.i.i.i98 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i98, label %_ZNSt10unique_ptrIN6duckdb15WindowIndexTreeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_15WindowIndexTreeEJRNS_13ClientContextERNS_18BoundOrderModifierERNS_6vectorImLb1ESaImEEERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(240) %i.bx) #30, !inline_history !2364
  br label %_ZNSt10unique_ptrIN6duckdb15WindowIndexTreeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15WindowIndexTreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_15WindowIndexTreeEJRNS_13ClientContextERNS_18BoundOrderModifierERNS_6vectorImLb1ESaImEEERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.cb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.w unwind label %bb.ax      ; 2 uses

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15WindowIndexTreeESt14default_deleteIS1_EED2Ev.exit
  %i.cc = load ptr, ptr %2, align 8, !tbaa !2354, !nonnull !235, !align !683
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.596") align 8 %14, ptr noundef nonnull align 8 dereferenceable(240) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.x unwind label %bb.ax

bb.x:                                             ; preds = %bb.w
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.y unwind label %bb.ay      ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1975, !nonnull !235, !align !683 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.z

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

bb.z:                                             ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cj) #30
  br label %.body100

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.backedge, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.co = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %i.co, label %bb.ab, label %bb.bf

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i64, ptr %i.ck, align 8, !tbaa !2365 ; 3 uses
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !58
  %.not.i102 = icmp eq ptr %i.cq, null
  br i1 %.not.i102, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !2266, !nonnull !235, !align !683
  %i.cs = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i64 noundef 0)
          to label %_ZNK6duckdb6vectorIbLb1ESaIbEEixEm.exit unwind label %bb.az

_ZNK6duckdb6vectorIbLb1ESaIbEEixEm.exit:          ; preds = %bb.ac
  br i1 %i.cs, label %bb.be, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb6vectorIbLb1ESaIbEEixEm.exit, %bb.ab
  %i.ct = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 0)
          to label %bb.ae unwind label %bb.ba     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ct)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit unwind label %bb.bb

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit: ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 2 uses
  %i.cv = load i64, ptr %i.cm, align 8, !tbaa !2366 ; 8 uses
  %.not154 = icmp eq i64 %i.cv, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 2 uses
  %.not.i110 = icmp eq ptr %i.cw, null
  %i.cx = load ptr, ptr %15, align 8              ; 4 uses
  br i1 %.not.i110, label %.lr.ph.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !58 ; 2 uses
  %.not.i111.us = icmp eq ptr %i.cy, null
  br i1 %.not.i111.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %min.iters.check = icmp ult i64 %i.cv, 16
  br i1 %min.iters.check, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader200, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader
  %i.cz = add i64 %i.cv, -1                       ; 2 uses
  %i.da = and i64 %i.cz, 4294967295
  %i.db = icmp eq i64 %i.da, 4294967295
  %i.dc = icmp ugt i64 %i.cz, 4294967295
  %i.dd = or i1 %i.db, %i.dc
  br i1 %i.dd, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader200, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cv, 8589934584              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %vec.ind, ptr %i.de, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.df, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !2367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader200

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader200: ; preds = %vector.scevcheck, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader, %middle.block
  %.039151.us.us.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader200, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us
  %.039151.us.us = phi i64 [ %i.dh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us ], [ %.039151.us.us.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us.preheader200 ] ; 3 uses
  %indvars157 = trunc i64 %.039151.us.us to i32
  %i.dh = add i64 %.039151.us.us, 1               ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.039151.us.us
  store i32 %indvars157, ptr %i.di, align 4, !tbaa !3
  %i.dj = and i64 %i.dh, 4294967295
  %i.dk = icmp ugt i64 %i.cv, %i.dj
  br i1 %i.dk, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us, label %._crit_edge, !llvm.loop !2368

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %.lr.ph.split.us, %bb.af
  %i.dl = phi i64 [ %17, %bb.af ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.0152.us = phi i32 [ %16, %bb.af ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.039151.us = phi i64 [ %.1.us, %bb.af ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.dm = lshr i64 %i.dl, 6
  %i.dn = and i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dm
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !59
  %i.dq = shl nuw i64 1, %i.dn
  %i.dr = and i64 %i.dp, %i.dq
  %.not150.us = icmp eq i64 %i.dr, 0
  br i1 %.not150.us, label %bb.af, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us
  %i.ds = add i64 %.039151.us, 1
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.039151.us
  store i32 %.0152.us, ptr %i.dt, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us
  %.1.us = phi i64 [ %i.ds, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread.us ], [ %.039151.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us ] ; 2 uses
  %16 = add i32 %.0152.us, 1                      ; 2 uses
  %17 = zext i32 %16 to i64                       ; 2 uses
  %i.du = icmp ugt i64 %i.cv, %17
  br i1 %i.du, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, label %._crit_edge, !llvm.loop !2369

._crit_edge:                                      ; preds = %bb.bc, %bb.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us, %middle.block, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit
  %.039.lcssa = phi i64 [ 0, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit ], [ %.1.us, %bb.af ], [ %i.dh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.us ], [ %n.vec, %middle.block ], [ %.1, %bb.bc ]
  %i.dv = load ptr, ptr %2, align 8, !tbaa !2354, !nonnull !235, !align !683
  invoke void @_ZN6duckdb29WindowMergeSortTreeLocalState4SinkERNS_16ExecutionContextERNS_9DataChunkEmNS_12optional_ptrINS_15SelectionVectorELb1EEEmRNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 noundef %i.cp, ptr nonnull %15, i64 noundef %.039.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.backedge unwind label %bb.bd

_ZN6duckdb15SelectionVectorC2Em.exit.backedge:    ; preds = %._crit_edge, %bb.be
  br label %_ZN6duckdb15SelectionVectorC2Em.exit, !llvm.loop !2370

bb.ag:                                            ; preds = %bb.a
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

bb.ai:                                            ; preds = %bb.g
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorImSaImEED2Ev.exit106, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

bb.ak:                                            ; preds = %bb.j
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

bb.al:                                            ; preds = %bb.k
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.m, %bb.l
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.n
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.ee, %bb.ao ], [ %i.aj, %bb.p ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #30
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.an
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ed, %bb.an ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %i.ec, %bb.am ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aq ], [ %i.eb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

bb.as:                                            ; preds = %bb.s
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16BoundOrderByNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn67 = phi { ptr, i32 } [ %i.eg, %bb.at ], [ %i.ef, %bb.as ]
  %i.eh = load ptr, ptr %12, align 8, !tbaa !335  ; 3 uses
  %.not.i107 = icmp eq ptr %i.eh, null
  br i1 %.not.i107, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit109, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i108

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i108: ; preds = %bb.au
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(88) %i.eh) #30, !inline_history !2352
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit109

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit109: ; preds = %bb.au, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.thread145

bb.av:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit128

bb.aw:                                            ; preds = %.noexc94
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body96

bb.ax:                                            ; preds = %bb.w, %_ZNSt10unique_ptrIN6duckdb15WindowIndexTreeESt14default_deleteIS1_EED2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit126

bb.ay:                                            ; preds = %bb.x
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.az:                                            ; preds = %bb.ac, %bb.be
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ba:                                            ; preds = %bb.ad
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bb:                                            ; preds = %bb.ae
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %bb.bc
  %i.es = phi i64 [ %19, %bb.bc ], [ 0, %.lr.ph ] ; 3 uses
  %.0152 = phi i32 [ %18, %bb.bc ], [ 0, %.lr.ph ] ; 2 uses
  %.039151 = phi i64 [ %.1, %bb.bc ], [ 0, %.lr.ph ] ; 4 uses
  %i.et = add i64 %i.es, %i.cp                    ; 2 uses
  %i.eu = lshr i64 %i.et, 6
  %i.ev = and i64 %i.et, 63
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !59
  %i.ey = shl nuw i64 1, %i.ev
  %i.ez = and i64 %i.ex, %i.ey
  %.not = icmp eq i64 %i.ez, 0
  br i1 %.not, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.fa = load ptr, ptr %i.cu, align 8, !tbaa !58 ; 2 uses
  %.not.i111 = icmp eq ptr %i.fa, null
  br i1 %.not.i111, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.fb = lshr i64 %i.es, 6
  %i.fc = and i64 %i.es, 63
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !59
  %i.ff = shl nuw i64 1, %i.fc
  %i.fg = and i64 %i.fe, %i.ff
  %.not150 = icmp eq i64 %i.fg, 0
  br i1 %.not150, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113
  %i.fh = add i64 %.039151, 1
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.039151
  store i32 %.0152, ptr %i.fi, align 4, !tbaa !3
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread
  %.1 = phi i64 [ %i.fh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113.thread ], [ %.039151, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit113 ], [ %.039151, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %18 = add i32 %.0152, 1                         ; 2 uses
  %19 = zext i32 %18 to i64                       ; 2 uses
  %i.fj = icmp ugt i64 %i.cv, %19
  br i1 %i.fj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, label %._crit_edge, !llvm.loop !2369

bb.bd:                                            ; preds = %._crit_edge
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.be:                                            ; preds = %_ZNK6duckdb6vectorIbLb1ESaIbEEixEm.exit
  %i.fl = load ptr, ptr %2, align 8, !tbaa !2354, !nonnull !235, !align !683
  invoke void @_ZN6duckdb29WindowMergeSortTreeLocalState4SinkERNS_16ExecutionContextERNS_9DataChunkEmNS_12optional_ptrINS_15SelectionVectorELb1EEEmRNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 noundef %i.cp, ptr null, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.backedge unwind label %bb.az

bb.bf:                                            ; preds = %bb.aa
  %i.fm = load ptr, ptr %2, align 8, !tbaa !2354, !nonnull !235, !align !683
  invoke void @_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.bg unwind label %.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fp, align 8, !tbaa !48
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !50
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !51
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #30, !inline_history !631
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #30, !inline_history !631
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i114 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i.i114, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i = phi i32 [ %i.fs, %bb.bk ], [ %i.gc, %bb.bl ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gd, label %bb.bm, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !54

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ge = load ptr, ptr %14, align 8, !tbaa !2371 ; 3 uses
  %.not.i115 = icmp eq ptr %i.ge, null
  br i1 %.not.i115, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !51
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ge) #30, !inline_history !2373
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.gi = load ptr, ptr %13, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorImSaImEED2Ev.exit117, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gi) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit117

_ZNSt6vectorImSaImEED2Ev.exit117:                 ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb18BoundOrderModifierE, i64 16), ptr %10, align 8, !tbaa !51
  %i.gj = load ptr, ptr %i.as, align 8, !tbaa !2374 ; 3 uses
  %i.gk = load ptr, ptr %i.at, align 8, !tbaa !2345 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gj, %i.gk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit117, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gs, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i.i ], [ %i.gj, %_ZNSt6vectorImSaImEED2Ev.exit117 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !2349 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.gm) #30, !inline_history !2375
  call void @_ZdlPv(ptr noundef nonnull %i.gm) #34, !inline_history !2375
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !335 ; 3 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !51
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(88) %i.go) #30, !inline_history !2376
  br label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.gs, %i.gk
  br i1 %.not.i.i.i.i118, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2377

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.as, align 8, !tbaa !2374
  br label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorImSaImEED2Ev.exit117
  %i.gt = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.gj, %_ZNSt6vectorImSaImEED2Ev.exit117 ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gt) #34, !inline_history !2375
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bo, %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZN6duckdb19BoundResultModifierD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(40) %10) #30, !inline_history !2375
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.gu = load ptr, ptr %i.k, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i120, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gu) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !2200 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i ], [ %i.gv, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %i.gw = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gx) #30
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2201

_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !2202
  %i.gz = load i64, ptr %i.g, align 8, !tbaa !2203
  %i.ha = shl i64 %i.gz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gy, i8 0, i64 %i.ha, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.hb = load ptr, ptr %i.e, align 8, !tbaa !2202 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.f
  br i1 %i.hc, label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.hb) #34
  br label %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i

_ZN6duckdb20ChunkManagementStateD2Ev.exit.i:      ; preds = %bb.bq, %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i1.i, label %_ZN6duckdb19ColumnDataScanStateD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load atomic i64, ptr %i.hf acquire, align 8 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 4294967297
  %i.hi = trunc i64 %i.hg to i32                  ; 2 uses
  br i1 %i.hh, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.hf, align 8, !tbaa !48
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 0, ptr %i.hj, align 4, !tbaa !50
end_hunk_0
