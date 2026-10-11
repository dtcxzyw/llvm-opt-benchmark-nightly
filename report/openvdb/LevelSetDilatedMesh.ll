Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
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
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1112, !noalias !7306 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1112, !noalias !7306 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1112, !noalias !7306 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1112, !noalias !7306 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !220

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
  %i.dc = load float, ptr %i.db, align 4, !tbaa !1161
  store float %i.dc, ptr %i.da, align 8, !tbaa !768
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1112 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !221

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !221

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7307)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1112, !noalias !7307 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1112, !noalias !7307 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1112, !noalias !7307 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1112, !noalias !7307 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !170

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
  store ptr %0, ptr %3, align 8, !tbaa !2414, !alias.scope !7307
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !7307
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !7307
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 15 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !2364 ; 4 uses
  %4 = shl i32 %i.er, 7
  %5 = and i32 %4, 3968
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.eq, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !741
  %8 = add nsw i32 %7, %5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %10 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ev, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.es, align 8, !tbaa !741
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.et, align 8, !tbaa !741
  %16 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !741
  %17 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !2390
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  store float %i.p, ptr %i.ew, align 8, !tbaa !768
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store float %i.p, ptr %i.ey, align 8, !tbaa !768
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store float %i.p, ptr %i.fa, align 8, !tbaa !768
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store float %i.p, ptr %i.fc, align 8, !tbaa !768
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store float %i.p, ptr %i.fe, align 8, !tbaa !768
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store float %i.p, ptr %i.fg, align 8, !tbaa !768
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store float %i.p, ptr %i.fi, align 8, !tbaa !768
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store float %i.p, ptr %i.fk, align 8, !tbaa !768
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit, label %bb.r, !llvm.loop !7303

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit: ; preds = %bb.r
  %i.fl = zext i32 %i.er to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fl
  store ptr %i.ep, ptr %i.fm, align 8, !tbaa !768
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fn = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !2363 ; 2 uses
  %i.fo = load i32, ptr %i.eo, align 8, !tbaa !2364
  %i.fp = add i32 %i.fo, 1                        ; 4 uses
  %i.fq = lshr i32 %i.fp, 6                       ; 3 uses
  %i.fr = icmp ugt i32 %i.fp, 32767
  br i1 %i.fr, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit
  %i.fs = and i32 %i.fp, 63
  %i.ft = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !1112 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !172

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.ft, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i.i.i65
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1112 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !172

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
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !2364
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !7304

bb.u:                                             ; preds = %.lr.ph106
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gi, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !901
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !942
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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !741  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !741  ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !741  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !741  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !741
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !741
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !816
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !816
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #31
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #31
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIfNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.1316", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.1330", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.1330", align 8 ; 7 uses
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
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1112, !noalias !9065 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1112, !noalias !9065 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1112, !noalias !9065 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1112, !noalias !9065 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !220

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
  %i.dc = load double, ptr %i.db, align 8, !tbaa !1192
  store double %i.dc, ptr %i.da, align 8, !tbaa !768
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1112 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !221

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !221

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9066)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1112, !noalias !9066 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1112, !noalias !9066 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1112, !noalias !9066 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1112, !noalias !9066 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !170

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
  store ptr %0, ptr %3, align 8, !tbaa !3272, !alias.scope !9066
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !9066
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !9066
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 11 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %vector.ph203 unwind label %bb.s ; 2 uses

vector.ph203:                                     ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !2364 ; 4 uses
  %4 = shl i32 %i.er, 7
  %5 = and i32 %4, 3968
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.eq, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !741
  %8 = add nsw i32 %7, %5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %10 = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.ev, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.es, align 8, !tbaa !741
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.et, align 8, !tbaa !741
  %16 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !741
  %17 = getelementptr inbounds nuw i8, ptr %i.ep, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !3249
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph203
  %index205 = phi i64 [ 0, %vector.ph203 ], [ %index.next206.3, %vector.body204 ] ; 5 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ew, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.ex, align 8, !tbaa !768
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ez, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.fa, align 8, !tbaa !768
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  store <2 x double> %broadcast.splat, ptr %i.fc, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.fd, align 8, !tbaa !768
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ff, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.fg, align 8, !tbaa !768
  %index.next206.3 = add nuw nsw i64 %index205, 16 ; 2 uses
  %i.fh = icmp eq i64 %index.next206.3, 4096
  br i1 %i.fh, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body204, !llvm.loop !9062

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body204
  %i.fi = zext i32 %i.er to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fi
  store ptr %i.ep, ptr %i.fj, align 8, !tbaa !768
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fk = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !2363 ; 2 uses
  %i.fl = load i32, ptr %i.eo, align 8, !tbaa !2364
  %i.fm = add i32 %i.fl, 1                        ; 4 uses
  %i.fn = lshr i32 %i.fm, 6                       ; 3 uses
  %i.fo = icmp ugt i32 %i.fm, 32767
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %i.fp = and i32 %i.fm, 63
  %i.fq = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !1112 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !172

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fq, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i65
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !1112 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !172

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
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !2364
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !9063

