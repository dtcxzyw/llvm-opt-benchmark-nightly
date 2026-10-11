Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bz, %bb.h ], [ %i.cc, %.critedge.loopexit.i.i.i.i ]
  %i.ce = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ch, %.critedge.i.i.i.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.cp, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cq, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !10711 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1156, !noalias !10711 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1156, !noalias !10711 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1156, !noalias !10711 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader84.3
  %i.cr = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245: ; preds = %.preheader84.2
  %i.cs = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248: ; preds = %.preheader84.1
  %i.ct = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader84, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.ct, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader84 ]
  %.lcssa227 = phi i64 [ %i.ck, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cm, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ci, %.preheader84 ]
  %i.cu = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cv = xor i64 %.lcssa227, -1
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx            ; 2 uses
  %.not8099 = icmp eq i32 %i.cy, 32768
  br i1 %.not8099, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0100 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cz = zext i32 %.sroa.4.0100 to i64           ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cz
  %i.dc = load float, ptr %i.db, align 4, !tbaa !1221
  store float %i.dc, ptr %i.da, align 8, !tbaa !1126
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1156 ; 2 uses
  %i.dk = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dj, %i.dl
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = xor i64 %i.dj, -1
  %i.do = shl nsw i64 -1, %i.dk
  %i.dp = and i64 %i.do, %i.dn                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.dp, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i43192 = icmp eq i32 %i.de, 511
  br i1 %exitcond.not.i.i.i.i43192, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph194
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !99

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph194
  %i.ds = xor i64 %i.dr, -1
  %i.dt = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i44 to i32
  br label %.critedge.i.i.i.i37

.critedge.i.i.i.i37:                              ; preds = %.critedge.loopexit.i.i.i.i46, %bb.k
  %.016.lcssa.i.i.i.i38 = phi i32 [ %i.de, %bb.k ], [ %i.dt, %.critedge.loopexit.i.i.i.i46 ]
  %.0.lcssa.i.i.i.i39 = phi i64 [ %i.dp, %bb.k ], [ %i.ds, %.critedge.loopexit.i.i.i.i46 ]
  %i.du = shl nuw nsw i32 %.016.lcssa.i.i.i.i38, 6
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i39, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dx, %.critedge.i.i.i.i37 ], [ %i.dd, %bb.j ] ; 2 uses
  %.not80 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not80, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph104, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10712)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !10712 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !10712 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1156, !noalias !10712 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1156, !noalias !10712 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eh = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269: ; preds = %bb.n
  %i.ei = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272: ; preds = %bb.m
  %i.ej = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ej, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa210 = phi i64 [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.ec, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dy, %bb.l ]
  %i.ek = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.el = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa210, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = or disjoint i32 %i.ek, %i.em            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !1405, !alias.scope !10712
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !10712
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !10712
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.er, 7
  %5 = and i32 %4, 3968
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.eq, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %10 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ev, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.es, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.et, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !1500
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  store float %i.p, ptr %i.ew, align 8, !tbaa !1126
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store float %i.p, ptr %i.ey, align 8, !tbaa !1126
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store float %i.p, ptr %i.fa, align 8, !tbaa !1126
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store float %i.p, ptr %i.fc, align 8, !tbaa !1126
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store float %i.p, ptr %i.fe, align 8, !tbaa !1126
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store float %i.p, ptr %i.fg, align 8, !tbaa !1126
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store float %i.p, ptr %i.fi, align 8, !tbaa !1126
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store float %i.p, ptr %i.fk, align 8, !tbaa !1126
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit, label %bb.r, !llvm.loop !10708

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit: ; preds = %bb.r
  %i.fl = zext i32 %i.er to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fl
  store ptr %i.ep, ptr %i.fm, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fn = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fo = load i32, ptr %i.eo, align 8, !tbaa !1360
  %i.fp = add i32 %i.fo, 1                        ; 4 uses
  %i.fq = lshr i32 %i.fp, 6                       ; 3 uses
  %i.fr = icmp ugt i32 %i.fp, 32767
  br i1 %i.fr, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit
  %i.fs = and i32 %i.fp, 63
  %i.ft = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !1156 ; 2 uses
  %i.fw = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fv, %i.fx
  %.not.i.i.i.i57 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i.i57, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.fz = shl nsw i64 -1, %i.fw
  %i.ga = and i64 %i.fv, %i.fz                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.t
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.fq, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !41

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.ft, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i.i.i65
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.gd = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.t
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fq, %bb.t ], [ %i.gd, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.ga, %bb.t ], [ %i.gc, %.critedge.loopexit.i.i.i.i66 ]
  %i.ge = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.gf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gh, %.critedge.i.i.i.i59 ], [ %i.fp, %bb.s ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !1360
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !10709

bb.u:                                             ; preds = %.lr.ph106
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gi, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !1334
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i64, ptr %3, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIfNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ch, %.critedge.i.i.i.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.cp, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cq, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !11938 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1156, !noalias !11938 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1156, !noalias !11938 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1156, !noalias !11938 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader84.3
  %i.cr = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250: ; preds = %.preheader84.2
  %i.cs = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253: ; preds = %.preheader84.1
  %i.ct = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader84, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.ct, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader84 ]
  %.lcssa232 = phi i64 [ %i.ck, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253 ], [ %i.cm, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ci, %.preheader84 ]
  %i.cu = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cv = xor i64 %.lcssa232, -1
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx            ; 2 uses
  %.not8099 = icmp eq i32 %i.cy, 32768
  br i1 %.not8099, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0100 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cz = zext i32 %.sroa.4.0100 to i64           ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cz
  %i.dc = load double, ptr %i.db, align 8, !tbaa !1104
  store double %i.dc, ptr %i.da, align 8, !tbaa !1126
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1156 ; 2 uses
  %i.dk = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dj, %i.dl
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = xor i64 %i.dj, -1
  %i.do = shl nsw i64 -1, %i.dk
  %i.dp = and i64 %i.do, %i.dn                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.dp, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i43192 = icmp eq i32 %i.de, 511
  br i1 %exitcond.not.i.i.i.i43192, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph194
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !99

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph194
  %i.ds = xor i64 %i.dr, -1
  %i.dt = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i44 to i32
  br label %.critedge.i.i.i.i37

.critedge.i.i.i.i37:                              ; preds = %.critedge.loopexit.i.i.i.i46, %bb.k
  %.016.lcssa.i.i.i.i38 = phi i32 [ %i.de, %bb.k ], [ %i.dt, %.critedge.loopexit.i.i.i.i46 ]
  %.0.lcssa.i.i.i.i39 = phi i64 [ %i.dp, %bb.k ], [ %i.ds, %.critedge.loopexit.i.i.i.i46 ]
  %i.du = shl nuw nsw i32 %.016.lcssa.i.i.i.i38, 6
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i39, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dx, %.critedge.i.i.i.i37 ], [ %i.dd, %bb.j ] ; 2 uses
  %.not80 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not80, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph104, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11939)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !11939 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !11939 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1156, !noalias !11939 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1156, !noalias !11939 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eh = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274: ; preds = %bb.n
  %i.ei = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277: ; preds = %bb.m
  %i.ej = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ej, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277 ], [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa215 = phi i64 [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277 ], [ %i.ec, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dy, %bb.l ]
  %i.ek = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.el = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa215, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = or disjoint i32 %i.ek, %i.em            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !2152, !alias.scope !11939
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !11939
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !11939
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 11 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %vector.ph203 unwind label %bb.s ; 2 uses

vector.ph203:                                     ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.er, 7
  %5 = and i32 %4, 3968
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.eq, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %10 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ev, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.es, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.et, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !2175
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph203
  %index205 = phi i64 [ 0, %vector.ph203 ], [ %index.next206.3, %vector.body204 ] ; 5 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ew, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.ex, align 8, !tbaa !1126
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ez, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.fa, align 8, !tbaa !1126
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  store <2 x double> %broadcast.splat, ptr %i.fc, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.fd, align 8, !tbaa !1126
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ff, align 8, !tbaa !1126
  store <2 x double> %broadcast.splat, ptr %i.fg, align 8, !tbaa !1126
  %index.next206.3 = add nuw nsw i64 %index205, 16 ; 2 uses
  %i.fh = icmp eq i64 %index.next206.3, 4096
  br i1 %i.fh, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body204, !llvm.loop !11935

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body204
  %i.fi = zext i32 %i.er to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fi
  store ptr %i.ep, ptr %i.fj, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fk = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fl = load i32, ptr %i.eo, align 8, !tbaa !1360
  %i.fm = add i32 %i.fl, 1                        ; 4 uses
  %i.fn = lshr i32 %i.fm, 6                       ; 3 uses
  %i.fo = icmp ugt i32 %i.fm, 32767
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %i.fp = and i32 %i.fm, 63
  %i.fq = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !1156 ; 2 uses
  %i.ft = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fs, %i.fu
  %.not.i.i.i.i57 = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i.i57, label %bb.r, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

bb.r:                                             ; preds = %bb.q
  %i.fw = shl nsw i64 -1, %i.ft
  %i.fx = and i64 %i.fs, %i.fw                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.r
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.fn, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !41

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fq, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i65
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.ga = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.r
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fn, %bb.r ], [ %i.ga, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.fx, %bb.r ], [ %i.fz, %.critedge.loopexit.i.i.i.i66 ]
  %i.gb = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.gc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.q, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.ge, %.critedge.i.i.i.i59 ], [ %i.fm, %bb.q ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !1360
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !11936

bb.s:                                             ; preds = %.lr.ph106
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gf, %bb.s ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !2113
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2163
  %i.e = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1131 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1131 ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1131
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1131
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1304
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1113
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bz, %bb.h ], [ %i.cc, %.critedge.loopexit.i.i.i.i ]
  %i.ce = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ch, %.critedge.i.i.i.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.cp, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cq, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !13134 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1156, !noalias !13134 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1156, !noalias !13134 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1156, !noalias !13134 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader84.3
  %i.cr = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245: ; preds = %.preheader84.2
  %i.cs = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248: ; preds = %.preheader84.1
  %i.ct = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader84, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.ct, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader84 ]
  %.lcssa227 = phi i64 [ %i.ck, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cm, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ci, %.preheader84 ]
  %i.cu = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cv = xor i64 %.lcssa227, -1
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx            ; 2 uses
  %.not8099 = icmp eq i32 %i.cy, 32768
  br i1 %.not8099, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0100 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cz = zext i32 %.sroa.4.0100 to i64           ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1131
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !1126
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1156 ; 2 uses
  %i.dk = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dj, %i.dl
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = xor i64 %i.dj, -1
  %i.do = shl nsw i64 -1, %i.dk
  %i.dp = and i64 %i.do, %i.dn                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.dp, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i43192 = icmp eq i32 %i.de, 511
  br i1 %exitcond.not.i.i.i.i43192, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph194
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !99

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph194
  %i.ds = xor i64 %i.dr, -1
  %i.dt = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i44 to i32
  br label %.critedge.i.i.i.i37

