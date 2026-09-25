Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Morphology?download=true
inline.NumInlined: 68333
inline.NumDeleted: 20965
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 335
loop-unroll.NumUnrolled: 1703
begin_hunk_0_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %i.ch = load i64, ptr %.013.i.i.i28, align 8, !tbaa !513, !noalias !5311 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !513, !noalias !5311 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !513, !noalias !5311 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !513, !noalias !5311 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cp = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cp, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !112

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader84.3
  %i.cq = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245: ; preds = %.preheader84.2
  %i.cr = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248: ; preds = %.preheader84.1
  %i.cs = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader84, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader84 ]
  %.lcssa227 = phi i64 [ %i.cj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cl, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.cn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ch, %.preheader84 ]
  %i.ct = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cu = xor i64 %.lcssa227, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = or disjoint i32 %i.ct, %i.cw            ; 2 uses
  %.not8099 = icmp eq i32 %i.cx, 32768
  br i1 %.not8099, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0100 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cy = zext i32 %.sroa.4.0100 to i64           ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cy
  %i.db = load i8, ptr %i.da, align 1, !tbaa !514, !range !512, !noundef !528
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !485
  %i.dc = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.dd = lshr i32 %i.dc, 6                       ; 3 uses
  %i.de = icmp ugt i32 %i.dc, 32767
  br i1 %i.de, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !513 ; 2 uses
  %i.dj = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.di, %i.dk
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dl, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = xor i64 %i.di, -1
  %i.dn = shl nsw i64 -1, %i.dj
  %i.do = and i64 %i.dn, %i.dm                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.do, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i43192 = icmp eq i32 %i.dd, 511
  br i1 %exitcond.not.i.i.i.i43192, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph194
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !113

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dg, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !513 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !113

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph194
  %i.dr = xor i64 %i.dq, -1
  %i.ds = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i44 to i32
  br label %.critedge.i.i.i.i37

.critedge.i.i.i.i37:                              ; preds = %.critedge.loopexit.i.i.i.i46, %bb.k
  %.016.lcssa.i.i.i.i38 = phi i32 [ %i.dd, %bb.k ], [ %i.ds, %.critedge.loopexit.i.i.i.i46 ]
  %.0.lcssa.i.i.i.i39 = phi i64 [ %i.do, %bb.k ], [ %i.dr, %.critedge.loopexit.i.i.i.i46 ]
  %i.dt = shl nuw nsw i32 %.016.lcssa.i.i.i.i38, 6
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i39, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = or disjoint i32 %i.dt, %i.dv
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dw, %.critedge.i.i.i.i37 ], [ %i.dc, %bb.j ] ; 2 uses
  %.not80 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not80, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph104, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ee, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %i.dx = load i64, ptr %.013.i.i.i48, align 8, !tbaa !513, !noalias !5312 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !513, !noalias !5312 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !513, !noalias !5312 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !513, !noalias !5312 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.ef = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.ef, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !47

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eg = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269: ; preds = %bb.n
  %i.eh = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272: ; preds = %bb.m
  %i.ei = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.eg, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa210 = phi i64 [ %i.dz, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.eb, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.ed, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dx, %bb.l ]
  %i.ej = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.ek = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa210, i1 true)
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = or disjoint i32 %i.ej, %i.el            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !1628, !alias.scope !5312
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !alias.scope !5312
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !5312
  %.not82105 = icmp eq i32 %i.em, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit
  %i.eo = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #29 ; 15 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !1630 ; 4 uses
  %i.er = shl i32 %i.eq, 7
  %i.es = and i32 %i.er, 3968
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 270336
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 270344
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !464
  %i.ew = add nsw i32 %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, i8 0, i64 33792, i1 false)
  %i.ey = and i32 %i.ew, -128
  %4 = shl i32 %i.eq, 2
  %5 = lshr i32 %i.eq, 3
  %i.ez = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.fa = insertelement <2 x i32> %i.ez, i32 %4, i64 1
  %i.fb = and <2 x i32> %i.fa, <i32 536870784, i32 3968>
  %i.fc = load <2 x i32>, ptr %i.et, align 8, !tbaa !464
  %i.fd = add nsw <2 x i32> %i.fb, %i.fc
  %i.fe = and <2 x i32> %i.fd, splat (i32 -128)
  store <2 x i32> %i.fe, ptr %i.ex, align 8, !tbaa !464
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 33800
  store i32 %i.ey, ptr %i.ff, align 8, !tbaa !464
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 33804
  store i32 0, ptr %i.fg, align 4, !tbaa !1623
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i8 %i.p, ptr %i.fh, align 8, !tbaa !485
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i8 %i.p, ptr %i.fj, align 8, !tbaa !485
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i8 %i.p, ptr %i.fl, align 8, !tbaa !485
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i8 %i.p, ptr %i.fn, align 8, !tbaa !485
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store i8 %i.p, ptr %i.fp, align 8, !tbaa !485
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  store i8 %i.p, ptr %i.fr, align 8, !tbaa !485
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  store i8 %i.p, ptr %i.ft, align 8, !tbaa !485
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  store i8 %i.p, ptr %i.fv, align 8, !tbaa !485
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, label %bb.r, !llvm.loop !5308

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit: ; preds = %bb.r
  %i.fw = zext i32 %i.eq to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fw
  store ptr %i.eo, ptr %i.fx, align 8, !tbaa !485
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fy = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1629 ; 2 uses
  %i.fz = load i32, ptr %i.en, align 8, !tbaa !1630
  %i.ga = add i32 %i.fz, 1                        ; 4 uses
  %i.gb = lshr i32 %i.ga, 6                       ; 3 uses
  %i.gc = icmp ugt i32 %i.ga, 32767
  br i1 %i.gc, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit
  %i.gd = and i32 %i.ga, 63
  %i.ge = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !513 ; 2 uses
  %i.gh = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = and i64 %i.gg, %i.gi
  %.not.i.i.i.i57 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i.i57, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.gk = shl nsw i64 -1, %i.gh
  %i.gl = and i64 %i.gg, %i.gk                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.t
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.gb, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !48

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.ge, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next.i.i.i.i65
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !513 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !48

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.go = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.t
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.gb, %bb.t ], [ %i.go, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.gl, %bb.t ], [ %i.gn, %.critedge.loopexit.i.i.i.i66 ]
  %i.gp = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.gq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = or disjoint i32 %i.gp, %i.gr
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gs, %.critedge.i.i.i.i59 ], [ %i.ga, %bb.s ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.en, align 8, !tbaa !1630
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !5309

bb.u:                                             ; preds = %.lr.ph106
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 33808) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gt, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE22_M_emplace_hint_uniqueIJS3_NSE_4TileEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1606
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i16, ptr %3, align 1
  store i16 %i.e, ptr %i.d, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISG_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i32, ptr %i.b, align 8, !tbaa !464  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !464  ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !464  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !464  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !464
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !464
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !646
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !646
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

declare noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #4

end_hunk_0