bb.s:                                             ; preds = %.lr.ph106
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gf, %bb.s ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !901
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !964
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3238
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
  %i.k = load i32, ptr %i.b, align 8, !tbaa !741  ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !741  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !741  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !741  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !741
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !741
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !816
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !816
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #31
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #31
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.1316", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.1330", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.1330", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask", align 8 ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !743
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
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
  %i.ch = load i64, ptr %.013.i.i.i28, align 8, !tbaa !1112, !noalias !10885 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1112, !noalias !10885 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1112, !noalias !10885 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1112, !noalias !10885 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cp = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cp, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !220

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
  %i.db = load i8, ptr %i.da, align 1, !tbaa !807, !range !788, !noundef !789
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !768
  %i.dc = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.dd = lshr i32 %i.dc, 6                       ; 3 uses
  %i.de = icmp ugt i32 %i.dc, 32767
  br i1 %i.de, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1112 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !221

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dg, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1112 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !221

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10886)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ee, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %i.dx = load i64, ptr %.013.i.i.i48, align 8, !tbaa !1112, !noalias !10886 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1112, !noalias !10886 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1112, !noalias !10886 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1112, !noalias !10886 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.ef = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.ef, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !170

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
  store ptr %0, ptr %3, align 8, !tbaa !4002, !alias.scope !10886
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !alias.scope !10886
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !10886
  %.not82105 = icmp eq i32 %i.em, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit
  %i.eo = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 15 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.lr.ph106
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !2364 ; 4 uses
  %4 = shl i32 %i.eq, 7
  %5 = and i32 %4, 3968
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 270336
  %6 = getelementptr inbounds nuw i8, ptr %i.ep, i64 270344
  %7 = load i32, ptr %6, align 8, !tbaa !741
  %8 = add nsw i32 %7, %5
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, i8 0, i64 33792, i1 false)
  %9 = and i32 %8, -128
  %i.et = lshr i32 %i.eq, 3
  %i.eu = shl i32 %i.eq, 2
  %10 = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.eu, i64 1
  %12 = and <2 x i32> %11, <i32 536870784, i32 3968>
  %13 = load <2 x i32>, ptr %i.er, align 8, !tbaa !741
  %14 = add nsw <2 x i32> %12, %13
  %15 = and <2 x i32> %14, splat (i32 -128)
  store <2 x i32> %15, ptr %i.es, align 8, !tbaa !741
  %16 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33800
  store i32 %9, ptr %16, align 8, !tbaa !741
  %17 = getelementptr inbounds nuw i8, ptr %i.eo, i64 33804
  store i32 0, ptr %17, align 4, !tbaa !4021
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i8 %i.p, ptr %i.ev, align 8, !tbaa !768
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i8 %i.p, ptr %i.ex, align 8, !tbaa !768
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i8 %i.p, ptr %i.ez, align 8, !tbaa !768
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i8 %i.p, ptr %i.fb, align 8, !tbaa !768
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i8 %i.p, ptr %i.fd, align 8, !tbaa !768
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i8 %i.p, ptr %i.ff, align 8, !tbaa !768
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store i8 %i.p, ptr %i.fh, align 8, !tbaa !768
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store i8 %i.p, ptr %i.fj, align 8, !tbaa !768
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, label %bb.r, !llvm.loop !10882

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit: ; preds = %bb.r
  %i.fk = zext i32 %i.eq to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store ptr %i.eo, ptr %i.fl, align 8, !tbaa !768
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fm = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !2363 ; 2 uses
  %i.fn = load i32, ptr %i.en, align 8, !tbaa !2364
  %i.fo = add i32 %i.fn, 1                        ; 4 uses
  %i.fp = lshr i32 %i.fo, 6                       ; 3 uses
  %i.fq = icmp ugt i32 %i.fo, 32767
  br i1 %i.fq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit
  %i.fr = and i32 %i.fo, 63
  %i.fs = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !1112 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !172

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fs, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i65
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !1112 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !172

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
  store i32 %.118.i.i.i.i58, ptr %i.en, align 8, !tbaa !2364
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !10883

bb.u:                                             ; preds = %.lr.ph106
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 33808) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gh, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE22_M_emplace_hint_uniqueIJS3_NSE_4TileEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !901
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !885
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i16, ptr %3, align 1, !tbaa !807
  store i16 %i.e, ptr %i.d, align 8, !tbaa !807
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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !741  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !741  ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !741  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !741  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !741
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !741
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !816
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !816
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #31
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #31
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIbNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.1316", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.1330", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.1330", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
end_hunk_2