.critedge.i.i.i.i37:                              ; preds = %.critedge.loopexit.i.i.i.i46, %bb.k
  %.016.lcssa.i.i.i.i38 = phi i32 [ %i.de, %bb.k ], [ %i.dt, %.critedge.loopexit.i.i.i.i46 ]
  %.0.lcssa.i.i.i.i39 = phi i64 [ %i.dp, %bb.k ], [ %i.ds, %.critedge.loopexit.i.i.i.i46 ]
  %i.du = shl nuw nsw i32 %.016.lcssa.i.i.i.i38, 6
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i39, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dx, %.critedge.i.i.i.i37 ], [ %i.dd, %bb.j ] ; 2 uses
  %.not80 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not80, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph104, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13135)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !13135 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !13135 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1156, !noalias !13135 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1156, !noalias !13135 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eh = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269: ; preds = %bb.n
  %i.ei = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272: ; preds = %bb.m
  %i.ej = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ej, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa210 = phi i64 [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.ec, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dy, %bb.l ]
  %i.ek = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.el = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa210, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = or disjoint i32 %i.ek, %i.em            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !2773, !alias.scope !13135
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !13135
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !13135
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKib.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIiLj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.er, 7
  %5 = and i32 %4, 3968
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.eq, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %10 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ev, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.es, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.et, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !2795
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  store i32 %i.p, ptr %i.ew, align 8, !tbaa !1126
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %i.p, ptr %i.ey, align 8, !tbaa !1126
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i32 %i.p, ptr %i.fa, align 8, !tbaa !1126
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i32 %i.p, ptr %i.fc, align 8, !tbaa !1126
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i32 %i.p, ptr %i.fe, align 8, !tbaa !1126
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 %i.p, ptr %i.fg, align 8, !tbaa !1126
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store i32 %i.p, ptr %i.fi, align 8, !tbaa !1126
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store i32 %i.p, ptr %i.fk, align 8, !tbaa !1126
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKib.exit, label %bb.r, !llvm.loop !13131

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKib.exit: ; preds = %bb.r
  %i.fl = zext i32 %i.er to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fl
  store ptr %i.ep, ptr %i.fm, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fn = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fo = load i32, ptr %i.eo, align 8, !tbaa !1360
  %i.fp = add i32 %i.fo, 1                        ; 4 uses
  %i.fq = lshr i32 %i.fp, 6                       ; 3 uses
  %i.fr = icmp ugt i32 %i.fp, 32767
  br i1 %i.fr, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKib.exit
  %i.fs = and i32 %i.fp, 63
  %i.ft = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !1156 ; 2 uses
  %i.fw = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fv, %i.fx
  %.not.i.i.i.i57 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i.i57, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.fz = shl nsw i64 -1, %i.fw
  %i.ga = and i64 %i.fv, %i.fz                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.t
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.fq, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !41

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.ft, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i.i.i65
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.gd = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.t
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fq, %bb.t ], [ %i.gd, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.ga, %bb.t ], [ %i.gc, %.critedge.loopexit.i.i.i.i66 ]
  %i.ge = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.gf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gh, %.critedge.i.i.i.i59 ], [ %i.fp, %bb.s ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !1360
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !13132

bb.u:                                             ; preds = %.lr.ph106
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gi, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !2734
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i64, ptr %3, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIiNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ch, %.critedge.i.i.i.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.cp, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cq, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !14329 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1156, !noalias !14329 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1156, !noalias !14329 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1156, !noalias !14329 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader84.3
  %i.cr = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250: ; preds = %.preheader84.2
  %i.cs = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253: ; preds = %.preheader84.1
  %i.ct = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader84, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.ct, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader84 ]
  %.lcssa232 = phi i64 [ %i.ck, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253 ], [ %i.cm, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ci, %.preheader84 ]
  %i.cu = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cv = xor i64 %.lcssa232, -1
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx            ; 2 uses
  %.not8099 = icmp eq i32 %i.cy, 32768
  br i1 %.not8099, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0100 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cz = zext i32 %.sroa.4.0100 to i64           ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cz
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !1156
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !1126
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1156 ; 2 uses
  %i.dk = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dj, %i.dl
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = xor i64 %i.dj, -1
  %i.do = shl nsw i64 -1, %i.dk
  %i.dp = and i64 %i.do, %i.dn                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.dp, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i43192 = icmp eq i32 %i.de, 511
  br i1 %exitcond.not.i.i.i.i43192, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph194
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !99

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph194
  %i.ds = xor i64 %i.dr, -1
  %i.dt = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i44 to i32
  br label %.critedge.i.i.i.i37

.critedge.i.i.i.i37:                              ; preds = %.critedge.loopexit.i.i.i.i46, %bb.k
  %.016.lcssa.i.i.i.i38 = phi i32 [ %i.de, %bb.k ], [ %i.dt, %.critedge.loopexit.i.i.i.i46 ]
  %.0.lcssa.i.i.i.i39 = phi i64 [ %i.dp, %bb.k ], [ %i.ds, %.critedge.loopexit.i.i.i.i46 ]
  %i.du = shl nuw nsw i32 %.016.lcssa.i.i.i.i38, 6
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i39, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dx, %.critedge.i.i.i.i37 ], [ %i.dd, %bb.j ] ; 2 uses
  %.not80 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not80, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph104, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14330)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !14330 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !14330 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1156, !noalias !14330 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1156, !noalias !14330 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eh = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274: ; preds = %bb.n
  %i.ei = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277: ; preds = %bb.m
  %i.ej = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ej, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277 ], [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa215 = phi i64 [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277 ], [ %i.ec, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dy, %bb.l ]
  %i.ek = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.el = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa215, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = or disjoint i32 %i.ek, %i.em            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !3393, !alias.scope !14330
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !14330
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !14330
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIlLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 11 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %vector.ph203 unwind label %bb.s ; 2 uses

vector.ph203:                                     ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.er, 7
  %5 = and i32 %4, 3968
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.eq, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %10 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ev, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.es, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.et, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !3416
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph203
  %index205 = phi i64 [ 0, %vector.ph203 ], [ %index.next206.3, %vector.body204 ] ; 5 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ew, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.ex, align 8, !tbaa !1126
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.ez, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.fa, align 8, !tbaa !1126
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.fc, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.fd, align 8, !tbaa !1126
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.ff, align 8, !tbaa !1126
  store <2 x i64> %broadcast.splat, ptr %i.fg, align 8, !tbaa !1126
  %index.next206.3 = add nuw nsw i64 %index205, 16 ; 2 uses
  %i.fh = icmp eq i64 %index.next206.3, 4096
  br i1 %i.fh, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit, label %vector.body204, !llvm.loop !14326

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit: ; preds = %vector.body204
  %i.fi = zext i32 %i.er to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fi
  store ptr %i.ep, ptr %i.fj, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fk = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fl = load i32, ptr %i.eo, align 8, !tbaa !1360
  %i.fm = add i32 %i.fl, 1                        ; 4 uses
  %i.fn = lshr i32 %i.fm, 6                       ; 3 uses
  %i.fo = icmp ugt i32 %i.fm, 32767
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIlLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKlb.exit
  %i.fp = and i32 %i.fm, 63
  %i.fq = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !1156 ; 2 uses
  %i.ft = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fs, %i.fu
  %.not.i.i.i.i57 = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i.i57, label %bb.r, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit

bb.r:                                             ; preds = %bb.q
  %i.fw = shl nsw i64 -1, %i.ft
  %i.fx = and i64 %i.fs, %i.fw                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.r
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.fn, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !41

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fq, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i65
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.ga = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.r
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fn, %bb.r ], [ %i.ga, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.fx, %bb.r ], [ %i.fz, %.critedge.loopexit.i.i.i.i66 ]
  %i.gb = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.gc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.q, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.ge, %.critedge.i.i.i.i59 ], [ %i.fm, %bb.q ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !1360
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !14327

bb.s:                                             ; preds = %.lr.ph106
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gf, %bb.s ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !3354
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3404
  %i.e = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1131 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1131 ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1131
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1131
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1304
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIlNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1113
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.by, %bb.h ], [ %i.cb, %.critedge.loopexit.i.i.i.i ]
  %i.cd = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.cg, %.critedge.i.i.i.i ], [ %i.bm, %bb.g ] ; 2 uses
  %.not82 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not82, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph105

.preheader85:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.co, %bb.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cp, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ch = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !15526 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30, label %.preheader85.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader85.1:                                   ; preds = %.preheader85
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1156, !noalias !15526 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.1, label %.preheader85.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249

.preheader85.2:                                   ; preds = %.preheader85.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156, !noalias !15526 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.2, label %.preheader85.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246

.preheader85.3:                                   ; preds = %.preheader85.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1156, !noalias !15526 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader85.3
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cp = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cp, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %.preheader85, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader85.3
  %i.cq = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246: ; preds = %.preheader85.2
  %i.cr = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249: ; preds = %.preheader85.1
  %i.cs = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader85, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246 ], [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader85 ]
  %.lcssa228 = phi i64 [ %i.cj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249 ], [ %i.cl, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246 ], [ %i.cn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ch, %.preheader85 ]
  %i.ct = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cu = xor i64 %.lcssa228, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = or disjoint i32 %i.ct, %i.cw            ; 2 uses
  %.not81100 = icmp eq i32 %i.cx, 32768
  br i1 %.not81100, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0101 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cy = zext i32 %.sroa.4.0101 to i64           ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cy
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.cy
  %i.db = load i16, ptr %i.da, align 2, !tbaa !1226
  store i16 %i.db, ptr %i.cz, align 8, !tbaa !1226
  %i.dc = add i32 %.sroa.4.0101, 1                ; 4 uses
  %i.dd = lshr i32 %i.dc, 6                       ; 3 uses
  %i.de = icmp ugt i32 %i.dc, 32767
  br i1 %i.de, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1156 ; 2 uses
  %i.dj = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.di, %i.dk
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dl, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = xor i64 %i.di, -1
  %i.dn = shl nsw i64 -1, %i.dj
  %i.do = and i64 %i.dn, %i.dm                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.do, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i43193 = icmp eq i32 %i.dd, 511
  br i1 %exitcond.not.i.i.i.i43193, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph195

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph195
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph195, !llvm.loop !99

.lr.ph195:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42194 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dg, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42194, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.i44
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph195
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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dw, %.critedge.i.i.i.i37 ], [ %i.dc, %bb.j ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph105, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15527)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.p, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit ], [ %i.ee, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %i.dx = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !15527 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156, !noalias !15527 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1156, !noalias !15527 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1156, !noalias !15527 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.ef = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.ef, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eg = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270: ; preds = %bb.n
  %i.eh = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273: ; preds = %bb.m
  %i.ei = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270 ], [ %i.eg, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa211 = phi i64 [ %i.dz, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273 ], [ %i.eb, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270 ], [ %i.ed, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dx, %bb.l ]
  %i.ej = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.ek = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa211, i1 true)
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = or disjoint i32 %i.ej, %i.el            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !4008, !alias.scope !15527
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !alias.scope !15527
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !15527
  %.not83106 = icmp eq i32 %i.em, 32768
  br i1 %.not83106, label %._crit_edge, label %.lr.ph107

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph107:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit
  %i.eo = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph107
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.eq, 7
  %5 = and i32 %4, 3968
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.ep, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.et = lshr i32 %i.eq, 3
  %i.eu = shl i32 %i.eq, 2
  %10 = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.eu, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.er, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.es, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !4029
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i16 %storemerge, ptr %i.ev, align 8, !tbaa !1226
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i16 %storemerge, ptr %i.ex, align 8, !tbaa !1226
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i16 %storemerge, ptr %i.ez, align 8, !tbaa !1226
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i16 %storemerge, ptr %i.fb, align 8, !tbaa !1226
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i16 %storemerge, ptr %i.fd, align 8, !tbaa !1226
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i16 %storemerge, ptr %i.ff, align 8, !tbaa !1226
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store i16 %storemerge, ptr %i.fh, align 8, !tbaa !1226
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store i16 %storemerge, ptr %i.fj, align 8, !tbaa !1226
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, label %bb.r, !llvm.loop !15523

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit: ; preds = %bb.r
  %i.fk = zext i32 %i.eq to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store ptr %i.eo, ptr %i.fl, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fm = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fn = load i32, ptr %i.en, align 8, !tbaa !1360
  %i.fo = add i32 %i.fn, 1                        ; 4 uses
  %i.fp = lshr i32 %i.fo, 6                       ; 3 uses
  %i.fq = icmp ugt i32 %i.fo, 32767
  br i1 %i.fq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit
  %i.fr = and i32 %i.fo, 63
  %i.fs = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !1156 ; 2 uses
  %i.fv = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fu, %i.fw
  %.not.i.i.i.i57 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i.i57, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.fy = shl nsw i64 -1, %i.fv
  %i.fz = and i64 %i.fu, %i.fy                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.t
  %exitcond.not.i.i.i.i64199 = icmp eq i32 %i.fp, 511
  br i1 %exitcond.not.i.i.i.i64199, label %._crit_edge, label %.lr.ph201

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph201
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph201, !llvm.loop !41

.lr.ph201:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63200 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fs, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63200, 1 ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i65
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph201
  %i.gc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.t
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fp, %bb.t ], [ %i.gc, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.fz, %bb.t ], [ %i.gb, %.critedge.loopexit.i.i.i.i66 ]
  %i.gd = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gf = trunc nuw nsw i64 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math8internal4halfELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gg, %.critedge.i.i.i.i59 ], [ %i.fo, %bb.s ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.en, align 8, !tbaa !1360
  %.not83 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not83, label %._crit_edge, label %.lr.ph107, !llvm.loop !15524

bb.u:                                             ; preds = %.lr.ph107
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math8internal4halfESt14default_deleteIS5_EED2Ev.exit56 ], [ %i.gh, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJS3_NSF_4TileEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 2 dereferenceable(3) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !3971
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i32, ptr %3, align 2
  store i32 %i.e, ptr %i.d, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit ; 2 uses

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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_8internal4halfELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math8internal4halfENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::internal::half", align 2 ; 6 uses
  %10 = alloca %"class.openvdb::v13_0::math::internal::half", align 2 ; 7 uses
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.016.lcssa.i.i.i.i = phi i32 [ %i.bl, %bb.h ], [ %i.ca, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bw, %bb.h ], [ %i.bz, %.critedge.loopexit.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ce, %.critedge.i.i.i.i ], [ %i.bk, %bb.g ] ; 2 uses
  %.not90 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not90, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph113

.preheader93:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i32 = phi ptr [ %i.cm, %bb.i ], [ %i.o, %bb.e ] ; 5 uses
  %.0712.i.i.i33 = phi i32 [ %i.cn, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.cf = load i64, ptr %.013.i.i.i32, align 8, !tbaa !1156, !noalias !16715 ; 2 uses
  %.not.i.i.i34 = icmp eq i64 %i.cf, -1
  br i1 %.not.i.i.i34, label %.preheader93.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

.preheader93.1:                                   ; preds = %.preheader93
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1156, !noalias !16715 ; 2 uses
  %.not.i.i.i34.1 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i34.1, label %.preheader93.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257

.preheader93.2:                                   ; preds = %.preheader93.1
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1156, !noalias !16715 ; 2 uses
  %.not.i.i.i34.2 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i34.2, label %.preheader93.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254

.preheader93.3:                                   ; preds = %.preheader93.2
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156, !noalias !16715 ; 2 uses
  %.not.i.i.i34.3 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i34.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit

bb.i:                                             ; preds = %.preheader93.3
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 32
  %i.cn = add nuw nsw i32 %.0712.i.i.i33, 4       ; 2 uses
  %exitcond.not.i.i.i37.3 = icmp eq i32 %i.cn, 512
  br i1 %exitcond.not.i.i.i37.3, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %.preheader93, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit: ; preds = %.preheader93.3
  %i.co = or disjoint i32 %.0712.i.i.i33, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254: ; preds = %.preheader93.2
  %i.cp = or disjoint i32 %.0712.i.i.i33, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257: ; preds = %.preheader93.1
  %i.cq = or disjoint i32 %.0712.i.i.i33, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38: ; preds = %.preheader93, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit
  %.0712.i.i.i33.lcssa = phi i32 [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257 ], [ %i.cp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit ], [ %.0712.i.i.i33, %.preheader93 ]
  %.lcssa236 = phi i64 [ %i.ch, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257 ], [ %i.cj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254 ], [ %i.cl, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit ], [ %i.cf, %.preheader93 ]
  %i.cr = shl nuw nsw i32 %.0712.i.i.i33.lcssa, 6
  %i.cs = xor i64 %.lcssa236, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu            ; 2 uses
  %.not89108 = icmp eq i32 %i.cv, 32768
  br i1 %.not89108, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit51
  %.sroa.4.0109 = phi i32 [ %.118.i.i.i.i44, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit51 ], [ %i.cv, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38 ] ; 2 uses
  %i.cw = zext i32 %.sroa.4.0109 to i64           ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(12) %i.cy, i64 12, i1 false)
  %i.cz = add i32 %.sroa.4.0109, 1                ; 4 uses
  %i.da = lshr i32 %i.cz, 6                       ; 3 uses
  %i.db = icmp ugt i32 %i.cz, 32767
  br i1 %i.db, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dc = and i32 %i.cz, 63
  %i.dd = zext nneg i32 %i.da to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !1156 ; 2 uses
  %i.dg = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  %.not.not.i.i.i.i39 = icmp eq i64 %i.di, 0
  br i1 %.not.not.i.i.i.i39, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = xor i64 %i.df, -1
  %i.dk = shl nsw i64 -1, %i.dg
  %i.dl = and i64 %i.dk, %i.dj                    ; 2 uses
  %.not25.i.i.i.i40 = icmp eq i64 %i.dl, 0
  br i1 %.not25.i.i.i.i40, label %.lr.ph.i.i.i.i45.preheader, label %.critedge.i.i.i.i41

.lr.ph.i.i.i.i45.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i47201 = icmp eq i32 %i.da, 511
  br i1 %exitcond.not.i.i.i.i47201, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph203

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph203
  %exitcond.not.i.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i.i48, 511
  br i1 %exitcond.not.i.i.i.i47, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph203, !llvm.loop !99

.lr.ph203:                                        ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %indvars.iv.i.i.i.i46202 = phi i64 [ %indvars.iv.next.i.i.i.i48, %.lr.ph.i.i.i.i45 ], [ %i.dd, %.lr.ph.i.i.i.i45.preheader ]
  %indvars.iv.next.i.i.i.i48 = add nuw nsw i64 %indvars.iv.i.i.i.i46202, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i49 = icmp eq i64 %i.dn, -1
  br i1 %.not.i.i.i.i49, label %.lr.ph.i.i.i.i45, label %.critedge.loopexit.i.i.i.i50, !llvm.loop !99

.critedge.loopexit.i.i.i.i50:                     ; preds = %.lr.ph203
  %i.do = xor i64 %i.dn, -1
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i48 to i32
  br label %.critedge.i.i.i.i41

.critedge.i.i.i.i41:                              ; preds = %.critedge.loopexit.i.i.i.i50, %bb.k
  %.016.lcssa.i.i.i.i42 = phi i32 [ %i.da, %bb.k ], [ %i.dp, %.critedge.loopexit.i.i.i.i50 ]
  %.0.lcssa.i.i.i.i43 = phi i64 [ %i.dl, %bb.k ], [ %i.do, %.critedge.loopexit.i.i.i.i50 ]
  %i.dq = shl nuw nsw i32 %.016.lcssa.i.i.i.i42, 6
  %i.dr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i43, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.dq, %i.ds
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit51

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit51: ; preds = %bb.j, %.critedge.i.i.i.i41
  %.118.i.i.i.i44 = phi i32 [ %i.dt, %.critedge.i.i.i.i41 ], [ %i.cz, %bb.j ] ; 2 uses
  %.not89 = icmp eq i32 %.118.i.i.i.i44, 32768
  br i1 %.not89, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit51, %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45, %bb.f, %.lr.ph113, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit38, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16716)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit
  %.013.i.i.i52 = phi ptr [ %i.o, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit ], [ %i.eb, %bb.p ] ; 5 uses
  %.0712.i.i.i53 = phi i32 [ 0, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit ], [ %i.ec, %bb.p ] ; 5 uses
  %i.du = load i64, ptr %.013.i.i.i52, align 8, !tbaa !1156, !noalias !16716 ; 2 uses
  %.not.i.i.i54 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i54, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1156, !noalias !16716 ; 2 uses
  %.not.i.i.i54.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i54.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1156, !noalias !16716 ; 2 uses
  %.not.i.i.i54.2 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i54.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !16716 ; 2 uses
  %.not.i.i.i54.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i54.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 32
  %i.ec = add nuw nsw i32 %.0712.i.i.i53, 4       ; 2 uses
  %exitcond.not.i.i.i57.3 = icmp eq i32 %i.ec, 512
  br i1 %exitcond.not.i.i.i57.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.ed = or disjoint i32 %.0712.i.i.i53, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278: ; preds = %bb.n
  %i.ee = or disjoint i32 %.0712.i.i.i53, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281: ; preds = %bb.m
  %i.ef = or disjoint i32 %.0712.i.i.i53, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i53.lcssa = phi i32 [ %i.ef, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278 ], [ %i.ed, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i53, %bb.l ]
  %.lcssa219 = phi i64 [ %i.dw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281 ], [ %i.dy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278 ], [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.du, %bb.l ]
  %i.eg = shl nuw nsw i32 %.0712.i.i.i53.lcssa, 6
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa219, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !4624, !alias.scope !16716
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.ej, ptr %i.ek, align 8, !alias.scope !16716
  %.sroa.41.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.o, ptr %.sroa.41.0..sroa_idx.i56, align 8, !alias.scope !16716
  %.not91114 = icmp eq i32 %i.ej, 32768
  br i1 %.not91114, label %._crit_edge, label %.lr.ph115

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph115:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit
  %i.el = call noalias noundef nonnull dereferenceable(66576) ptr @_Znwm(i64 noundef 66576) #32 ; 19 uses
  %i.em = invoke noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.w       ; 2 uses

bb.q:                                             ; preds = %.lr.ph115
  %i.en = load i32, ptr %i.ek, align 8, !tbaa !1360 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 532480
  %4 = load <2 x i32>, ptr %i.eo, align 8, !tbaa !1131
  %5 = getelementptr inbounds nuw i8, ptr %i.em, i64 532488
  %6 = load i32, ptr %5, align 8, !tbaa !1131
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.idx.i = phi i64 [ 0, %bb.q ], [ %.add.i.7, %bb.r ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !1126
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !1126
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !1126
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !1126
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !1126
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !1126
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !1126
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.ev, i64 112
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !1126
  %.add.i.7 = add nuw nsw i64 %.idx.i, 128        ; 2 uses
  %i.ew = icmp eq i64 %.add.i.7, 65536
  br i1 %i.ew, label %bb.s, label %bb.r

bb.s:                                             ; preds = %bb.r
  %i.ex = lshr i32 %i.en, 3
  %i.ey = shl i32 %i.en, 2
  %i.ez = shl i32 %i.en, 7
  %7 = and i32 %i.ez, 3968
  %8 = add nsw i32 %6, %7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 65536
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 66560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fa, i8 0, i64 1024, i1 false)
  %9 = and i32 %8, -128
  %10 = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ey, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = add nsw <2 x i32> %12, %4
  %14 = and <2 x i32> %13, splat (i32 -128)
  store <2 x i32> %14, ptr %i.fb, align 8, !tbaa !1131
  %15 = getelementptr inbounds nuw i8, ptr %i.el, i64 66568
  store i32 %9, ptr %15, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.el, i64 66572
  store i32 0, ptr %16, align 4, !tbaa !4645
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i.3, %bb.t ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  store i64 %.sroa.084.0, ptr %i.fc, align 8
  %.sroa.686.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87, align 8
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %.sroa.084.0, ptr %i.fe, align 8
  %.sroa.686.0..sroa_idx87.1 = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i32 %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87.1, align 8
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store i64 %.sroa.084.0, ptr %i.fg, align 8
  %.sroa.686.0..sroa_idx87.2 = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87.2, align 8
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store i64 %.sroa.084.0, ptr %i.fi, align 8
  %.sroa.686.0..sroa_idx87.3 = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store i32 %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87.3, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 4096
  br i1 %exitcond.not.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, label %bb.t, !llvm.loop !16712

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit: ; preds = %bb.t
  %i.fj = zext i32 %i.en to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.fj
  store ptr %i.el, ptr %i.fk, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(66576) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fl = load ptr, ptr %.sroa.41.0..sroa_idx.i56, align 8, !tbaa !1359 ; 2 uses
  %i.fm = load i32, ptr %i.ek, align 8, !tbaa !1360
  %i.fn = add i32 %i.fm, 1                        ; 4 uses
  %i.fo = lshr i32 %i.fn, 6                       ; 3 uses
  %i.fp = icmp ugt i32 %i.fn, 32767
  br i1 %i.fp, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit
  %i.fq = and i32 %i.fn, 63
  %i.fr = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !1156 ; 2 uses
  %i.fu = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.ft, %i.fv
  %.not.i.i.i.i61 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i61, label %bb.v, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit

bb.v:                                             ; preds = %bb.u
  %i.fx = shl nsw i64 -1, %i.fu
  %i.fy = and i64 %i.ft, %i.fx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i66.preheader, label %.critedge.i.i.i.i63

.lr.ph.i.i.i.i66.preheader:                       ; preds = %bb.v
  %exitcond.not.i.i.i.i68207 = icmp eq i32 %i.fo, 511
  br i1 %exitcond.not.i.i.i.i68207, label %._crit_edge, label %.lr.ph209

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph209
  %exitcond.not.i.i.i.i68 = icmp eq i64 %indvars.iv.next.i.i.i.i69, 511
  br i1 %exitcond.not.i.i.i.i68, label %._crit_edge, label %.lr.ph209, !llvm.loop !41

.lr.ph209:                                        ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %indvars.iv.i.i.i.i67208 = phi i64 [ %indvars.iv.next.i.i.i.i69, %.lr.ph.i.i.i.i66 ], [ %i.fr, %.lr.ph.i.i.i.i66.preheader ]
  %indvars.iv.next.i.i.i.i69 = add nuw nsw i64 %indvars.iv.i.i.i.i67208, 1 ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i.i69
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i66, label %.critedge.loopexit.i.i.i.i70, !llvm.loop !41

.critedge.loopexit.i.i.i.i70:                     ; preds = %.lr.ph209
  %i.gb = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i69 to i32
  br label %.critedge.i.i.i.i63

.critedge.i.i.i.i63:                              ; preds = %.critedge.loopexit.i.i.i.i70, %bb.v
  %.016.lcssa.i.i.i.i64 = phi i32 [ %i.fo, %bb.v ], [ %i.gb, %.critedge.loopexit.i.i.i.i70 ]
  %.0.lcssa.i.i.i.i65 = phi i64 [ %i.fy, %bb.v ], [ %i.ga, %.critedge.loopexit.i.i.i.i70 ]
  %i.gc = shl nuw nsw i32 %.016.lcssa.i.i.i.i64, 6
  %i.gd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i65, i1 true)
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.u, %.critedge.i.i.i.i63
  %.118.i.i.i.i62 = phi i32 [ %i.gf, %.critedge.i.i.i.i63 ], [ %i.fn, %bb.u ] ; 2 uses
  store i32 %.118.i.i.i.i62, ptr %i.ek, align 8, !tbaa !1360
  %.not91 = icmp eq i32 %.118.i.i.i.i62, 32768
  br i1 %.not91, label %._crit_edge, label %.lr.ph115, !llvm.loop !16713

bb.w:                                             ; preds = %.lr.ph115
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 66576) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit60
  %.pn.pn = phi { ptr, i32 } [ %i.be, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IiEESt14default_deleteIS5_EED2Ev.exit60 ], [ %i.gg, %bb.w ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJS3_NSF_4TileEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(13) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !4587
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %i.e = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1131 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1131 ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1131
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1131
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1304
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IiEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IiEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3.48", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3.48", align 8 ; 9 uses
  %11 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1113
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.016.lcssa.i.i.i.i = phi i32 [ %i.bl, %bb.h ], [ %i.ca, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bw, %bb.h ], [ %i.bz, %.critedge.loopexit.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ce, %.critedge.i.i.i.i ], [ %i.bk, %bb.g ] ; 2 uses
  %.not90 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not90, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph113

.preheader93:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i32 = phi ptr [ %i.cm, %bb.i ], [ %i.o, %bb.e ] ; 5 uses
  %.0712.i.i.i33 = phi i32 [ %i.cn, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.cf = load i64, ptr %.013.i.i.i32, align 8, !tbaa !1156, !noalias !17906 ; 2 uses
  %.not.i.i.i34 = icmp eq i64 %i.cf, -1
  br i1 %.not.i.i.i34, label %.preheader93.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

.preheader93.1:                                   ; preds = %.preheader93
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1156, !noalias !17906 ; 2 uses
  %.not.i.i.i34.1 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i34.1, label %.preheader93.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257

.preheader93.2:                                   ; preds = %.preheader93.1
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1156, !noalias !17906 ; 2 uses
  %.not.i.i.i34.2 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i34.2, label %.preheader93.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254

.preheader93.3:                                   ; preds = %.preheader93.2
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156, !noalias !17906 ; 2 uses
  %.not.i.i.i34.3 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i34.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit

bb.i:                                             ; preds = %.preheader93.3
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i32, i64 32
  %i.cn = add nuw nsw i32 %.0712.i.i.i33, 4       ; 2 uses
  %exitcond.not.i.i.i37.3 = icmp eq i32 %i.cn, 512
  br i1 %exitcond.not.i.i.i37.3, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %.preheader93, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit: ; preds = %.preheader93.3
  %i.co = or disjoint i32 %.0712.i.i.i33, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254: ; preds = %.preheader93.2
  %i.cp = or disjoint i32 %.0712.i.i.i33, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257: ; preds = %.preheader93.1
  %i.cq = or disjoint i32 %.0712.i.i.i33, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38: ; preds = %.preheader93, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit
  %.0712.i.i.i33.lcssa = phi i32 [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257 ], [ %i.cp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit ], [ %.0712.i.i.i33, %.preheader93 ]
  %.lcssa236 = phi i64 [ %i.ch, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit257 ], [ %i.cj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit254 ], [ %i.cl, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38.split.loop.exit ], [ %i.cf, %.preheader93 ]
  %i.cr = shl nuw nsw i32 %.0712.i.i.i33.lcssa, 6
  %i.cs = xor i64 %.lcssa236, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu            ; 2 uses
  %.not89108 = icmp eq i32 %i.cv, 32768
  br i1 %.not89108, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit51
  %.sroa.4.0109 = phi i32 [ %.118.i.i.i.i44, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit51 ], [ %i.cv, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38 ] ; 2 uses
  %i.cw = zext i32 %.sroa.4.0109 to i64           ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(12) %i.cy, i64 12, i1 false)
  %i.cz = add i32 %.sroa.4.0109, 1                ; 4 uses
  %i.da = lshr i32 %i.cz, 6                       ; 3 uses
  %i.db = icmp ugt i32 %i.cz, 32767
  br i1 %i.db, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dc = and i32 %i.cz, 63
  %i.dd = zext nneg i32 %i.da to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !1156 ; 2 uses
  %i.dg = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  %.not.not.i.i.i.i39 = icmp eq i64 %i.di, 0
  br i1 %.not.not.i.i.i.i39, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = xor i64 %i.df, -1
  %i.dk = shl nsw i64 -1, %i.dg
  %i.dl = and i64 %i.dk, %i.dj                    ; 2 uses
  %.not25.i.i.i.i40 = icmp eq i64 %i.dl, 0
  br i1 %.not25.i.i.i.i40, label %.lr.ph.i.i.i.i45.preheader, label %.critedge.i.i.i.i41

.lr.ph.i.i.i.i45.preheader:                       ; preds = %bb.k
  %exitcond.not.i.i.i.i47201 = icmp eq i32 %i.da, 511
  br i1 %exitcond.not.i.i.i.i47201, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph203

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph203
  %exitcond.not.i.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i.i48, 511
  br i1 %exitcond.not.i.i.i.i47, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph203, !llvm.loop !99

.lr.ph203:                                        ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %indvars.iv.i.i.i.i46202 = phi i64 [ %indvars.iv.next.i.i.i.i48, %.lr.ph.i.i.i.i45 ], [ %i.dd, %.lr.ph.i.i.i.i45.preheader ]
  %indvars.iv.next.i.i.i.i48 = add nuw nsw i64 %indvars.iv.i.i.i.i46202, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i49 = icmp eq i64 %i.dn, -1
  br i1 %.not.i.i.i.i49, label %.lr.ph.i.i.i.i45, label %.critedge.loopexit.i.i.i.i50, !llvm.loop !99

.critedge.loopexit.i.i.i.i50:                     ; preds = %.lr.ph203
  %i.do = xor i64 %i.dn, -1
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i48 to i32
  br label %.critedge.i.i.i.i41

.critedge.i.i.i.i41:                              ; preds = %.critedge.loopexit.i.i.i.i50, %bb.k
  %.016.lcssa.i.i.i.i42 = phi i32 [ %i.da, %bb.k ], [ %i.dp, %.critedge.loopexit.i.i.i.i50 ]
  %.0.lcssa.i.i.i.i43 = phi i64 [ %i.dl, %bb.k ], [ %i.do, %.critedge.loopexit.i.i.i.i50 ]
  %i.dq = shl nuw nsw i32 %.016.lcssa.i.i.i.i42, 6
  %i.dr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i43, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.dq, %i.ds
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit51

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit51: ; preds = %bb.j, %.critedge.i.i.i.i41
  %.118.i.i.i.i44 = phi i32 [ %i.dt, %.critedge.i.i.i.i41 ], [ %i.cz, %bb.j ] ; 2 uses
  %.not89 = icmp eq i32 %.118.i.i.i.i44, 32768
  br i1 %.not89, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit51, %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45, %bb.f, %.lr.ph113, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit38, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17907)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit
  %.013.i.i.i52 = phi ptr [ %i.o, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit ], [ %i.eb, %bb.p ] ; 5 uses
  %.0712.i.i.i53 = phi i32 [ 0, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit ], [ %i.ec, %bb.p ] ; 5 uses
  %i.du = load i64, ptr %.013.i.i.i52, align 8, !tbaa !1156, !noalias !17907 ; 2 uses
  %.not.i.i.i54 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i54, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1156, !noalias !17907 ; 2 uses
  %.not.i.i.i54.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i54.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1156, !noalias !17907 ; 2 uses
  %.not.i.i.i54.2 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i54.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !17907 ; 2 uses
  %.not.i.i.i54.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i54.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i52, i64 32
  %i.ec = add nuw nsw i32 %.0712.i.i.i53, 4       ; 2 uses
  %exitcond.not.i.i.i57.3 = icmp eq i32 %i.ec, 512
  br i1 %exitcond.not.i.i.i57.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.ed = or disjoint i32 %.0712.i.i.i53, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278: ; preds = %bb.n
  %i.ee = or disjoint i32 %.0712.i.i.i53, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281: ; preds = %bb.m
  %i.ef = or disjoint i32 %.0712.i.i.i53, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i53.lcssa = phi i32 [ %i.ef, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278 ], [ %i.ed, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i53, %bb.l ]
  %.lcssa219 = phi i64 [ %i.dw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit281 ], [ %i.dy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit278 ], [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.du, %bb.l ]
  %i.eg = shl nuw nsw i32 %.0712.i.i.i53.lcssa, 6
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa219, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !5238, !alias.scope !17907
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.ej, ptr %i.ek, align 8, !alias.scope !17907
  %.sroa.41.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.o, ptr %.sroa.41.0..sroa_idx.i56, align 8, !alias.scope !17907
  %.not91114 = icmp eq i32 %i.ej, 32768
  br i1 %.not91114, label %._crit_edge, label %.lr.ph115

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph115:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit
  %i.el = call noalias noundef nonnull dereferenceable(66576) ptr @_Znwm(i64 noundef 66576) #32 ; 19 uses
  %i.em = invoke noundef nonnull align 8 dereferenceable(532496) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.w       ; 2 uses

bb.q:                                             ; preds = %.lr.ph115
  %i.en = load i32, ptr %i.ek, align 8, !tbaa !1360 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 532480
  %4 = load <2 x i32>, ptr %i.eo, align 8, !tbaa !1131
  %5 = getelementptr inbounds nuw i8, ptr %i.em, i64 532488
  %6 = load i32, ptr %5, align 8, !tbaa !1131
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.idx.i = phi i64 [ 0, %bb.q ], [ %.add.i.7, %bb.r ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !1126
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !1126
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !1126
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !1126
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !1126
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !1126
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !1126
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.ev, i64 112
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !1126
  %.add.i.7 = add nuw nsw i64 %.idx.i, 128        ; 2 uses
  %i.ew = icmp eq i64 %.add.i.7, 65536
  br i1 %i.ew, label %bb.s, label %bb.r

bb.s:                                             ; preds = %bb.r
  %i.ex = lshr i32 %i.en, 3
  %i.ey = shl i32 %i.en, 2
  %i.ez = shl i32 %i.en, 7
  %7 = and i32 %i.ez, 3968
  %8 = add nsw i32 %6, %7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 65536
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 66560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fa, i8 0, i64 1024, i1 false)
  %9 = and i32 %8, -128
  %10 = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ey, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = add nsw <2 x i32> %12, %4
  %14 = and <2 x i32> %13, splat (i32 -128)
  store <2 x i32> %14, ptr %i.fb, align 8, !tbaa !1131
  %15 = getelementptr inbounds nuw i8, ptr %i.el, i64 66568
  store i32 %9, ptr %15, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.el, i64 66572
  store i32 0, ptr %16, align 4, !tbaa !5259
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i.3, %bb.t ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  store <2 x float> %.sroa.084.0, ptr %i.fc, align 8
  %.sroa.686.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store float %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87, align 8
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x float> %.sroa.084.0, ptr %i.fe, align 8
  %.sroa.686.0..sroa_idx87.1 = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store float %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87.1, align 8
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store <2 x float> %.sroa.084.0, ptr %i.fg, align 8
  %.sroa.686.0..sroa_idx87.2 = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store float %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87.2, align 8
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store <2 x float> %.sroa.084.0, ptr %i.fi, align 8
  %.sroa.686.0..sroa_idx87.3 = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store float %.sroa.686.0, ptr %.sroa.686.0..sroa_idx87.3, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 4096
  br i1 %exitcond.not.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, label %bb.t, !llvm.loop !17903

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit: ; preds = %bb.t
  %i.fj = zext i32 %i.en to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.fj
  store ptr %i.el, ptr %i.fk, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(66576) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fl = load ptr, ptr %.sroa.41.0..sroa_idx.i56, align 8, !tbaa !1359 ; 2 uses
  %i.fm = load i32, ptr %i.ek, align 8, !tbaa !1360
  %i.fn = add i32 %i.fm, 1                        ; 4 uses
  %i.fo = lshr i32 %i.fn, 6                       ; 3 uses
  %i.fp = icmp ugt i32 %i.fn, 32767
  br i1 %i.fp, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit
  %i.fq = and i32 %i.fn, 63
  %i.fr = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !1156 ; 2 uses
  %i.fu = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.ft, %i.fv
  %.not.i.i.i.i61 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i61, label %bb.v, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit

bb.v:                                             ; preds = %bb.u
  %i.fx = shl nsw i64 -1, %i.fu
  %i.fy = and i64 %i.ft, %i.fx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i66.preheader, label %.critedge.i.i.i.i63

.lr.ph.i.i.i.i66.preheader:                       ; preds = %bb.v
  %exitcond.not.i.i.i.i68207 = icmp eq i32 %i.fo, 511
  br i1 %exitcond.not.i.i.i.i68207, label %._crit_edge, label %.lr.ph209

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph209
  %exitcond.not.i.i.i.i68 = icmp eq i64 %indvars.iv.next.i.i.i.i69, 511
  br i1 %exitcond.not.i.i.i.i68, label %._crit_edge, label %.lr.ph209, !llvm.loop !41

.lr.ph209:                                        ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %indvars.iv.i.i.i.i67208 = phi i64 [ %indvars.iv.next.i.i.i.i69, %.lr.ph.i.i.i.i66 ], [ %i.fr, %.lr.ph.i.i.i.i66.preheader ]
  %indvars.iv.next.i.i.i.i69 = add nuw nsw i64 %indvars.iv.i.i.i.i67208, 1 ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i.i69
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i66, label %.critedge.loopexit.i.i.i.i70, !llvm.loop !41

.critedge.loopexit.i.i.i.i70:                     ; preds = %.lr.ph209
  %i.gb = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i69 to i32
  br label %.critedge.i.i.i.i63

.critedge.i.i.i.i63:                              ; preds = %.critedge.loopexit.i.i.i.i70, %bb.v
  %.016.lcssa.i.i.i.i64 = phi i32 [ %i.fo, %bb.v ], [ %i.gb, %.critedge.loopexit.i.i.i.i70 ]
  %.0.lcssa.i.i.i.i65 = phi i64 [ %i.fy, %bb.v ], [ %i.ga, %.critedge.loopexit.i.i.i.i70 ]
  %i.gc = shl nuw nsw i32 %.016.lcssa.i.i.i.i64, 6
  %i.gd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i65, i1 true)
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.u, %.critedge.i.i.i.i63
  %.118.i.i.i.i62 = phi i32 [ %i.gf, %.critedge.i.i.i.i63 ], [ %i.fn, %bb.u ] ; 2 uses
  store i32 %.118.i.i.i.i62, ptr %i.ek, align 8, !tbaa !1360
  %.not91 = icmp eq i32 %.118.i.i.i.i62, 32768
  br i1 %.not91, label %._crit_edge, label %.lr.ph115, !llvm.loop !17904

bb.w:                                             ; preds = %.lr.ph115
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 66576) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit60
  %.pn.pn = phi { ptr, i32 } [ %i.be, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IfEESt14default_deleteIS5_EED2Ev.exit60 ], [ %i.gg, %bb.w ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJS3_NSF_4TileEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(13) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !5201
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %i.e = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1131 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1131 ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1131
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1131
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1304
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IfEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IfEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3.54", align 8 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3.54", align 8 ; 9 uses
  %11 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1113
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bw, %bb.i ], [ %i.bz, %.critedge.loopexit.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ce, %.critedge.i.i.i.i ], [ %i.bk, %bb.h ] ; 2 uses
  %.not82 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not82, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph105

.preheader85:                                     ; preds = %bb.f, %bb.j
  %.013.i.i.i28 = phi ptr [ %i.cm, %bb.j ], [ %i.o, %bb.f ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cn, %bb.j ], [ 0, %bb.f ] ; 5 uses
  %i.cf = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !19121 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.cf, -1
  br i1 %.not.i.i.i30, label %.preheader85.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader85.1:                                   ; preds = %.preheader85
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1156, !noalias !19121 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30.1, label %.preheader85.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249

.preheader85.2:                                   ; preds = %.preheader85.1
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1156, !noalias !19121 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.2, label %.preheader85.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246

.preheader85.3:                                   ; preds = %.preheader85.2
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156, !noalias !19121 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.3, label %bb.j, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.j:                                             ; preds = %.preheader85.3
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cn = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cn, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %.preheader85, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader85.3
  %i.co = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246: ; preds = %.preheader85.2
  %i.cp = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249: ; preds = %.preheader85.1
  %i.cq = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader85, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249 ], [ %i.cp, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246 ], [ %i.co, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader85 ]
  %.lcssa228 = phi i64 [ %i.ch, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit249 ], [ %i.cj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit246 ], [ %i.cl, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.cf, %.preheader85 ]
  %i.cr = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cs = xor i64 %.lcssa228, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu            ; 2 uses
  %.not81100 = icmp eq i32 %i.cv, 32768
  br i1 %.not81100, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0101 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cv, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cw = zext i32 %.sroa.4.0101 to i64           ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  %i.cz = add i32 %.sroa.4.0101, 1                ; 4 uses
  %i.da = lshr i32 %i.cz, 6                       ; 3 uses
  %i.db = icmp ugt i32 %i.cz, 32767
  br i1 %i.db, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.dc = and i32 %i.cz, 63
  %i.dd = zext nneg i32 %i.da to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !1156 ; 2 uses
  %i.dg = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  %.not.not.i.i.i.i35 = icmp eq i64 %i.di, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit47, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = xor i64 %i.df, -1
  %i.dk = shl nsw i64 -1, %i.dg
  %i.dl = and i64 %i.dk, %i.dj                    ; 2 uses
  %.not25.i.i.i.i36 = icmp eq i64 %i.dl, 0
  br i1 %.not25.i.i.i.i36, label %.lr.ph.i.i.i.i41.preheader, label %.critedge.i.i.i.i37

.lr.ph.i.i.i.i41.preheader:                       ; preds = %bb.l
  %exitcond.not.i.i.i.i43193 = icmp eq i32 %i.da, 511
  br i1 %exitcond.not.i.i.i.i43193, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph195

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph195
  %exitcond.not.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i44, 511
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph195, !llvm.loop !99

.lr.ph195:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42194 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dd, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42194, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i44
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dn, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

.critedge.loopexit.i.i.i.i46:                     ; preds = %.lr.ph195
  %i.do = xor i64 %i.dn, -1
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i44 to i32
  br label %.critedge.i.i.i.i37

.critedge.i.i.i.i37:                              ; preds = %.critedge.loopexit.i.i.i.i46, %bb.l
  %.016.lcssa.i.i.i.i38 = phi i32 [ %i.da, %bb.l ], [ %i.dp, %.critedge.loopexit.i.i.i.i46 ]
  %.0.lcssa.i.i.i.i39 = phi i64 [ %i.dl, %bb.l ], [ %i.do, %.critedge.loopexit.i.i.i.i46 ]
  %i.dq = shl nuw nsw i32 %.016.lcssa.i.i.i.i38, 6
  %i.dr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i39, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.dq, %i.ds
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.k, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dt, %.critedge.i.i.i.i37 ], [ %i.cz, %bb.k ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.j, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.g, %.lr.ph105, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19122)
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.o, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit ], [ %i.eb, %bb.q ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit ], [ %i.ec, %bb.q ] ; 5 uses
  %i.du = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !19122 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i50, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.n:                                             ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1156, !noalias !19122 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i50.1, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273

bb.o:                                             ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1156, !noalias !19122 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50.2, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270

bb.p:                                             ; preds = %bb.o
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1156, !noalias !19122 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.3, label %bb.q, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.q:                                             ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.ec = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.ec, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.m, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.p
  %i.ed = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270: ; preds = %bb.o
  %i.ee = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273: ; preds = %bb.n
  %i.ef = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ef, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273 ], [ %i.ee, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270 ], [ %i.ed, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.m ]
  %.lcssa211 = phi i64 [ %i.dw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit273 ], [ %i.dy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit270 ], [ %i.ea, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.du, %bb.m ]
  %i.eg = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa211, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !5848, !alias.scope !19122
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.ej, ptr %i.ek, align 8, !alias.scope !19122
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.o, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !19122
  %.not83106 = icmp eq i32 %i.ej, 32768
  br i1 %.not83106, label %._crit_edge, label %.lr.ph107

._crit_edge:                                      ; preds = %bb.q, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080)
  ret void

.lr.ph107:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit
  %i.el = call noalias noundef nonnull dereferenceable(99344) ptr @_Znwm(i64 noundef 99344) #32 ; 19 uses
  %i.em = invoke noundef nonnull align 8 dereferenceable(794640) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.r unwind label %bb.x       ; 2 uses

bb.r:                                             ; preds = %.lr.ph107
  %i.en = load i32, ptr %i.ek, align 8, !tbaa !1360 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 794624
  %4 = load <2 x i32>, ptr %i.eo, align 8, !tbaa !1131
  %5 = getelementptr inbounds nuw i8, ptr %i.em, i64 794632
  %6 = load i32, ptr %5, align 8, !tbaa !1131
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.idx.i = phi i64 [ 0, %bb.r ], [ %.add.i.7, %bb.s ] ; 9 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  store ptr null, ptr %.ptr.i, align 8, !tbaa !1126
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr null, ptr %.ptr.i.1, align 8, !tbaa !1126
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  store ptr null, ptr %.ptr.i.2, align 8, !tbaa !1126
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  store ptr null, ptr %.ptr.i.3, align 8, !tbaa !1126
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  store ptr null, ptr %.ptr.i.4, align 8, !tbaa !1126
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  store ptr null, ptr %.ptr.i.5, align 8, !tbaa !1126
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  store ptr null, ptr %.ptr.i.6, align 8, !tbaa !1126
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.ev, i64 168
  store ptr null, ptr %.ptr.i.7, align 8, !tbaa !1126
  %.add.i.7 = add nuw nsw i64 %.idx.i, 192        ; 2 uses
  %i.ew = icmp eq i64 %.add.i.7, 98304
  br i1 %i.ew, label %bb.t, label %bb.s

bb.t:                                             ; preds = %bb.s
  %i.ex = lshr i32 %i.en, 3
  %i.ey = shl i32 %i.en, 2
  %i.ez = shl i32 %i.en, 7
  %7 = and i32 %i.ez, 3968
  %8 = add nsw i32 %6, %7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 98304
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 99328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fa, i8 0, i64 1024, i1 false)
  %9 = and i32 %8, -128
  %10 = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ey, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = add nsw <2 x i32> %12, %4
  %14 = and <2 x i32> %13, splat (i32 -128)
  store <2 x i32> %14, ptr %i.fb, align 8, !tbaa !1131
  %15 = getelementptr inbounds nuw i8, ptr %i.el, i64 99336
  store i32 %9, ptr %15, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.el, i64 99340
  store i32 0, ptr %16, align 4, !tbaa !5868
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.i = phi i64 [ 0, %bb.t ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, i64 24, i1 false)
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, i64 24, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 4096
  br i1 %exitcond.not.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit, label %bb.u, !llvm.loop !19117

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit: ; preds = %bb.u
  %i.fj = zext i32 %i.en to i64
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.fj
  store ptr %i.el, ptr %i.fk, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(99344) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fl = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fm = load i32, ptr %i.ek, align 8, !tbaa !1360
  %i.fn = add i32 %i.fm, 1                        ; 4 uses
  %i.fo = lshr i32 %i.fn, 6                       ; 3 uses
  %i.fp = icmp ugt i32 %i.fn, 32767
  br i1 %i.fp, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEC2ENS0_13PartialCreateERKNS4_5CoordERKS6_b.exit
  %i.fq = and i32 %i.fn, 63
  %i.fr = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !1156 ; 2 uses
  %i.fu = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.ft, %i.fv
  %.not.i.i.i.i57 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i57, label %bb.w, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit

bb.w:                                             ; preds = %bb.v
  %i.fx = shl nsw i64 -1, %i.fu
  %i.fy = and i64 %i.ft, %i.fx                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.w
  %exitcond.not.i.i.i.i64199 = icmp eq i32 %i.fo, 511
  br i1 %exitcond.not.i.i.i.i64199, label %._crit_edge, label %.lr.ph201

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph201
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph201, !llvm.loop !41

.lr.ph201:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63200 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fr, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63200, 1 ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i.i65
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph201
  %i.gb = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.w
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fo, %bb.w ], [ %i.gb, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.fy, %bb.w ], [ %i.ga, %.critedge.loopexit.i.i.i.i66 ]
  %i.gc = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.gd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  %i.gf = or disjoint i32 %i.gc, %i.ge
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.v, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gf, %.critedge.i.i.i.i59 ], [ %i.fn, %bb.v ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.ek, align 8, !tbaa !1360
  %.not83 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not83, label %._crit_edge, label %.lr.ph107, !llvm.loop !19118

bb.x:                                             ; preds = %.lr.ph107
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 99344) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.be, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IdEESt14default_deleteIS5_EED2Ev.exit56 ], [ %i.gg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJS3_NSF_4TileEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !5811
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.e = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !1131 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1131 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1131 ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1131
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1131
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1304
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #35
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_4math4Vec3IdEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %10 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 9 uses
  %11 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1113
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.g = load ptr, ptr %0, align 8, !tbaa !1113
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  call void @_ZN7openvdb5v13_02io20getStreamMetadataPtrERSt8ios_base(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.192") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %i.j)
end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.cf, %bb.g ], [ %i.ci, %.critedge.loopexit.i.i.i.i ]
  %i.ck = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.f, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.cn, %.critedge.i.i.i.i ], [ %i.bt, %bb.f ] ; 2 uses
  %.not83 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not83, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph106

.preheader86:                                     ; preds = %bb.d, %bb.h
  %.013.i.i.i29 = phi ptr [ %i.cv, %bb.h ], [ %i.p, %bb.d ] ; 5 uses
  %.0712.i.i.i30 = phi i32 [ %i.cw, %bb.h ], [ 0, %bb.d ] ; 5 uses
  %i.co = load i64, ptr %.013.i.i.i29, align 8, !tbaa !1156, !noalias !20406 ; 2 uses
  %.not.i.i.i31 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i31, label %.preheader86.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

.preheader86.1:                                   ; preds = %.preheader86
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !1156, !noalias !20406 ; 2 uses
  %.not.i.i.i31.1 = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i.i31.1, label %.preheader86.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250

.preheader86.2:                                   ; preds = %.preheader86.1
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1156, !noalias !20406 ; 2 uses
  %.not.i.i.i31.2 = icmp eq i64 %i.cs, -1
  br i1 %.not.i.i.i31.2, label %.preheader86.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247

.preheader86.3:                                   ; preds = %.preheader86.2
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1156, !noalias !20406 ; 2 uses
  %.not.i.i.i31.3 = icmp eq i64 %i.cu, -1
  br i1 %.not.i.i.i31.3, label %bb.h, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit

bb.h:                                             ; preds = %.preheader86.3
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 32
  %i.cw = add nuw nsw i32 %.0712.i.i.i30, 4       ; 2 uses
  %exitcond.not.i.i.i34.3 = icmp eq i32 %i.cw, 512
  br i1 %exitcond.not.i.i.i34.3, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %.preheader86, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit: ; preds = %.preheader86.3
  %i.cx = or disjoint i32 %.0712.i.i.i30, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247: ; preds = %.preheader86.2
  %i.cy = or disjoint i32 %.0712.i.i.i30, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250: ; preds = %.preheader86.1
  %i.cz = or disjoint i32 %.0712.i.i.i30, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35: ; preds = %.preheader86, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit
  %.0712.i.i.i30.lcssa = phi i32 [ %i.cz, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250 ], [ %i.cy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247 ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit ], [ %.0712.i.i.i30, %.preheader86 ]
  %.lcssa229 = phi i64 [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247 ], [ %i.cu, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit ], [ %i.co, %.preheader86 ]
  %i.da = shl nuw nsw i32 %.0712.i.i.i30.lcssa, 6
  %i.db = xor i64 %.lcssa229, -1
  %i.dc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd            ; 2 uses
  %.not82101 = icmp eq i32 %i.de, 32768
  br i1 %.not82101, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit48
  %.sroa.4.0102 = phi i32 [ %.118.i.i.i.i41, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit48 ], [ %i.de, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35 ] ; 2 uses
  %i.df = zext i32 %.sroa.4.0102 to i64           ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.df
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1131
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !1131
  %i.dj = add i32 %.sroa.4.0102, 1                ; 4 uses
  %i.dk = lshr i32 %i.dj, 6                       ; 3 uses
  %i.dl = icmp ugt i32 %i.dj, 32767
  br i1 %i.dl, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dm = and i32 %i.dj, 63
  %i.dn = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1156 ; 2 uses
  %i.dq = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dp, %i.dr
  %.not.not.i.i.i.i36 = icmp eq i64 %i.ds, 0
  br i1 %.not.not.i.i.i.i36, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit48, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dt = xor i64 %i.dp, -1
  %i.du = shl nsw i64 -1, %i.dq
  %i.dv = and i64 %i.du, %i.dt                    ; 2 uses
  %.not25.i.i.i.i37 = icmp eq i64 %i.dv, 0
  br i1 %.not25.i.i.i.i37, label %.lr.ph.i.i.i.i42.preheader, label %.critedge.i.i.i.i38

.lr.ph.i.i.i.i42.preheader:                       ; preds = %bb.j
  %exitcond.not.i.i.i.i44194 = icmp eq i32 %i.dk, 511
  br i1 %exitcond.not.i.i.i.i44194, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph196

.lr.ph.i.i.i.i42:                                 ; preds = %.lr.ph196
  %exitcond.not.i.i.i.i44 = icmp eq i64 %indvars.iv.next.i.i.i.i45, 511
  br i1 %exitcond.not.i.i.i.i44, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph196, !llvm.loop !99

.lr.ph196:                                        ; preds = %.lr.ph.i.i.i.i42.preheader, %.lr.ph.i.i.i.i42
  %indvars.iv.i.i.i.i43195 = phi i64 [ %indvars.iv.next.i.i.i.i45, %.lr.ph.i.i.i.i42 ], [ %i.dn, %.lr.ph.i.i.i.i42.preheader ]
  %indvars.iv.next.i.i.i.i45 = add nuw nsw i64 %indvars.iv.i.i.i.i43195, 1 ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.i45
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i46 = icmp eq i64 %i.dx, -1
  br i1 %.not.i.i.i.i46, label %.lr.ph.i.i.i.i42, label %.critedge.loopexit.i.i.i.i47, !llvm.loop !99

.critedge.loopexit.i.i.i.i47:                     ; preds = %.lr.ph196
  %i.dy = xor i64 %i.dx, -1
  %i.dz = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i45 to i32
  br label %.critedge.i.i.i.i38

.critedge.i.i.i.i38:                              ; preds = %.critedge.loopexit.i.i.i.i47, %bb.j
  %.016.lcssa.i.i.i.i39 = phi i32 [ %i.dk, %bb.j ], [ %i.dz, %.critedge.loopexit.i.i.i.i47 ]
  %.0.lcssa.i.i.i.i40 = phi i64 [ %i.dv, %bb.j ], [ %i.dy, %.critedge.loopexit.i.i.i.i47 ]
  %i.ea = shl nuw nsw i32 %.016.lcssa.i.i.i.i39, 6
  %i.eb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i40, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = or disjoint i32 %i.ea, %i.ec
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit48

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit48: ; preds = %bb.i, %.critedge.i.i.i.i38
  %.118.i.i.i.i41 = phi i32 [ %i.ed, %.critedge.i.i.i.i38 ], [ %i.dj, %bb.i ] ; 2 uses
  %.not82 = icmp eq i32 %.118.i.i.i.i41, 32768
  br i1 %.not82, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.h, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit48, %.lr.ph.i.i.i.i42.preheader, %.lr.ph.i.i.i.i42, %bb.e, %.lr.ph106, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20407)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit
  %.013.i.i.i49 = phi ptr [ %i.p, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit ], [ %i.el, %bb.o ] ; 5 uses
  %.0712.i.i.i50 = phi i32 [ 0, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit ], [ %i.em, %bb.o ] ; 5 uses
  %i.ee = load i64, ptr %.013.i.i.i49, align 8, !tbaa !1156, !noalias !20407 ; 2 uses
  %.not.i.i.i51 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i51, label %bb.l, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1156, !noalias !20407 ; 2 uses
  %.not.i.i.i51.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i51.1, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1156, !noalias !20407 ; 2 uses
  %.not.i.i.i51.2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i51.2, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271

bb.n:                                             ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1156, !noalias !20407 ; 2 uses
  %.not.i.i.i51.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i51.3, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.o:                                             ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 32
  %i.em = add nuw nsw i32 %.0712.i.i.i50, 4       ; 2 uses
  %exitcond.not.i.i.i54.3 = icmp eq i32 %i.em, 512
  br i1 %exitcond.not.i.i.i54.3, label %._crit_edge, label %bb.k, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.n
  %i.en = or disjoint i32 %.0712.i.i.i50, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271: ; preds = %bb.m
  %i.eo = or disjoint i32 %.0712.i.i.i50, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274: ; preds = %bb.l
  %i.ep = or disjoint i32 %.0712.i.i.i50, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.k, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i50.lcssa = phi i32 [ %i.ep, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.eo, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271 ], [ %i.en, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i50, %bb.k ]
  %.lcssa212 = phi i64 [ %i.eg, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271 ], [ %i.ek, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.ee, %bb.k ]
  %i.eq = shl nuw nsw i32 %.0712.i.i.i50.lcssa, 6
  %i.er = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa212, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !6466, !alias.scope !20407
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.et, ptr %i.eu, align 8, !alias.scope !20407
  %.sroa.41.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %.sroa.41.0..sroa_idx.i53, align 8, !alias.scope !20407
  %.not84107 = icmp eq i32 %i.et, 32768
  br i1 %.not84107, label %._crit_edge, label %.lr.ph108

._crit_edge:                                      ; preds = %bb.o, %_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph108:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit
  %i.ev = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.ew = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.t       ; 2 uses

bb.p:                                             ; preds = %.lr.ph108
  %i.ex = load i32, ptr %i.eu, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.ex, 7
  %5 = and i32 %4, 3968
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.ew, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ev, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.fa = lshr i32 %i.ex, 3
  %i.fb = shl i32 %i.ex, 2
  %10 = insertelement <2 x i32> poison, i32 %i.fa, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.fb, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.ey, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.ez, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.ev, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.ev, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !6487
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i.7, %bb.q ] ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  store i32 %storemerge, ptr %i.fc, align 8, !tbaa !1131
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %storemerge, ptr %i.fe, align 8, !tbaa !1131
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i32 %storemerge, ptr %i.fg, align 8, !tbaa !1131
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i32 %storemerge, ptr %i.fi, align 8, !tbaa !1131
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store i32 %storemerge, ptr %i.fk, align 8, !tbaa !1131
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i32 %storemerge, ptr %i.fm, align 8, !tbaa !1131
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store i32 %storemerge, ptr %i.fo, align 8, !tbaa !1131
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  store i32 %storemerge, ptr %i.fq, align 8, !tbaa !1131
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit, label %bb.q, !llvm.loop !20403

_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit: ; preds = %bb.q
  %i.fr = zext i32 %i.ex to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fr
  store ptr %i.ev, ptr %i.fs, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.ft = load ptr, ptr %.sroa.41.0..sroa_idx.i53, align 8, !tbaa !1359 ; 2 uses
  %i.fu = load i32, ptr %i.eu, align 8, !tbaa !1360
  %i.fv = add i32 %i.fu, 1                        ; 4 uses
  %i.fw = lshr i32 %i.fv, 6                       ; 3 uses
  %i.fx = icmp ugt i32 %i.fv, 32767
  br i1 %i.fx, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit
  %i.fy = and i32 %i.fv, 63
  %i.fz = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1156 ; 2 uses
  %i.gc = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.gd = shl nuw i64 1, %i.gc
  %i.ge = and i64 %i.gb, %i.gd
  %.not.i.i.i.i58 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i58, label %bb.s, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit

bb.s:                                             ; preds = %bb.r
  %i.gf = shl nsw i64 -1, %i.gc
  %i.gg = and i64 %i.gb, %i.gf                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i63.preheader, label %.critedge.i.i.i.i60

.lr.ph.i.i.i.i63.preheader:                       ; preds = %bb.s
  %exitcond.not.i.i.i.i65200 = icmp eq i32 %i.fw, 511
  br i1 %exitcond.not.i.i.i.i65200, label %._crit_edge, label %.lr.ph202

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph202
  %exitcond.not.i.i.i.i65 = icmp eq i64 %indvars.iv.next.i.i.i.i66, 511
  br i1 %exitcond.not.i.i.i.i65, label %._crit_edge, label %.lr.ph202, !llvm.loop !41

.lr.ph202:                                        ; preds = %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63
  %indvars.iv.i.i.i.i64201 = phi i64 [ %indvars.iv.next.i.i.i.i66, %.lr.ph.i.i.i.i63 ], [ %i.fz, %.lr.ph.i.i.i.i63.preheader ]
  %indvars.iv.next.i.i.i.i66 = add nuw nsw i64 %indvars.iv.i.i.i.i64201, 1 ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next.i.i.i.i66
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i63, label %.critedge.loopexit.i.i.i.i67, !llvm.loop !41

.critedge.loopexit.i.i.i.i67:                     ; preds = %.lr.ph202
  %i.gj = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i66 to i32
  br label %.critedge.i.i.i.i60

.critedge.i.i.i.i60:                              ; preds = %.critedge.loopexit.i.i.i.i67, %bb.s
  %.016.lcssa.i.i.i.i61 = phi i32 [ %i.fw, %bb.s ], [ %i.gj, %.critedge.loopexit.i.i.i.i67 ]
  %.0.lcssa.i.i.i.i62 = phi i64 [ %i.gg, %bb.s ], [ %i.gi, %.critedge.loopexit.i.i.i.i67 ]
  %i.gk = shl nuw nsw i32 %.016.lcssa.i.i.i.i61, 6
  %i.gl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i62, i1 true)
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = or disjoint i32 %i.gk, %i.gm
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.r, %.critedge.i.i.i.i60
  %.118.i.i.i.i59 = phi i32 [ %i.gn, %.critedge.i.i.i.i60 ], [ %i.fv, %bb.r ] ; 2 uses
  store i32 %.118.i.i.i.i59, ptr %i.eu, align 8, !tbaa !1360
  %.not84 = icmp eq i32 %.118.i.i.i.i59, 32768
  br i1 %.not84, label %._crit_edge, label %.lr.ph108, !llvm.loop !20404

bb.t:                                             ; preds = %.lr.ph108
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit57
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj0EEESt14default_deleteIS4_EED2Ev.exit57 ], [ %i.go, %bb.t ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE22_M_emplace_hint_uniqueIJS3_NSG_4TileEEEESt17_Rb_tree_iteratorISI_ESt23_Rb_tree_const_iteratorISI_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !6422
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i64, ptr %3, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISI_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit ; 2 uses

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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj0EEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 6 uses
  %10 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 7 uses
end_hunk_8
begin_hunk_9_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.cf, %bb.g ], [ %i.ci, %.critedge.loopexit.i.i.i.i ]
  %i.ck = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.f, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.cn, %.critedge.i.i.i.i ], [ %i.bt, %bb.f ] ; 2 uses
  %.not83 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not83, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph106

.preheader86:                                     ; preds = %bb.d, %bb.h
  %.013.i.i.i29 = phi ptr [ %i.cv, %bb.h ], [ %i.p, %bb.d ] ; 5 uses
  %.0712.i.i.i30 = phi i32 [ %i.cw, %bb.h ], [ 0, %bb.d ] ; 5 uses
  %i.co = load i64, ptr %.013.i.i.i29, align 8, !tbaa !1156, !noalias !21623 ; 2 uses
  %.not.i.i.i31 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i31, label %.preheader86.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

.preheader86.1:                                   ; preds = %.preheader86
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !1156, !noalias !21623 ; 2 uses
  %.not.i.i.i31.1 = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i.i31.1, label %.preheader86.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250

.preheader86.2:                                   ; preds = %.preheader86.1
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1156, !noalias !21623 ; 2 uses
  %.not.i.i.i31.2 = icmp eq i64 %i.cs, -1
  br i1 %.not.i.i.i31.2, label %.preheader86.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247

.preheader86.3:                                   ; preds = %.preheader86.2
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1156, !noalias !21623 ; 2 uses
  %.not.i.i.i31.3 = icmp eq i64 %i.cu, -1
  br i1 %.not.i.i.i31.3, label %bb.h, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit

bb.h:                                             ; preds = %.preheader86.3
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i29, i64 32
  %i.cw = add nuw nsw i32 %.0712.i.i.i30, 4       ; 2 uses
  %exitcond.not.i.i.i34.3 = icmp eq i32 %i.cw, 512
  br i1 %exitcond.not.i.i.i34.3, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %.preheader86, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit: ; preds = %.preheader86.3
  %i.cx = or disjoint i32 %.0712.i.i.i30, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247: ; preds = %.preheader86.2
  %i.cy = or disjoint i32 %.0712.i.i.i30, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250: ; preds = %.preheader86.1
  %i.cz = or disjoint i32 %.0712.i.i.i30, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35: ; preds = %.preheader86, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit
  %.0712.i.i.i30.lcssa = phi i32 [ %i.cz, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250 ], [ %i.cy, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247 ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit ], [ %.0712.i.i.i30, %.preheader86 ]
  %.lcssa229 = phi i64 [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit250 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit247 ], [ %i.cu, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35.split.loop.exit ], [ %i.co, %.preheader86 ]
  %i.da = shl nuw nsw i32 %.0712.i.i.i30.lcssa, 6
  %i.db = xor i64 %.lcssa229, -1
  %i.dc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd            ; 2 uses
  %.not82101 = icmp eq i32 %i.de, 32768
  br i1 %.not82101, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit48
  %.sroa.4.0102 = phi i32 [ %.118.i.i.i.i41, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit48 ], [ %i.de, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35 ] ; 2 uses
  %i.df = zext i32 %.sroa.4.0102 to i64           ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.df
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1131
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !1131
  %i.dj = add i32 %.sroa.4.0102, 1                ; 4 uses
  %i.dk = lshr i32 %i.dj, 6                       ; 3 uses
  %i.dl = icmp ugt i32 %i.dj, 32767
  br i1 %i.dl, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dm = and i32 %i.dj, 63
  %i.dn = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1156 ; 2 uses
  %i.dq = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dp, %i.dr
  %.not.not.i.i.i.i36 = icmp eq i64 %i.ds, 0
  br i1 %.not.not.i.i.i.i36, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit48, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dt = xor i64 %i.dp, -1
  %i.du = shl nsw i64 -1, %i.dq
  %i.dv = and i64 %i.du, %i.dt                    ; 2 uses
  %.not25.i.i.i.i37 = icmp eq i64 %i.dv, 0
  br i1 %.not25.i.i.i.i37, label %.lr.ph.i.i.i.i42.preheader, label %.critedge.i.i.i.i38

.lr.ph.i.i.i.i42.preheader:                       ; preds = %bb.j
  %exitcond.not.i.i.i.i44194 = icmp eq i32 %i.dk, 511
  br i1 %exitcond.not.i.i.i.i44194, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph196

.lr.ph.i.i.i.i42:                                 ; preds = %.lr.ph196
  %exitcond.not.i.i.i.i44 = icmp eq i64 %indvars.iv.next.i.i.i.i45, 511
  br i1 %exitcond.not.i.i.i.i44, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph196, !llvm.loop !99

.lr.ph196:                                        ; preds = %.lr.ph.i.i.i.i42.preheader, %.lr.ph.i.i.i.i42
  %indvars.iv.i.i.i.i43195 = phi i64 [ %indvars.iv.next.i.i.i.i45, %.lr.ph.i.i.i.i42 ], [ %i.dn, %.lr.ph.i.i.i.i42.preheader ]
  %indvars.iv.next.i.i.i.i45 = add nuw nsw i64 %indvars.iv.i.i.i.i43195, 1 ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.i45
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i46 = icmp eq i64 %i.dx, -1
  br i1 %.not.i.i.i.i46, label %.lr.ph.i.i.i.i42, label %.critedge.loopexit.i.i.i.i47, !llvm.loop !99

.critedge.loopexit.i.i.i.i47:                     ; preds = %.lr.ph196
  %i.dy = xor i64 %i.dx, -1
  %i.dz = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i45 to i32
  br label %.critedge.i.i.i.i38

.critedge.i.i.i.i38:                              ; preds = %.critedge.loopexit.i.i.i.i47, %bb.j
  %.016.lcssa.i.i.i.i39 = phi i32 [ %i.dk, %bb.j ], [ %i.dz, %.critedge.loopexit.i.i.i.i47 ]
  %.0.lcssa.i.i.i.i40 = phi i64 [ %i.dv, %bb.j ], [ %i.dy, %.critedge.loopexit.i.i.i.i47 ]
  %i.ea = shl nuw nsw i32 %.016.lcssa.i.i.i.i39, 6
  %i.eb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i40, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = or disjoint i32 %i.ea, %i.ec
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit48

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit48: ; preds = %bb.i, %.critedge.i.i.i.i38
  %.118.i.i.i.i41 = phi i32 [ %i.ed, %.critedge.i.i.i.i38 ], [ %i.dj, %bb.i ] ; 2 uses
  %.not82 = icmp eq i32 %.118.i.i.i.i41, 32768
  br i1 %.not82, label %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.h, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit48, %.lr.ph.i.i.i.i42.preheader, %.lr.ph.i.i.i.i42, %bb.e, %.lr.ph106, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit35, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21624)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit
  %.013.i.i.i49 = phi ptr [ %i.p, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit ], [ %i.el, %bb.o ] ; 5 uses
  %.0712.i.i.i50 = phi i32 [ 0, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit ], [ %i.em, %bb.o ] ; 5 uses
  %i.ee = load i64, ptr %.013.i.i.i49, align 8, !tbaa !1156, !noalias !21624 ; 2 uses
  %.not.i.i.i51 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i51, label %bb.l, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1156, !noalias !21624 ; 2 uses
  %.not.i.i.i51.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i51.1, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1156, !noalias !21624 ; 2 uses
  %.not.i.i.i51.2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i51.2, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271

bb.n:                                             ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1156, !noalias !21624 ; 2 uses
  %.not.i.i.i51.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i51.3, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.o:                                             ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %.013.i.i.i49, i64 32
  %i.em = add nuw nsw i32 %.0712.i.i.i50, 4       ; 2 uses
  %exitcond.not.i.i.i54.3 = icmp eq i32 %i.em, 512
  br i1 %exitcond.not.i.i.i54.3, label %._crit_edge, label %bb.k, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.n
  %i.en = or disjoint i32 %.0712.i.i.i50, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271: ; preds = %bb.m
  %i.eo = or disjoint i32 %.0712.i.i.i50, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274: ; preds = %bb.l
  %i.ep = or disjoint i32 %.0712.i.i.i50, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.k, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i50.lcssa = phi i32 [ %i.ep, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.eo, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271 ], [ %i.en, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i50, %bb.k ]
  %.lcssa212 = phi i64 [ %i.eg, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274 ], [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit271 ], [ %i.ek, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.ee, %bb.k ]
  %i.eq = shl nuw nsw i32 %.0712.i.i.i50.lcssa, 6
  %i.er = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa212, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !7084, !alias.scope !21624
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.et, ptr %i.eu, align 8, !alias.scope !21624
  %.sroa.41.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %.sroa.41.0..sroa_idx.i53, align 8, !alias.scope !21624
  %.not84107 = icmp eq i32 %i.et, 32768
  br i1 %.not84107, label %._crit_edge, label %.lr.ph108

._crit_edge:                                      ; preds = %bb.o, %_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph108:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit
  %i.ev = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.ew = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.t       ; 2 uses

bb.p:                                             ; preds = %.lr.ph108
  %i.ex = load i32, ptr %i.eu, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.ex, 7
  %5 = and i32 %4, 3968
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.ew, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ev, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.fa = lshr i32 %i.ex, 3
  %i.fb = shl i32 %i.ex, 2
  %10 = insertelement <2 x i32> poison, i32 %i.fa, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.fb, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.ey, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.ez, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.ev, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.ev, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !7105
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i.7, %bb.q ] ; 9 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  store i32 %storemerge, ptr %i.fc, align 8, !tbaa !1131
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %storemerge, ptr %i.fe, align 8, !tbaa !1131
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i32 %storemerge, ptr %i.fg, align 8, !tbaa !1131
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i32 %storemerge, ptr %i.fi, align 8, !tbaa !1131
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store i32 %storemerge, ptr %i.fk, align 8, !tbaa !1131
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i32 %storemerge, ptr %i.fm, align 8, !tbaa !1131
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store i32 %storemerge, ptr %i.fo, align 8, !tbaa !1131
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  store i32 %storemerge, ptr %i.fq, align 8, !tbaa !1131
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit, label %bb.q, !llvm.loop !21620

_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit: ; preds = %bb.q
  %i.fr = zext i32 %i.ex to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fr
  store ptr %i.ev, ptr %i.fs, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.ft = load ptr, ptr %.sroa.41.0..sroa_idx.i53, align 8, !tbaa !1359 ; 2 uses
  %i.fu = load i32, ptr %i.eu, align 8, !tbaa !1360
  %i.fv = add i32 %i.fu, 1                        ; 4 uses
  %i.fw = lshr i32 %i.fv, 6                       ; 3 uses
  %i.fx = icmp ugt i32 %i.fv, 32767
  br i1 %i.fx, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKS6_b.exit
  %i.fy = and i32 %i.fv, 63
  %i.fz = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1156 ; 2 uses
  %i.gc = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.gd = shl nuw i64 1, %i.gc
  %i.ge = and i64 %i.gb, %i.gd
  %.not.i.i.i.i58 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i58, label %bb.s, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

bb.s:                                             ; preds = %bb.r
  %i.gf = shl nsw i64 -1, %i.gc
  %i.gg = and i64 %i.gb, %i.gf                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i63.preheader, label %.critedge.i.i.i.i60

.lr.ph.i.i.i.i63.preheader:                       ; preds = %bb.s
  %exitcond.not.i.i.i.i65200 = icmp eq i32 %i.fw, 511
  br i1 %exitcond.not.i.i.i.i65200, label %._crit_edge, label %.lr.ph202

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph202
  %exitcond.not.i.i.i.i65 = icmp eq i64 %indvars.iv.next.i.i.i.i66, 511
  br i1 %exitcond.not.i.i.i.i65, label %._crit_edge, label %.lr.ph202, !llvm.loop !41

.lr.ph202:                                        ; preds = %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63
  %indvars.iv.i.i.i.i64201 = phi i64 [ %indvars.iv.next.i.i.i.i66, %.lr.ph.i.i.i.i63 ], [ %i.fz, %.lr.ph.i.i.i.i63.preheader ]
  %indvars.iv.next.i.i.i.i66 = add nuw nsw i64 %indvars.iv.i.i.i.i64201, 1 ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next.i.i.i.i66
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i63, label %.critedge.loopexit.i.i.i.i67, !llvm.loop !41

.critedge.loopexit.i.i.i.i67:                     ; preds = %.lr.ph202
  %i.gj = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i66 to i32
  br label %.critedge.i.i.i.i60

.critedge.i.i.i.i60:                              ; preds = %.critedge.loopexit.i.i.i.i67, %bb.s
  %.016.lcssa.i.i.i.i61 = phi i32 [ %i.fw, %bb.s ], [ %i.gj, %.critedge.loopexit.i.i.i.i67 ]
  %.0.lcssa.i.i.i.i62 = phi i64 [ %i.gg, %bb.s ], [ %i.gi, %.critedge.loopexit.i.i.i.i67 ]
  %i.gk = shl nuw nsw i32 %.016.lcssa.i.i.i.i61, 6
  %i.gl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i62, i1 true)
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = or disjoint i32 %i.gk, %i.gm
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.r, %.critedge.i.i.i.i60
  %.118.i.i.i.i59 = phi i32 [ %i.gn, %.critedge.i.i.i.i60 ], [ %i.fv, %bb.r ] ; 2 uses
  store i32 %.118.i.i.i.i59, ptr %i.eu, align 8, !tbaa !1360
  %.not84 = icmp eq i32 %.118.i.i.i.i59, 32768
  br i1 %.not84, label %._crit_edge, label %.lr.ph108, !llvm.loop !21621

bb.t:                                             ; preds = %.lr.ph108
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit57
  %.pn.pn = phi { ptr, i32 } [ %i.bm, %_ZNSt10unique_ptrIA_N7openvdb5v13_010PointIndexIjLj1EEESt14default_deleteIS4_EED2Ev.exit57 ], [ %i.go, %bb.t ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE22_M_emplace_hint_uniqueIJS3_NSG_4TileEEEESt17_Rb_tree_iteratorISI_ESt23_Rb_tree_const_iteratorISI_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !7037
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i64, ptr %3, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISI_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit ; 2 uses

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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesINS0_10PointIndexIjLj1EEENS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %9 = alloca %"struct.openvdb::v13_0::PointIndex.5013", align 4 ; 6 uses
  %10 = alloca %"struct.openvdb::v13_0::PointIndex.5013", align 4 ; 7 uses
end_hunk_9
begin_hunk_10_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.by, %bb.h ], [ %i.cb, %.critedge.loopexit.i.i.i.i ]
  %i.cd = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.cg, %.critedge.i.i.i.i ], [ %i.bm, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.co, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cp, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ch = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !22872 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1156, !noalias !22872 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156, !noalias !22872 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1156, !noalias !22872 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cp = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cp, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !98

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit: ; preds = %.preheader84.3
  %i.cq = or disjoint i32 %.0712.i.i.i29, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245: ; preds = %.preheader84.2
  %i.cr = or disjoint i32 %.0712.i.i.i29, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248: ; preds = %.preheader84.1
  %i.cs = or disjoint i32 %.0712.i.i.i29, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34: ; preds = %.preheader84, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit
  %.0712.i.i.i29.lcssa = phi i32 [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cr, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.cq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %.0712.i.i.i29, %.preheader84 ]
  %.lcssa227 = phi i64 [ %i.cj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248 ], [ %i.cl, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245 ], [ %i.cn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit ], [ %i.ch, %.preheader84 ]
  %i.ct = shl nuw nsw i32 %.0712.i.i.i29.lcssa, 6
  %i.cu = xor i64 %.lcssa227, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = or disjoint i32 %i.ct, %i.cw            ; 2 uses
  %.not8099 = icmp eq i32 %i.cx, 32768
  br i1 %.not8099, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit47
  %.sroa.4.0100 = phi i32 [ %.118.i.i.i.i40, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit47 ], [ %i.cx, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34 ] ; 2 uses
  %i.cy = zext i32 %.sroa.4.0100 to i64           ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cy
  %i.db = load i8, ptr %i.da, align 1, !tbaa !1209, !range !1154, !noundef !1155
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !1126
  %i.dc = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.dd = lshr i32 %i.dc, 6                       ; 3 uses
  %i.de = icmp ugt i32 %i.dc, 32767
  br i1 %i.de, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1156 ; 2 uses
  %i.dj = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.di, %i.dk
  %.not.not.i.i.i.i35 = icmp eq i64 %i.dl, 0
  br i1 %.not.not.i.i.i.i35, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit47, label %bb.k

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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !99

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dg, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

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
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit47

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit47: ; preds = %bb.j, %.critedge.i.i.i.i37
  %.118.i.i.i.i40 = phi i32 [ %i.dw, %.critedge.i.i.i.i37 ], [ %i.dc, %bb.j ] ; 2 uses
  %.not80 = icmp eq i32 %.118.i.i.i.i40, 32768
  br i1 %.not80, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit47, %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41, %bb.f, %.lr.ph104, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit34, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE13beginValueAllEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22873)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ee, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %i.dx = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !22873 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156, !noalias !22873 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1156, !noalias !22873 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1156, !noalias !22873 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.ef = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.ef, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.o
  %i.eg = or disjoint i32 %.0712.i.i.i49, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269: ; preds = %bb.n
  %i.eh = or disjoint i32 %.0712.i.i.i49, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272: ; preds = %bb.m
  %i.ei = or disjoint i32 %.0712.i.i.i49, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i49.lcssa = phi i32 [ %i.ei, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.eh, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.eg, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i49, %bb.l ]
  %.lcssa210 = phi i64 [ %i.dz, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272 ], [ %i.eb, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269 ], [ %i.ed, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.dx, %bb.l ]
  %i.ej = shl nuw nsw i32 %.0712.i.i.i49.lcssa, 6
  %i.ek = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa210, i1 true)
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = or disjoint i32 %i.ej, %i.el            ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !7724, !alias.scope !22873
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !alias.scope !22873
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !22873
  %.not82105 = icmp eq i32 %i.em, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIbLj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit
  %i.eo = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.eq, 7
  %5 = and i32 %4, 3968
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.ep, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.et = lshr i32 %i.eq, 3
  %i.eu = shl i32 %i.eq, 2
  %10 = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.eu, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.er, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.es, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !7746
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i8 %i.p, ptr %i.ev, align 8, !tbaa !1126
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i8 %i.p, ptr %i.ex, align 8, !tbaa !1126
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i8 %i.p, ptr %i.ez, align 8, !tbaa !1126
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i8 %i.p, ptr %i.fb, align 8, !tbaa !1126
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i8 %i.p, ptr %i.fd, align 8, !tbaa !1126
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i8 %i.p, ptr %i.ff, align 8, !tbaa !1126
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store i8 %i.p, ptr %i.fh, align 8, !tbaa !1126
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store i8 %i.p, ptr %i.fj, align 8, !tbaa !1126
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, label %bb.r, !llvm.loop !22869

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit: ; preds = %bb.r
  %i.fk = zext i32 %i.eq to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store ptr %i.eo, ptr %i.fl, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fm = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fn = load i32, ptr %i.en, align 8, !tbaa !1360
  %i.fo = add i32 %i.fn, 1                        ; 4 uses
  %i.fp = lshr i32 %i.fo, 6                       ; 3 uses
  %i.fq = icmp ugt i32 %i.fo, 32767
  br i1 %i.fq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit
  %i.fr = and i32 %i.fo, 63
  %i.fs = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !1156 ; 2 uses
  %i.fv = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fu, %i.fw
  %.not.i.i.i.i57 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i.i57, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.fy = shl nsw i64 -1, %i.fv
  %i.fz = and i64 %i.fu, %i.fy                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.t
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.fp, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !41

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fs, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i65
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.gc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.t
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fp, %bb.t ], [ %i.gc, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.fz, %bb.t ], [ %i.gb, %.critedge.loopexit.i.i.i.i66 ]
  %i.gd = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gf = trunc nuw nsw i64 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIbLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gg, %.critedge.i.i.i.i59 ], [ %i.fo, %bb.s ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.en, align 8, !tbaa !1360
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !22870

bb.u:                                             ; preds = %.lr.ph106
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gh, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !7685
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i16, ptr %3, align 1, !tbaa !1209
  store i16 %i.e, ptr %i.d, align 8, !tbaa !1209
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit ; 2 uses

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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIbLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIbNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.192", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.268", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
end_hunk_10
begin_hunk_11_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ %i.by, %bb.h ], [ %i.cb, %.critedge.loopexit.i.i.i.i ]
  %i.cd = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.cg, %.critedge.i.i.i.i ], [ %i.bm, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.co, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cp, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ch = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1156, !noalias !24051 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1156, !noalias !24051 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1156, !noalias !24051 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1156, !noalias !24051 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cp = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cp, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !98

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
  %i.db = load i8, ptr %i.da, align 1, !tbaa !1209, !range !1154, !noundef !1155
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !1126
  %i.dc = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.dd = lshr i32 %i.dc, 6                       ; 3 uses
  %i.de = icmp ugt i32 %i.dc, 32767
  br i1 %i.de, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1156 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !99

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dg, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !99

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24052)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ee, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %i.dx = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1156, !noalias !24052 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1156, !noalias !24052 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1156, !noalias !24052 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1156, !noalias !24052 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.ef = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.ef, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !40

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
  store ptr %0, ptr %3, align 8, !tbaa !8335, !alias.scope !24052
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !alias.scope !24052
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !24052
  %.not82105 = icmp eq i32 %i.em, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit
  %i.eo = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #32 ; 15 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !1360 ; 4 uses
  %4 = shl i32 %i.eq, 7
  %5 = and i32 %4, 3968
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.ep, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !1131
  %8 = add nsw i32 %7, %5
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.et = lshr i32 %i.eq, 3
  %i.eu = shl i32 %i.eq, 2
  %10 = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.eu, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.er, align 8, !tbaa !1131
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.es, align 8, !tbaa !1131
  %16 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !1131
  %17 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !8357
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i8 %i.p, ptr %i.ev, align 8, !tbaa !1126
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i8 %i.p, ptr %i.ex, align 8, !tbaa !1126
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i8 %i.p, ptr %i.ez, align 8, !tbaa !1126
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i8 %i.p, ptr %i.fb, align 8, !tbaa !1126
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i8 %i.p, ptr %i.fd, align 8, !tbaa !1126
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i8 %i.p, ptr %i.ff, align 8, !tbaa !1126
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store i8 %i.p, ptr %i.fh, align 8, !tbaa !1126
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store i8 %i.p, ptr %i.fj, align 8, !tbaa !1126
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, label %bb.r, !llvm.loop !24048

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit: ; preds = %bb.r
  %i.fk = zext i32 %i.eq to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store ptr %i.eo, ptr %i.fl, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fm = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !1359 ; 2 uses
  %i.fn = load i32, ptr %i.en, align 8, !tbaa !1360
  %i.fo = add i32 %i.fn, 1                        ; 4 uses
  %i.fp = lshr i32 %i.fo, 6                       ; 3 uses
  %i.fq = icmp ugt i32 %i.fo, 32767
  br i1 %i.fq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit
  %i.fr = and i32 %i.fo, 63
  %i.fs = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !1156 ; 2 uses
  %i.fv = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fu, %i.fw
  %.not.i.i.i.i57 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i.i57, label %bb.t, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.fy = shl nsw i64 -1, %i.fv
  %i.fz = and i64 %i.fu, %i.fy                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i62.preheader, label %.critedge.i.i.i.i59

.lr.ph.i.i.i.i62.preheader:                       ; preds = %bb.t
  %exitcond.not.i.i.i.i64198 = icmp eq i32 %i.fp, 511
  br i1 %exitcond.not.i.i.i.i64198, label %._crit_edge, label %.lr.ph200

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph200
  %exitcond.not.i.i.i.i64 = icmp eq i64 %indvars.iv.next.i.i.i.i65, 511
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !41

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fs, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i65
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !41

.critedge.loopexit.i.i.i.i66:                     ; preds = %.lr.ph200
  %i.gc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i65 to i32
  br label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %.critedge.loopexit.i.i.i.i66, %bb.t
  %.016.lcssa.i.i.i.i60 = phi i32 [ %i.fp, %bb.t ], [ %i.gc, %.critedge.loopexit.i.i.i.i66 ]
  %.0.lcssa.i.i.i.i61 = phi i64 [ %i.fz, %bb.t ], [ %i.gb, %.critedge.loopexit.i.i.i.i66 ]
  %i.gd = shl nuw nsw i32 %.016.lcssa.i.i.i.i60, 6
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i61, i1 true)
  %i.gf = trunc nuw nsw i64 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.s, %.critedge.i.i.i.i59
  %.118.i.i.i.i58 = phi i32 [ %i.gg, %.critedge.i.i.i.i59 ], [ %i.fo, %bb.s ] ; 2 uses
  store i32 %.118.i.i.i.i58, ptr %i.en, align 8, !tbaa !1360
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !24049

bb.u:                                             ; preds = %.lr.ph106
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 33808) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gh, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE22_M_emplace_hint_uniqueIJS3_NSE_4TileEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !1475
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !8296
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i16, ptr %3, align 1, !tbaa !1209
  store i16 %i.e, ptr %i.d, align 8, !tbaa !1209
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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1131 ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !1131 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1131 ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1131
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1131
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1304
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1304
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1113
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !1113
  %i.f = getelementptr i8, ptr %i.e, i64 -24
end_hunk_11
