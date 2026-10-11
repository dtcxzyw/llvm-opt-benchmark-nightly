Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MultiResGrid?download=true
inline.NumInlined: 34755
inline.NumDeleted: 11612
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 492
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
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !402, !noalias !3887 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !402, !noalias !3887 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !402, !noalias !3887 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !402, !noalias !3887 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !96

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
  %i.dc = load float, ptr %i.db, align 4, !tbaa !369
  store float %i.dc, ptr %i.da, align 8, !tbaa !367
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !402 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !97

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !97

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !402, !noalias !3888 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !402, !noalias !3888 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !402, !noalias !3888 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !402, !noalias !3888 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !47

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
  store ptr %0, ptr %3, align 8, !tbaa !867, !alias.scope !3888
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !3888
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !3888
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 13 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !489 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %4 = shl i32 %i.er, 7
  %5 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %6 = insertelement <4 x i32> %5, i32 %i.ev, i64 1
  %7 = insertelement <4 x i32> %6, i32 %4, i64 2
  %8 = and <4 x i32> %7, <i32 536870784, i32 3968, i32 3968, i32 poison>
  %9 = load <4 x i32>, ptr %i.es, align 8
  %10 = freeze <4 x i32> %9
  %.fr = freeze <4 x i32> %8
  %11 = add <4 x i32> %.fr, %10
  %12 = and <4 x i32> %11, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %12, ptr %i.et, align 8, !tbaa !340
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  store float %i.p, ptr %i.ew, align 8, !tbaa !367
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store float %i.p, ptr %i.ey, align 8, !tbaa !367
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store float %i.p, ptr %i.fa, align 8, !tbaa !367
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store float %i.p, ptr %i.fc, align 8, !tbaa !367
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store float %i.p, ptr %i.fe, align 8, !tbaa !367
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store float %i.p, ptr %i.fg, align 8, !tbaa !367
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store float %i.p, ptr %i.fi, align 8, !tbaa !367
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store float %i.p, ptr %i.fk, align 8, !tbaa !367
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit, label %bb.r, !llvm.loop !3884

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit: ; preds = %bb.r
  %i.fl = zext i32 %i.er to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fl
  store ptr %i.ep, ptr %i.fm, align 8, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fn = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !825 ; 2 uses
  %i.fo = load i32, ptr %i.eo, align 8, !tbaa !489
  %i.fp = add i32 %i.fo, 1                        ; 4 uses
  %i.fq = lshr i32 %i.fp, 6                       ; 3 uses
  %i.fr = icmp ugt i32 %i.fp, 32767
  br i1 %i.fr, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKfb.exit
  %i.fs = and i32 %i.fp, 63
  %i.ft = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !402 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !48

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.ft, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next.i.i.i.i65
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !48

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
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !489
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !3885

bb.u:                                             ; preds = %.lr.ph106
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gi, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !963
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !425
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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !340  ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !340  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !340  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !340
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !340
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !378
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !378
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIfNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.292", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.360", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.360", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 7 uses
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13writeTopologyERSob:bb.a
_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.ae, %bb.l ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.af, %bb.l ] ; 5 uses
  %i.x = load i64, ptr %.013.i.i.i, align 8, !tbaa !402, !noalias !3905 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !402, !noalias !3905 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.1, label %bb.j, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !402, !noalias !3905 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.2, label %bb.k, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !402, !noalias !3905 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.3, label %bb.l, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.af = add nuw nsw i32 %.0712.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.af, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.h, !llvm.loop !47

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit: ; preds = %bb.k
  %i.ag = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63: ; preds = %bb.j
  %i.ah = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66: ; preds = %bb.i
  %i.ai = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit: ; preds = %bb.h, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.ai, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66 ], [ %i.ah, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63 ], [ %i.ag, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.h ]
  %.lcssa58 = phi i64 [ %i.z, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66 ], [ %i.ab, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63 ], [ %i.ad, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit ], [ %i.x, %bb.h ]
  %i.aj = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa58, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 3 uses
  store ptr %0, ptr %3, align 8, !tbaa !824, !alias.scope !3905
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.am, ptr %i.an, align 8, !alias.scope !3905
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !3905
  %.not28 = icmp eq i32 %i.am, 32768
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit21: ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  resume { ptr, i32 } %i.ao

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit
  %i.ap = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit ], [ %i.am, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13cbeginChildOnEv.exit ]
  %i.aq = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !367
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE13writeTopologyERSob(ptr noundef nonnull align 8 dereferenceable(33808) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  %i.au = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !825 ; 2 uses
  %i.av = load i32, ptr %i.an, align 8, !tbaa !489
  %i.aw = add i32 %i.av, 1                        ; 4 uses
  %i.ax = lshr i32 %i.aw, 6                       ; 3 uses
  %i.ay = icmp ugt i32 %i.aw, 32767
  br i1 %i.ay, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.az = and i32 %i.aw, 63
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !402 ; 2 uses
  %i.bd = zext nneg i32 %i.az to i64              ; 2 uses
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %.not.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = shl nsw i64 -1, %i.bd
  %i.bh = and i64 %i.bc, %i.bg                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.n
  %exitcond.not.i.i.i.i51 = icmp eq i32 %i.ax, 511
  br i1 %exitcond.not.i.i.i.i51, label %._crit_edge, label %.lr.ph53

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph53
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph53, !llvm.loop !48

.lr.ph53:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i52 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i52, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !48

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph53
  %i.bk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.n
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bk, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bh, %bb.n ], [ %i.bj, %.critedge.loopexit.i.i.i.i ]
  %i.bl = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.m, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bo, %.critedge.i.i.i.i ], [ %i.aw, %bb.m ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.an, align 8, !tbaa !489
  %.not = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3904
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesIfNS0_4util8NodeMaskILj5EEEEEvRSoPKT_jRKT0_SC_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::io::MaskCompress", align 4 ; 10 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::util::NodeMask.273", align 8 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !342
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g) ; 4 uses
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 6, ptr %i.a, align 1, !tbaa !367
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bo unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp, %bb.b
  %.sroa.0105.0 = phi ptr [ %.sroa.0105.4, %bb.bp ], [ %.sroa.0105.4, %bb.bu ], [ %.sroa.0105.4, %bb.bt ], [ %.sroa.0105.4, %bb.br ], [ null, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !369
  %i.l = load ptr, ptr %0, align 8, !tbaa !342
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.o)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not76 = icmp eq ptr %i.p, null
  br i1 %.not76, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.p, align 4, !tbaa !369
  store float %i.q, ptr %i.b, align 4, !tbaa !369
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj5EEEEC2ERKS5_S8_PKfRS9_(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %6, align 4, !tbaa !1386
  store i8 %i.s, ptr %i.a, align 1, !tbaa !367
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  switch i8 %i.u, label %bb.ba [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  %i.y = icmp eq i8 %i.x, 5
  br i1 %i.y, label %bb.n, label %bb.ba

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.bb, %bb.n, %bb.l, %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !369 ; 2 uses
  %i.ae = bitcast float %i.ad to i32
  %i.af = call float @llvm.fabs.f32(float %i.ad)
  %i.ag = bitcast float %i.af to i32              ; 10 uses
  %i.ah = lshr i32 %i.ae, 16                      ; 3 uses
  %i.ai = trunc nuw i32 %i.ah to i16
  %i.aj = and i16 %i.ai, -32768                   ; 3 uses
  %i.ak = icmp samesign ugt i32 %i.ag, 947912703
  br i1 %i.ak, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.al = icmp samesign ugt i32 %i.ag, 2139095039
  br i1 %i.al, label %bb.r, label %bb.t, !prof !394

bb.r:                                             ; preds = %bb.q
  %i.am = or disjoint i16 %i.aj, 31744            ; 2 uses
  %i.an = icmp eq i32 %i.ag, 2139095040
  br i1 %i.an, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = lshr i32 %i.ag, 13
  %i.ap = and i32 %i.ao, 1023                     ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i16
  %i.as = trunc nuw nsw i32 %i.ap to i16
  %i.at = or i16 %i.as, %i.ar
  %i.au = or disjoint i16 %i.at, %i.am
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

bb.t:                                             ; preds = %bb.q
  %i.av = icmp samesign ugt i32 %i.ag, 1199566847
  br i1 %i.av, label %bb.u, label %bb.v, !prof !394

bb.u:                                             ; preds = %bb.t
  %i.aw = or disjoint i16 %i.aj, 31744
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ax = add nuw nsw i32 %i.ag, 134221823
  %i.ay = lshr i32 %i.ag, 13
  %i.az = and i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.ax, %i.az
  %i.bb = lshr i32 %i.ba, 13
  %i.bc = and i32 %i.ah, 32768
  %i.bd = or i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i16
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

bb.w:                                             ; preds = %bb.p
  %i.bf = icmp samesign ult i32 %i.ag, 855638017
  br i1 %i.bf, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = lshr i32 %i.ag, 23                      ; 2 uses
  %i.bh = sub nuw nsw i32 126, %i.bg
  %i.bi = and i32 %i.ag, 8388607
  %i.bj = or disjoint i32 %i.bi, 8388608          ; 2 uses
  %i.bk = add nsw i32 %i.bg, -94
  %i.bl = shl i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = lshr i32 %i.bj, %i.bh                   ; 2 uses
  %i.bn = and i32 %i.ah, 32768
  %i.bo = or i32 %i.bm, %i.bn
  %i.bp = trunc nuw i32 %i.bo to i16              ; 2 uses
  %i.bq = icmp ugt i32 %i.bl, -2147483648
  br i1 %i.bq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = icmp ne i32 %i.bl, -2147483648
  %i.bs = and i32 %i.bm, 1
  %.not.i.i.i.i = icmp eq i32 %i.bs, 0
  %or.cond.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = add nuw i16 %i.bp, 1
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.033.i.i.i.i = phi i16 [ %i.aj, %bb.w ], [ %i.au, %bb.s ], [ %i.aw, %bb.u ], [ %i.be, %bb.v ], [ %i.am, %bb.r ], [ %i.bt, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  %i.bu = zext i16 %.033.i.i.i.i to i32
  %i.bv = shl nuw nsw i32 %i.bu, 13
  %i.bw = and i32 %i.bv, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %.033.i.i.i.i to i32
  %i.bx = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.by = icmp samesign ugt i32 %i.bw, 8388607
  br i1 %i.by, label %bb.aa, label %bb.ad, !prof !938

bb.aa:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i
  %i.bz = or disjoint i32 %i.bw, %i.bx            ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bw, 260046848
  br i1 %i.ca, label %bb.ab, label %bb.ac, !prof !938

bb.ab:                                            ; preds = %bb.aa
  %i.cb = add nuw nsw i32 %i.bz, 939524096
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cc = or i32 %i.bz, 2139095040
  br label %bb.af

bb.ad:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i
  %.not.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.ce = add nsw i32 %i.cd, -8                   ; 2 uses
  %i.cf = shl i32 %i.bw, %i.ce
  %i.cg = or i32 %i.bx, %i.cf
  %i.ch = or i32 %i.cg, 947912704
  %i.ci = shl nuw nsw i32 %i.ce, 23
  %i.cj = sub nuw i32 %i.ch, %i.ci
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.i.i.i = phi i32 [ %i.cb, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cj, %bb.ae ], [ %i.bx, %bb.ad ]
  store i32 %.sroa.0.0.i.i.i, ptr %i.c, align 4, !tbaa !369
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.ag unwind label %bb.ay     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !367
  %i.cm = icmp eq i8 %i.cl, 5
  br i1 %i.cm, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !369 ; 2 uses
  %i.cp = bitcast float %i.co to i32
  %i.cq = call float @llvm.fabs.f32(float %i.co)
  %i.cr = bitcast float %i.cq to i32              ; 10 uses
  %i.cs = lshr i32 %i.cp, 16                      ; 3 uses
  %i.ct = trunc nuw i32 %i.cs to i16
  %i.cu = and i16 %i.ct, -32768                   ; 3 uses
  %i.cv = icmp samesign ugt i32 %i.cr, 947912703
  br i1 %i.cv, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.cw = icmp samesign ugt i32 %i.cr, 2139095039
  br i1 %i.cw, label %bb.aj, label %bb.al, !prof !394

bb.aj:                                            ; preds = %bb.ai
  %i.cx = or disjoint i16 %i.cu, 31744            ; 2 uses
  %i.cy = icmp eq i32 %i.cr, 2139095040
  br i1 %i.cy, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i88, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = lshr i32 %i.cr, 13
  %i.da = and i32 %i.cz, 1023                     ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = zext i1 %i.db to i16
  %i.dd = trunc nuw nsw i32 %i.da to i16
  %i.de = or i16 %i.dd, %i.dc
  %i.df = or disjoint i16 %i.de, %i.cx
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i88

bb.al:                                            ; preds = %bb.ai
  %i.dg = icmp samesign ugt i32 %i.cr, 1199566847
  br i1 %i.dg, label %bb.am, label %bb.an, !prof !394

bb.am:                                            ; preds = %bb.al
  %i.dh = or disjoint i16 %i.cu, 31744
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE13writeTopologyERSob:bb.a
  invoke void @_ZN7openvdb5v13_02io21writeCompressedValuesIfNS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SC_b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i32 noundef 4096, ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 8 dereferenceable(512) %i.a, i1 noundef zeroext %2)
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit21

bb.c:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.g ] ; 6 uses
  %i.f = lshr i64 %indvars.iv, 6
  %i.g = and i64 %i.f, 67108863
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !402  ; 2 uses
  %i.j = and i64 %indvars.iv, 62
  %i.k = shl nuw nsw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load float, ptr %i.m, align 8, !tbaa !369
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi float [ %i.n, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.o, ptr %i.p, align 4, !tbaa !369
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.q = and i64 %indvars.iv.next, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.i, %i.r
  %.not.i.1 = icmp eq i64 %i.s, 0
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = load float, ptr %i.t, align 8, !tbaa !369
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi float [ %i.u, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store float %i.v, ptr %i.w, align 4, !tbaa !369
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 4096
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !3908

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  %i.x = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.a), !noalias !3912 ; 3 uses
  store ptr %0, ptr %3, align 8, !tbaa !603, !alias.scope !3912
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.x, ptr %i.y, align 8, !alias.scope !3912
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !3912
  %.not25 = icmp eq i32 %i.x, 4096
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit21: ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  resume { ptr, i32 } %i.z

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit
  %i.aa = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit ], [ %i.x, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ]
  %i.ab = call noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !367
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 noundef 64) ; 0 uses
  %i.ah = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !914 ; 2 uses
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !490
  %i.aj = add i32 %i.ai, 1                        ; 4 uses
  %i.ak = lshr i32 %i.aj, 6                       ; 3 uses
  %i.al = icmp ugt i32 %i.aj, 4095
  br i1 %i.al, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.am = and i32 %i.aj, 63
  %i.an = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !402 ; 2 uses
  %i.aq = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ap, %i.ar
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i64 -1, %i.aq
  %i.au = and i64 %i.ap, %i.at                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %exitcond.not.i.i.i.i34 = icmp eq i32 %i.ak, 63
  br i1 %exitcond.not.i.i.i.i34, label %._crit_edge, label %.lr.ph36

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph36
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph36, !llvm.loop !49

.lr.ph36:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i35 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i35, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !49

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph36
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ak, %bb.i ], [ %i.ax, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.au, %bb.i ], [ %i.aw, %.critedge.loopexit.i.i.i.i ]
  %i.ay = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.az = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bb, %.critedge.i.i.i.i ], [ %i.aj, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.y, align 8, !tbaa !490
  %.not = icmp eq i32 %.118.i.i.i.i, 4096
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3911
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj5EEEEC2ERKS5_S8_PKfRS9_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(4096) %1, ptr noundef nonnull align 8 dereferenceable(4096) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load float, ptr %4, align 4, !tbaa !369  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store float %i.a, ptr %i.c, align 4, !tbaa !369
  store float %i.a, ptr %i.b, align 4, !tbaa !369
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i.i = phi ptr [ %1, %bb.a ], [ %i.k, %bb.f ] ; 5 uses
  %.0712.i.i = phi i32 [ 0, %bb.a ], [ %i.l, %bb.f ] ; 5 uses
  %i.d = load i64, ptr %.013.i.i, align 8, !tbaa !402 ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !402  ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.f, -1
  br i1 %.not.i.i.1, label %bb.d, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !402  ; 2 uses
  %.not.i.i.2 = icmp eq i64 %i.h, -1
  br i1 %.not.i.i.2, label %bb.e, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !402  ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.3, label %bb.f, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.l = add nuw nsw i32 %.0712.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.l, 512
  br i1 %exitcond.not.i.i.3, label %.thread64, label %bb.b, !llvm.loop !96

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit: ; preds = %bb.e
  %i.m = or disjoint i32 %.0712.i.i, 3
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94: ; preds = %bb.d
  %i.n = or disjoint i32 %.0712.i.i, 2
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97: ; preds = %bb.c
  %i.o = or disjoint i32 %.0712.i.i, 1
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit: ; preds = %bb.b, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit
  %.0712.i.i.lcssa = phi i32 [ %i.o, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97 ], [ %i.n, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94 ], [ %i.m, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit ], [ %.0712.i.i, %bb.b ]
  %.lcssa87 = phi i64 [ %i.f, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97 ], [ %i.h, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94 ], [ %i.j, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit ], [ %i.d, %bb.b ]
  %i.p = shl nuw nsw i32 %.0712.i.i.lcssa, 6
  %i.q = xor i64 %.lcssa87, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s               ; 2 uses
  %.not44 = icmp eq i32 %i.t, 32768
  br i1 %.not44, label %.thread64, label %.lr.ph

.thread64:                                        ; preds = %bb.f, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit
  store i8 0, ptr %0, align 4, !tbaa !1386
  br label %.thread38

.critedge:                                        ; preds = %.critedge28, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  store i8 0, ptr %0, align 4, !tbaa !1386
  switch i32 %.2, label %bb.z [
    i32 1, label %bb.m
    i32 2, label %bb.q
  ]

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit
  %.043 = phi i32 [ %.2, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ 0, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit ] ; 6 uses
  %.sroa.0.042 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.t, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit ] ; 4 uses
  %i.u = lshr i32 %.sroa.0.042, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !402
  %i.y = and i32 %.sroa.0.042, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.x, %i.aa
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.g, label %.critedge28

bb.g:                                             ; preds = %.lr.ph
  %i.ac = zext i32 %.sroa.0.042 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  %i.ae = icmp sgt i32 %.043, 0
  %.pre = load float, ptr %i.ad, align 4, !tbaa !369 ; 3 uses
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = load float, ptr %i.b, align 4, !tbaa !369
  %i.ag = fcmp oeq float %.pre, %i.af
  br i1 %i.ag, label %.critedge28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %cond = icmp eq i32 %.043, 2
  br i1 %cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = load float, ptr %i.c, align 4, !tbaa !369
  %i.ai = fcmp une float %.pre, %i.ah
  br i1 %i.ai, label %.critedge30, label %.critedge28

.thread:                                          ; preds = %bb.g, %bb.i
  %i.aj = sext i32 %.043 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aj
  store float %.pre, ptr %i.ak, align 4, !tbaa !369
  br label %.critedge30

.critedge30:                                      ; preds = %bb.j, %.thread
  %i.al = add nsw i32 %.043, 1
  br label %.critedge28

.critedge28:                                      ; preds = %bb.j, %.critedge30, %bb.h, %.lr.ph
  %.2 = phi i32 [ %.043, %.lr.ph ], [ %i.al, %.critedge30 ], [ 2, %bb.j ], [ %.043, %bb.h ] ; 4 uses
  %i.am = add i32 %.sroa.0.042, 1                 ; 4 uses
  %i.an = lshr i32 %i.am, 6                       ; 3 uses
  %i.ao = icmp ugt i32 %i.am, 32767
  br i1 %i.ao, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.critedge28
  %i.ap = and i32 %i.am, 63
  %i.aq = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !402 ; 2 uses
  %i.at = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = xor i64 %i.as, -1
  %i.ax = shl nsw i64 -1, %i.at
  %i.ay = and i64 %i.ax, %i.aw                    ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %exitcond.not.i.i.i78 = icmp eq i32 %i.an, 511
  br i1 %exitcond.not.i.i.i78, label %.critedge, label %.lr.ph80

.lr.ph.i.i.i:                                     ; preds = %.lr.ph80
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 511
  br i1 %exitcond.not.i.i.i, label %.critedge, label %.lr.ph80, !llvm.loop !97

.lr.ph80:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i79 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i79, 1 ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ba, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !97

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph80
  %i.bb = xor i64 %i.ba, -1
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.l
  %.016.lcssa.i.i.i = phi i32 [ %i.an, %bb.l ], [ %i.bc, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.bb, %.critedge.loopexit.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit: ; preds = %bb.k, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.bg, %.critedge.i.i.i ], [ %i.am, %bb.k ] ; 2 uses
  %i.bh = icmp slt i32 %.2, 3
  %i.bi = icmp ne i32 %.118.i.i.i, 32768
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !3913

bb.m:                                             ; preds = %.critedge
  %i.bj = load float, ptr %i.b, align 4, !tbaa !369 ; 2 uses
  %i.bk = load float, ptr %4, align 4, !tbaa !369 ; 2 uses
  %i.bl = fcmp oeq float %i.bj, %i.bk
  br i1 %i.bl, label %.thread38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = fneg float %i.bk
  %i.bn = fcmp oeq float %i.bj, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %0, align 4, !tbaa !1386
  br label %.thread38

bb.p:                                             ; preds = %bb.n
  store i8 2, ptr %0, align 4, !tbaa !1386
  br label %.thread38

bb.q:                                             ; preds = %.critedge
  %i.bo = load float, ptr %i.b, align 4, !tbaa !369 ; 4 uses
  %i.bp = load float, ptr %4, align 4, !tbaa !369 ; 4 uses
  %i.bq = fcmp oeq float %i.bo, %i.bp
  %i.br = load float, ptr %i.c, align 4, !tbaa !369 ; 4 uses
  %i.bs = fcmp oeq float %i.br, %i.bp             ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bs, label %.thread37, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 5, ptr %0, align 4, !tbaa !1386
  br label %.thread38

bb.t:                                             ; preds = %bb.q
  br i1 %i.bs, label %.thread37, label %bb.w

.thread37:                                        ; preds = %bb.r, %bb.t
  %i.bt = fneg float %i.bp
  %i.bu = fcmp oeq float %i.bo, %i.bt
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread37
  store i8 3, ptr %0, align 4, !tbaa !1386
  br label %.thread38

bb.v:                                             ; preds = %.thread37
  store i8 4, ptr %0, align 4, !tbaa !1386
  br label %.thread38

bb.w:                                             ; preds = %bb.t
  %i.bv = fneg float %i.bp
  %i.bw = fcmp oeq float %i.br, %i.bv
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 3, ptr %0, align 4, !tbaa !1386
  store float %i.br, ptr %i.b, align 4, !tbaa !369
  store float %i.bo, ptr %i.c, align 4, !tbaa !369
  br label %.thread38

bb.y:                                             ; preds = %bb.w
  store float %i.br, ptr %i.b, align 4, !tbaa !369
  store float %i.bo, ptr %i.c, align 4, !tbaa !369
  store i8 4, ptr %0, align 4, !tbaa !1386
  br label %.thread38

bb.z:                                             ; preds = %.critedge
  %i.bx = icmp sgt i32 %.2, 2
  br i1 %i.bx, label %bb.aa, label %.thread38

bb.aa:                                            ; preds = %bb.z
  store i8 6, ptr %0, align 4, !tbaa !1386
  br label %.thread38

.thread38:                                        ; preds = %.thread64, %bb.v, %bb.u, %bb.x, %bb.y, %bb.s, %bb.aa, %bb.z, %bb.m, %bb.p, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io10HalfWriterILb1EfE5writeERSoPKfjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.q, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 1                  ; 5 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 8 uses
  store i16 0, ptr %i.d, align 2
  %i.e = add nsw i64 %i.b, -1                     ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc
  br label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc
  %i.g = getelementptr i8, ptr %i.d, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !935
  br label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader

bb.b:                                             ; preds = %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit
  %i.h = and i32 %3, 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef %i.b)
          to label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %3, 1
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7openvdb5v13_02io11zipToStreamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef %i.c)
          to label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21

bb.f:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef %i.c)
          to label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21 ; 0 uses

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader, %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit ], [ 0, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.l = load float, ptr %i.k, align 4, !tbaa !369 ; 2 uses
  %i.m = bitcast float %i.l to i32
  %i.n = tail call float @llvm.fabs.f32(float %i.l)
  %i.o = bitcast float %i.n to i32                ; 10 uses
  %i.p = lshr i32 %i.m, 16                        ; 3 uses
  %i.q = trunc nuw i32 %i.p to i16
  %i.r = and i16 %i.q, -32768                     ; 3 uses
  %i.s = icmp samesign ugt i32 %i.o, 947912703
  br i1 %i.s, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit
  %i.t = icmp samesign ugt i32 %i.o, 2139095039
  br i1 %i.t, label %bb.h, label %bb.j, !prof !394

bb.h:                                             ; preds = %bb.g
  %i.u = or disjoint i16 %i.r, 31744              ; 2 uses
  %i.v = icmp eq i32 %i.o, 2139095040
  br i1 %i.v, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = lshr i32 %i.o, 13
  %i.x = and i32 %i.w, 1023                       ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i1 %i.y to i16
  %i.aa = trunc nuw nsw i32 %i.x to i16
  %i.ab = or i16 %i.aa, %i.z
  %i.ac = or disjoint i16 %i.ab, %i.u
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit

bb.j:                                             ; preds = %bb.g
  %i.ad = icmp samesign ugt i32 %i.o, 1199566847
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !394

bb.k:                                             ; preds = %bb.j
  %i.ae = or disjoint i16 %i.r, 31744
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit

bb.l:                                             ; preds = %bb.j
  %i.af = add nuw nsw i32 %i.o, 134221823
  %i.ag = lshr i32 %i.o, 13
  %i.ah = and i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %i.af, %i.ah
  %i.aj = lshr i32 %i.ai, 13
  %i.ak = and i32 %i.p, 32768
  %i.al = or i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i16
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit

bb.m:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit
  %i.an = icmp samesign ult i32 %i.o, 855638017
  br i1 %i.an, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = lshr i32 %i.o, 23                       ; 2 uses
  %i.ap = sub nuw nsw i32 126, %i.ao
  %i.aq = and i32 %i.o, 8388607
  %i.ar = or disjoint i32 %i.aq, 8388608          ; 2 uses
  %i.as = add nsw i32 %i.ao, -94
  %i.at = shl i32 %i.ar, %i.as                    ; 2 uses
  %i.au = lshr i32 %i.ar, %i.ap                   ; 2 uses
  %i.av = and i32 %i.p, 32768
  %i.aw = or i32 %i.au, %i.av
  %i.ax = trunc nuw i32 %i.aw to i16              ; 2 uses
  %i.ay = icmp ugt i32 %i.at, -2147483648
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp ne i32 %i.at, -2147483648
  %i.ba = and i32 %i.au, 1
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  %or.cond.i.i.i = select i1 %i.az, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = add nuw i16 %i.ax, 1
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit

_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p
  %.033.i.i.i = phi i16 [ %i.r, %bb.m ], [ %i.ac, %bb.i ], [ %i.ae, %bb.k ], [ %i.am, %bb.l ], [ %i.u, %bb.h ], [ %i.bb, %bb.p ], [ %i.ax, %bb.o ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %.033.i.i.i, ptr %i.bc, align 2, !tbaa !935
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit, !llvm.loop !3914

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit: ; preds = %bb.c, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.c) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit
  ret void

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21: ; preds = %bb.f, %bb.e, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.c) #32
  resume { ptr, i32 } %i.bd
}

declare void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN7openvdb5v13_02io11zipToStreamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesIfNS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SC_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::io::MaskCompress.729", align 4 ; 10 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::util::NodeMask.280", align 8 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !342
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g) ; 4 uses
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 6, ptr %i.a, align 1, !tbaa !367
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bo unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp, %bb.b
  %.sroa.097.0 = phi ptr [ %.sroa.097.4, %bb.bp ], [ %.sroa.097.4, %bb.bu ], [ %.sroa.097.4, %bb.bt ], [ %.sroa.097.4, %bb.br ], [ null, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !369
  %i.l = load ptr, ptr %0, align 8, !tbaa !342
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.o)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.p, align 4, !tbaa !369
  store float %i.q, ptr %i.b, align 4, !tbaa !369
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj4EEEEC2ERKS5_S8_PKfRS9_(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %6, align 4, !tbaa !1388
  store i8 %i.s, ptr %i.a, align 1, !tbaa !367
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  switch i8 %i.u, label %bb.ba [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v, i64 noundef 4)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  %i.y = icmp eq i8 %i.x, 5
  br i1 %i.y, label %bb.n, label %bb.ba

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z, i64 noundef 4)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.bb, %bb.n, %bb.l, %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !369 ; 2 uses
  %i.ae = bitcast float %i.ad to i32
  %i.af = call float @llvm.fabs.f32(float %i.ad)
  %i.ag = bitcast float %i.af to i32              ; 10 uses
  %i.ah = lshr i32 %i.ae, 16                      ; 3 uses
  %i.ai = trunc nuw i32 %i.ah to i16
  %i.aj = and i16 %i.ai, -32768                   ; 3 uses
  %i.ak = icmp samesign ugt i32 %i.ag, 947912703
  br i1 %i.ak, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.al = icmp samesign ugt i32 %i.ag, 2139095039
  br i1 %i.al, label %bb.r, label %bb.t, !prof !394

bb.r:                                             ; preds = %bb.q
  %i.am = or disjoint i16 %i.aj, 31744            ; 2 uses
  %i.an = icmp eq i32 %i.ag, 2139095040
  br i1 %i.an, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = lshr i32 %i.ag, 13
  %i.ap = and i32 %i.ao, 1023                     ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i16
  %i.as = trunc nuw nsw i32 %i.ap to i16
  %i.at = or i16 %i.as, %i.ar
  %i.au = or disjoint i16 %i.at, %i.am
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

bb.t:                                             ; preds = %bb.q
  %i.av = icmp samesign ugt i32 %i.ag, 1199566847
  br i1 %i.av, label %bb.u, label %bb.v, !prof !394

bb.u:                                             ; preds = %bb.t
  %i.aw = or disjoint i16 %i.aj, 31744
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ax = add nuw nsw i32 %i.ag, 134221823
  %i.ay = lshr i32 %i.ag, 13
  %i.az = and i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.ax, %i.az
  %i.bb = lshr i32 %i.ba, 13
  %i.bc = and i32 %i.ah, 32768
  %i.bd = or i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i16
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

bb.w:                                             ; preds = %bb.p
  %i.bf = icmp samesign ult i32 %i.ag, 855638017
  br i1 %i.bf, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = lshr i32 %i.ag, 23                      ; 2 uses
  %i.bh = sub nuw nsw i32 126, %i.bg
  %i.bi = and i32 %i.ag, 8388607
  %i.bj = or disjoint i32 %i.bi, 8388608          ; 2 uses
  %i.bk = add nsw i32 %i.bg, -94
  %i.bl = shl i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = lshr i32 %i.bj, %i.bh                   ; 2 uses
  %i.bn = and i32 %i.ah, 32768
  %i.bo = or i32 %i.bm, %i.bn
  %i.bp = trunc nuw i32 %i.bo to i16              ; 2 uses
  %i.bq = icmp ugt i32 %i.bl, -2147483648
  br i1 %i.bq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = icmp ne i32 %i.bl, -2147483648
  %i.bs = and i32 %i.bm, 1
  %.not.i.i.i.i = icmp eq i32 %i.bs, 0
  %or.cond.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = add nuw i16 %i.bp, 1
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i

_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.033.i.i.i.i = phi i16 [ %i.aj, %bb.w ], [ %i.au, %bb.s ], [ %i.aw, %bb.u ], [ %i.be, %bb.v ], [ %i.am, %bb.r ], [ %i.bt, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  %i.bu = zext i16 %.033.i.i.i.i to i32
  %i.bv = shl nuw nsw i32 %i.bu, 13
  %i.bw = and i32 %i.bv, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %.033.i.i.i.i to i32
  %i.bx = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.by = icmp samesign ugt i32 %i.bw, 8388607
  br i1 %i.by, label %bb.aa, label %bb.ad, !prof !938

bb.aa:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i
  %i.bz = or disjoint i32 %i.bw, %i.bx            ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bw, 260046848
  br i1 %i.ca, label %bb.ab, label %bb.ac, !prof !938

bb.ab:                                            ; preds = %bb.aa
  %i.cb = add nuw nsw i32 %i.bz, 939524096
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cc = or i32 %i.bz, 2139095040
  br label %bb.af

bb.ad:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i
  %.not.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.ce = add nsw i32 %i.cd, -8                   ; 2 uses
  %i.cf = shl i32 %i.bw, %i.ce
  %i.cg = or i32 %i.bx, %i.cf
  %i.ch = or i32 %i.cg, 947912704
  %i.ci = shl nuw nsw i32 %i.ce, 23
  %i.cj = sub nuw i32 %i.ch, %i.ci
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.i.i.i = phi i32 [ %i.cb, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cj, %bb.ae ], [ %i.bx, %bb.ad ]
  store i32 %.sroa.0.0.i.i.i, ptr %i.c, align 4, !tbaa !369
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.ag unwind label %bb.ay     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !367
  %i.cm = icmp eq i8 %i.cl, 5
  br i1 %i.cm, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !369 ; 2 uses
  %i.cp = bitcast float %i.co to i32
  %i.cq = call float @llvm.fabs.f32(float %i.co)
  %i.cr = bitcast float %i.cq to i32              ; 10 uses
  %i.cs = lshr i32 %i.cp, 16                      ; 3 uses
  %i.ct = trunc nuw i32 %i.cs to i16
  %i.cu = and i16 %i.ct, -32768                   ; 3 uses
  %i.cv = icmp samesign ugt i32 %i.cr, 947912703
  br i1 %i.cv, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.cw = icmp samesign ugt i32 %i.cr, 2139095039
  br i1 %i.cw, label %bb.aj, label %bb.al, !prof !394

bb.aj:                                            ; preds = %bb.ai
  %i.cx = or disjoint i16 %i.cu, 31744            ; 2 uses
  %i.cy = icmp eq i32 %i.cr, 2139095040
  br i1 %i.cy, label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i81, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = lshr i32 %i.cr, 13
  %i.da = and i32 %i.cz, 1023                     ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = zext i1 %i.db to i16
  %i.dd = trunc nuw nsw i32 %i.da to i16
  %i.de = or i16 %i.dd, %i.dc
  %i.df = or disjoint i16 %i.de, %i.cx
  br label %_ZN7openvdb5v13_02io10RealToHalfIfE7convertEf.exit.i81

bb.al:                                            ; preds = %bb.ai
  %i.dg = icmp samesign ugt i32 %i.cr, 1199566847
  br i1 %i.dg, label %bb.am, label %bb.an, !prof !394

bb.am:                                            ; preds = %bb.al
  %i.dh = or disjoint i16 %i.cu, 31744
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_02io21writeCompressedValuesIfNS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SC_b:bb.a
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fp, %i.fr
  %.not.i.i.i87 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i.i87, label %bb.be, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

bb.be:                                            ; preds = %bb.bd
  %i.ft = shl nsw i64 -1, %i.fq
  %i.fu = and i64 %i.fp, %i.ft                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.be
  %exitcond.not.i.i.i139 = icmp eq i32 %i.fk, 63
  br i1 %exitcond.not.i.i.i139, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph141

.lr.ph.i.i.i:                                     ; preds = %.lr.ph141
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph141, !llvm.loop !49

.lr.ph141:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.fn, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i140, 1 ; 4 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !49

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph141
  %i.fx = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.be
  %.016.lcssa.i.i.i = phi i32 [ %i.fk, %bb.be ], [ %i.fx, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.fu, %bb.be ], [ %i.fw, %.critedge.loopexit.i.i.i ]
  %i.fy = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.fz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = or disjoint i32 %i.fy, %i.ga
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread: ; preds = %.lr.ph109, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.gc = add i32 %.068107, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.bd
  %.118.i.i.i = phi i32 [ %i.gb, %.critedge.i.i.i ], [ %i.fj, %bb.bd ] ; 2 uses
  %i.gd = add i32 %.068107, 1                     ; 2 uses
  %.not102 = icmp eq i32 %.118.i.i.i, 4096
  br i1 %.not102, label %.loopexit, label %.lr.ph109, !llvm.loop !3915

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %7, i8 0, i64 512, i1 false), !tbaa !402
  %.not111 = icmp eq i32 %2, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bf
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gf = load float, ptr %i.ge, align 4
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.bk, %bb.bf
  %.169.lcssa = phi i32 [ 0, %bb.bf ], [ %.270, %bb.bk ]
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(512) %7, i64 noundef 512)
          to label %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit unwind label %bb.bl ; 0 uses

bb.bg:                                            ; preds = %.lr.ph, %bb.bk
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bk ] ; 4 uses
  %.169103 = phi i32 [ 0, %.lr.ph ], [ %.270, %bb.bk ] ; 4 uses
  %i.gh = lshr i64 %indvars.iv, 6
  %i.gi = and i64 %i.gh, 67108863                 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !402
  %i.gl = and i64 %indvars.iv, 63
  %i.gm = shl nuw i64 1, %i.gl                    ; 2 uses
  %i.gn = and i64 %i.gk, %i.gm
  %.not101 = icmp eq i64 %i.gn, 0
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.gp = load float, ptr %i.go, align 4, !tbaa !369 ; 2 uses
  br i1 %.not101, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = zext i32 %.169103 to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gq
  store float %i.gp, ptr %i.gr, align 4, !tbaa !369
  %i.gs = add i32 %.169103, 1
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.gt = fcmp oeq float %i.gp, %i.gf
  br i1 %i.gt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.gi ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !402
  %i.gw = or i64 %i.gv, %i.gm
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !402
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj, %bb.bi
  %.270 = phi i32 [ %i.gs, %bb.bh ], [ %.169103, %bb.bj ], [ %.169103, %bb.bi ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ez
  br i1 %exitcond.not, label %._crit_edge, label %bb.bg, !llvm.loop !3916

_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit

bb.bl:                                            ; preds = %._crit_edge
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.bm

.loopexit:                                        ; preds = %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, %bb.bc, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit, %bb.ba
  %.sroa.097.1 = phi ptr [ null, %bb.ba ], [ %i.fb, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ %i.fb, %bb.bc ], [ %i.fb, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.fb, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  %.3 = phi i32 [ %2, %bb.ba ], [ %.169.lcssa, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ 0, %bb.bc ], [ %i.gc, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.gd, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %bb.ay, %bb.o
  %.sroa.097.2 = phi ptr [ %i.fb, %bb.bl ], [ null, %bb.o ], [ null, %bb.ay ]
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.bl ], [ %i.ab, %bb.o ], [ %i.ew, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.g
  %.sroa.097.3 = phi ptr [ %.sroa.097.2, %bb.bm ], [ null, %bb.g ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bm ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bv

bb.bo:                                            ; preds = %bb.b, %.loopexit
  %.sroa.097.4 = phi ptr [ null, %bb.b ], [ %.sroa.097.1, %.loopexit ] ; 8 uses
  %.4 = phi i32 [ %2, %bb.b ], [ %.3, %.loopexit ] ; 3 uses
  %.not76 = icmp eq ptr %.sroa.097.4, null
  %i.gy = select i1 %.not76, ptr %1, ptr %.sroa.097.4 ; 4 uses
  br i1 %5, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN7openvdb5v13_02io10HalfWriterILb1EfE5writeERSoPKfjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gy, i32 noundef %.4, i32 noundef %i.h)
          to label %_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit unwind label %bb.c

bb.bq:                                            ; preds = %bb.bo
  %i.gz = and i32 %i.h, 4
  %.not.i = icmp eq i32 %i.gz, 0
  br i1 %.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = zext i32 %.4 to i64
  invoke void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gy, i64 noundef 4, i64 noundef %i.ha)
          to label %_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit unwind label %bb.c

bb.bs:                                            ; preds = %bb.bq
  %i.hb = and i32 %i.h, 1
  %.not10.i = icmp eq i32 %i.hb, 0
  %i.hc = zext i32 %.4 to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2                ; 2 uses
  br i1 %.not10.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN7openvdb5v13_02io11zipToStreamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gy, i64 noundef %i.hd)
          to label %_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit unwind label %bb.c

bb.bu:                                            ; preds = %bb.bs
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gy, i64 noundef %i.hd)
          to label %_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit unwind label %bb.c ; 0 uses

_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit: ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i90 = icmp eq ptr %.sroa.097.4, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.097.4) #32
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN7openvdb5v13_02io9writeDataIfEEvRSoPKT_jj.exit, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void

bb.bv:                                            ; preds = %bb.bn, %bb.c
  %.sroa.097.5 = phi ptr [ %.sroa.097.0, %bb.c ], [ %.sroa.097.3, %bb.bn ] ; 2 uses
  %.pn77 = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i91 = icmp eq ptr %.sroa.097.5, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit93, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92: ; preds = %bb.bv
  call void @_ZdaPv(ptr noundef nonnull %.sroa.097.5) #32
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit93

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit93: ; preds = %bb.bv, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92
  resume { ptr, i32 } %.pn77
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj4EEEEC2ERKS5_S8_PKfRS9_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #5 comdat align 2 {
bb.a:
  store i8 6, ptr %0, align 4, !tbaa !1388
  %i.a = load float, ptr %4, align 4, !tbaa !369  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store float %i.a, ptr %i.c, align 4, !tbaa !369
  store float %i.a, ptr %i.b, align 4, !tbaa !369
  %i.d = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %1) ; 2 uses
  %.not41 = icmp eq i32 %i.d, 4096
  br i1 %.not41, label %.thread55, label %.lr.ph

.thread55:                                        ; preds = %bb.a
  store i8 0, ptr %0, align 4, !tbaa !1388
  br label %.thread38

.critedge:                                        ; preds = %.critedge28, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  store i8 0, ptr %0, align 4, !tbaa !1388
  switch i32 %.2, label %bb.u [
    i32 1, label %bb.h
    i32 2, label %bb.l
  ]

.lr.ph:                                           ; preds = %bb.a, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit
  %.040 = phi i32 [ %.2, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ 0, %bb.a ] ; 6 uses
  %.sroa.0.039 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ %i.d, %bb.a ] ; 4 uses
  %i.e = lshr i32 %.sroa.0.039, 6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !402
  %i.i = and i32 %.sroa.0.039, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.h, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %.critedge28

bb.b:                                             ; preds = %.lr.ph
  %i.m = zext i32 %.sroa.0.039 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.m
  %i.o = icmp sgt i32 %.040, 0
  %.pre = load float, ptr %i.n, align 4, !tbaa !369 ; 3 uses
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load float, ptr %i.b, align 4, !tbaa !369
  %i.q = fcmp oeq float %.pre, %i.p
  br i1 %i.q, label %.critedge28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %cond = icmp eq i32 %.040, 2
  br i1 %cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load float, ptr %i.c, align 4, !tbaa !369
  %i.s = fcmp une float %.pre, %i.r
  br i1 %i.s, label %.critedge30, label %.critedge28

.thread:                                          ; preds = %bb.b, %bb.d
  %i.t = sext i32 %.040 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  store float %.pre, ptr %i.u, align 4, !tbaa !369
  br label %.critedge30

.critedge30:                                      ; preds = %bb.e, %.thread
  %i.v = add nsw i32 %.040, 1
  br label %.critedge28

.critedge28:                                      ; preds = %bb.e, %.critedge30, %bb.c, %.lr.ph
  %.2 = phi i32 [ %.040, %.lr.ph ], [ %i.v, %.critedge30 ], [ 2, %bb.e ], [ %.040, %bb.c ] ; 4 uses
  %i.w = add i32 %.sroa.0.039, 1                  ; 4 uses
  %i.x = lshr i32 %i.w, 6                         ; 3 uses
  %i.y = icmp ugt i32 %i.w, 4095
  br i1 %i.y, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge28
  %i.z = and i32 %i.w, 63
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !402 ; 2 uses
  %i.ad = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ac, %i.ae
  %.not.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = xor i64 %i.ac, -1
  %i.ah = shl nsw i64 -1, %i.ad
  %i.ai = and i64 %i.ah, %i.ag                    ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %exitcond.not.i.i.i63 = icmp eq i32 %i.x, 63
  br i1 %exitcond.not.i.i.i63, label %.critedge, label %.lr.ph65

.lr.ph.i.i.i:                                     ; preds = %.lr.ph65
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %.critedge, label %.lr.ph65, !llvm.loop !92

.lr.ph65:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i64 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i64, 1 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ak, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !92

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph65
  %i.al = xor i64 %i.ak, -1
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.g
  %.016.lcssa.i.i.i = phi i32 [ %i.x, %bb.g ], [ %i.am, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.ai, %bb.g ], [ %i.al, %.critedge.loopexit.i.i.i ]
  %i.an = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit: ; preds = %bb.f, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.aq, %.critedge.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.ar = icmp slt i32 %.2, 3
  %i.as = icmp ne i32 %.118.i.i.i, 4096
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !3917

bb.h:                                             ; preds = %.critedge
  %i.at = load float, ptr %i.b, align 4, !tbaa !369 ; 2 uses
  %i.au = load float, ptr %4, align 4, !tbaa !369 ; 2 uses
  %i.av = fcmp oeq float %i.at, %i.au
  br i1 %i.av, label %.thread38, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = fneg float %i.au
  %i.ax = fcmp oeq float %i.at, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %0, align 4, !tbaa !1388
  br label %.thread38

bb.k:                                             ; preds = %bb.i
  store i8 2, ptr %0, align 4, !tbaa !1388
  br label %.thread38

bb.l:                                             ; preds = %.critedge
  %i.ay = load float, ptr %i.b, align 4, !tbaa !369 ; 4 uses
  %i.az = load float, ptr %4, align 4, !tbaa !369 ; 4 uses
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = load float, ptr %i.c, align 4, !tbaa !369 ; 4 uses
  %i.bc = fcmp oeq float %i.bb, %i.az             ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.bc, label %.thread37, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 5, ptr %0, align 4, !tbaa !1388
  br label %.thread38

bb.o:                                             ; preds = %bb.l
  br i1 %i.bc, label %.thread37, label %bb.r

.thread37:                                        ; preds = %bb.m, %bb.o
  %i.bd = fneg float %i.az
  %i.be = fcmp oeq float %i.ay, %i.bd
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread37
  store i8 3, ptr %0, align 4, !tbaa !1388
  br label %.thread38

bb.q:                                             ; preds = %.thread37
  store i8 4, ptr %0, align 4, !tbaa !1388
  br label %.thread38

bb.r:                                             ; preds = %bb.o
  %i.bf = fneg float %i.az
  %i.bg = fcmp oeq float %i.bb, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 3, ptr %0, align 4, !tbaa !1388
  store float %i.bb, ptr %i.b, align 4, !tbaa !369
  store float %i.ay, ptr %i.c, align 4, !tbaa !369
  br label %.thread38

bb.t:                                             ; preds = %bb.r
  store float %i.bb, ptr %i.b, align 4, !tbaa !369
  store float %i.ay, ptr %i.c, align 4, !tbaa !369
  store i8 4, ptr %0, align 4, !tbaa !1388
  br label %.thread38

bb.u:                                             ; preds = %.critedge
  %i.bh = icmp sgt i32 %.2, 2
  br i1 %i.bh, label %bb.v, label %.thread38

bb.v:                                             ; preds = %bb.u
  store i8 6, ptr %0, align 4, !tbaa !1388
  br label %.thread38

.thread38:                                        ; preds = %.thread55, %bb.q, %bb.p, %bb.s, %bb.t, %bb.n, %bb.v, %bb.u, %bb.h, %bb.k, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE11readBuffersERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 8 ; 7 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>::ChildIter.281", align 8 ; 6 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>, 5>::ChildIter.274", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i.i.i = phi ptr [ %i.a, %bb.a ], [ %i.i, %bb.f ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %bb.f ] ; 5 uses
  %i.b = load i64, ptr %.013.i.i.i, align 8, !tbaa !402, !noalias !3926 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !402, !noalias !3926 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.1, label %bb.d, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !402, !noalias !3926 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.2, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !402, !noalias !3926 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.3, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.j = add nuw nsw i32 %.0712.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.j, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.b, !llvm.loop !47

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.e
  %i.k = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61: ; preds = %bb.d
  %i.l = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64: ; preds = %bb.c
  %i.m = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.b, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61 ], [ %i.k, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.b ]
  %.lcssa53 = phi i64 [ %i.d, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64 ], [ %i.f, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61 ], [ %i.h, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.b, %bb.b ]
  %i.n = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa53, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p               ; 3 uses
  store ptr %0, ptr %5, align 8, !tbaa !867, !alias.scope !3926
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !alias.scope !3926
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !3926
  %.not7 = icmp eq i32 %i.q, 32768
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit
  %i.u = phi i32 [ %i.q, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit ]
  %i.v = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32768 ; 2 uses
  %i.aa = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.z), !noalias !3927 ; 3 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !958, !alias.scope !3927
  store i32 %i.aa, ptr %i.s, align 8, !alias.scope !3927
  store ptr %i.z, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !3927
  %.not2.i = icmp eq i32 %i.aa, 4096
  br i1 %.not2.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i
  %i.ab = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i ], [ %i.aa, %bb.g ]
  %i.ac = call noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 -9223372034707292160, ptr %3, align 8, !alias.scope !3928
  store i32 -2147483648, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !tbaa !367, !alias.scope !3928
  store i64 9223372034707292159, ptr %i.t, align 4, !alias.scope !3928
  store i32 2147483647, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !367, !alias.scope !3928
  call void @_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE11readBuffersERSiRKNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %3, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ag = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !914 ; 2 uses
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !490
  %i.ai = add i32 %i.ah, 1                        ; 4 uses
  %i.aj = lshr i32 %i.ai, 6                       ; 3 uses
  %i.ak = icmp ugt i32 %i.ai, 4095
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.al = and i32 %i.ai, 63
  %i.am = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !402 ; 2 uses
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.ao, %i.aq
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.as = shl nsw i64 -1, %i.ap
  %i.at = and i64 %i.ao, %i.as                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %exitcond.not.i.i.i.i.i39 = icmp eq i32 %i.aj, 63
  br i1 %exitcond.not.i.i.i.i.i39, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph41

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph41
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph41, !llvm.loop !49

.lr.ph41:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i40 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i40, 1 ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !49

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph41
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.aj, %bb.i ], [ %i.aw, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.at, %bb.i ], [ %i.av, %.critedge.loopexit.i.i.i.i.i ]
  %i.ax = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.ay = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.h
  %.118.i.i.i.i.i = phi i32 [ %i.ba, %.critedge.i.i.i.i.i ], [ %i.ai, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i.i, ptr %i.s, align 8, !tbaa !490
  %.not.i = icmp eq i32 %.118.i.i.i.i.i, 4096
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph.i, !llvm.loop !3924

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit: ; preds = %.lr.ph.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bb = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !825 ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !489
  %i.bd = add i32 %i.bc, 1                        ; 4 uses
  %i.be = lshr i32 %i.bd, 6                       ; 3 uses
  %i.bf = icmp ugt i32 %i.bd, 32767
  br i1 %i.bf, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11readBuffersERSib.exit
  %i.bg = and i32 %i.bd, 63
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !402 ; 2 uses
  %i.bk = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEppEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bn = shl nsw i64 -1, %i.bk
  %i.bo = and i64 %i.bj, %i.bn                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKfb:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i4.i.i = phi i32 [ %i.hi, %bb.z ], [ %i.hs, %bb.aa ]
  %i.ht = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.ht, label %bb.ab, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit.i, !prof !394

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #22
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit.i

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.x, %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 48) #32
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit.i, %bb.o
  store ptr null, ptr %i.gc, align 8, !tbaa !367
  store atomic i32 0, ptr %i.gh seq_cst, align 8
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.m
  %i.hu = load ptr, ptr %i.gc, align 8, !tbaa !367
  %.not.i.i.i2.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i2.i, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = load atomic i32, ptr %i.gh seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not3.i.i.i.i, label %bb.af, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.hw = load ptr, ptr %i.gc, align 8, !tbaa !367 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.hw) #32
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i: ; preds = %bb.ac, %bb.n, %bb.ag, %bb.af, %bb.ae, %bb.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 96) #32
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE18makeChildNodeEmptyEjRKf.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE18makeChildNodeEmptyEjRKf.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE14unsetChildNodeEjRKf.exit.thread.i, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE14unsetChildNodeEjRKf.exit.i, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i
  br i1 %3, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE18makeChildNodeEmptyEjRKf.exit
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !402
  %i.ia = or i64 %i.hz, %i.bp
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !402
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKNS0_4math9CoordBBoxERKfb.exit

bb.ai:                                            ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE18makeChildNodeEmptyEjRKf.exit
  %i.ib = xor i64 %i.bp, -1
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !402
  %i.ie = and i64 %i.id, %i.ib
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !402
  br label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKNS0_4math9CoordBBoxERKfb.exit

_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE4fillERKNS0_4math9CoordBBoxERKfb.exit: ; preds = %._crit_edge48.split.split.i, %._crit_edge48.split.split.us.us.i, %bb.ai, %bb.ah, %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE8allocateEv.exit.i, %bb.e
  %i.if = add nsw i32 %i.az, 8                    ; 2 uses
  %.not39 = icmp sgt i32 %i.if, %i.z
  br i1 %.not39, label %._crit_edge, label %bb.b, !llvm.loop !3986

_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread: ; preds = %._crit_edge151.split, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE4fillERKNS0_4math9CoordBBoxERKfb(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 270336 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !340, !noalias !3998 ; 2 uses
  %i.c = add nsw i32 %i.b, 4095
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 270340 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !340, !noalias !3998 ; 2 uses
  %i.f = add nsw i32 %i.e, 4095
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 270344 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !340, !noalias !3998 ; 2 uses
  %i.i = add nsw i32 %i.h, 4095
  %i.j = load i32, ptr %1, align 4, !tbaa !340
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !340
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !340
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !340
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.c) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !340
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.f) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !340
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.i) ; 4 uses
  %i.aa = icmp sle i32 %i.k, %i.t
  %i.ab = icmp sle i32 %i.n, %i.w
  %or.cond.not121 = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = icmp sle i32 %i.q, %i.z
  %or.cond113 = select i1 %or.cond.not121, i1 %i.ac, i1 false
  br i1 %or.cond113, label %.preheader129, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread

.preheader129:                                    ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader129, %._crit_edge137.split
  %.0139 = phi i32 [ %i.ao, %._crit_edge137.split ], [ %i.k, %.preheader129 ] ; 4 uses
  %i.ag = shl i32 %.0139, 3
  %i.ah = and i32 %i.ag, 31744                    ; 2 uses
  %i.ai = lshr exact i32 %i.ah, 3
  %i.aj = and i32 %.0139, -128
  br label %.preheader

.preheader:                                       ; preds = %.preheader128, %._crit_edge
  %.035136 = phi i32 [ %i.n, %.preheader128 ], [ %i.ap, %._crit_edge ] ; 4 uses
  %i.ak = lshr i32 %.035136, 2
  %i.al = and i32 %i.ak, 992                      ; 2 uses
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = and i32 %.035136, -128
  br label %bb.b

._crit_edge137.split:                             ; preds = %._crit_edge
  %i.ao = add nsw i32 %i.aw, 128                  ; 2 uses
  %.not = icmp sgt i32 %i.ao, %i.t
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread, label %.preheader128, !llvm.loop !3993

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit
  %i.ap = add nsw i32 %i.ay, 128                  ; 2 uses
  %.not38 = icmp sgt i32 %i.ap, %i.w
  br i1 %.not38, label %._crit_edge137.split, label %.preheader, !llvm.loop !3994

bb.b:                                             ; preds = %.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit
  %.036131 = phi i32 [ %i.q, %.preheader ], [ %i.gf, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit ] ; 4 uses
  %i.aq = lshr i32 %.036131, 7
  %i.ar = and i32 %i.aq, 31                       ; 2 uses
  %i.as = or disjoint i32 %i.ar, %i.al            ; 2 uses
  %i.at = or disjoint i32 %i.as, %i.ah            ; 4 uses
  %i.au = shl nuw nsw i32 %i.ar, 7
  %i.av = load i32, ptr %i.a, align 8, !tbaa !340
  %i.aw = add nsw i32 %i.av, %i.ai                ; 3 uses
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !340
  %i.ay = add nsw i32 %i.ax, %i.am                ; 3 uses
  %i.az = load i32, ptr %i.g, align 8, !tbaa !340
  %i.ba = add nsw i32 %i.az, %i.au                ; 3 uses
  %i.bb = add nsw i32 %i.aw, 127                  ; 2 uses
  %i.bc = add nsw i32 %i.ay, 127                  ; 2 uses
  %i.bd = add nsw i32 %i.ba, 127                  ; 2 uses
  %i.be = icmp ne i32 %.0139, %i.aw
  %i.bf = icmp ne i32 %.035136, %i.ay
  %or.cond114.not124 = or i1 %i.be, %i.bf
  %i.bg = icmp ne i32 %.036131, %i.ba
  %or.cond115 = select i1 %or.cond114.not124, i1 true, i1 %i.bg
  %i.bh = icmp slt i32 %i.t, %i.bb
  %or.cond116 = select i1 %or.cond115, i1 true, i1 %i.bh
  %i.bi = icmp slt i32 %i.w, %i.bc
  %or.cond117 = select i1 %or.cond116, i1 true, i1 %i.bi
  %i.bj = icmp slt i32 %i.z, %i.bd
  %or.cond118 = select i1 %or.cond117, i1 true, i1 %i.bj
  %i.bk = lshr i32 %i.at, 6
  %i.bl = zext nneg i32 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bl ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !402 ; 2 uses
  %i.bo = and i32 %i.as, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 7 uses
  %i.br = and i64 %i.bn, %i.bq
  %.not.i.i = icmp eq i64 %i.br, 0                ; 2 uses
  br i1 %or.cond118, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.i

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.b
  br i1 %.not.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.bs = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 16 uses
  %i.bt = zext nneg i32 %i.at to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bl ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !402 ; 2 uses
  %i.bx = and i64 %i.bw, %i.bq
  %.not126 = icmp eq i64 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.bs, i8 0, i64 33792, i1 false)
  %i.bz = and i32 %.036131, -128
  store i32 %i.aj, ptr %i.by, align 8, !tbaa !340
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 33796
  store i32 %i.an, ptr %i.ca, align 4, !tbaa !340
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 33800
  store i32 %i.bz, ptr %i.cb, align 8, !tbaa !340
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 33804
  store i32 0, ptr %i.cc, align 4, !tbaa !1391
  br i1 %.not126, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.cd, i8 -1, i64 512, i1 false), !tbaa !402
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre.i = load float, ptr %i.bu, align 8, !tbaa !369 ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.7, %bb.f ] ; 9 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  store float %.pre.i, ptr %i.ce, align 8, !tbaa !367
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %.pre.i, ptr %i.cg, align 8, !tbaa !367
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store float %.pre.i, ptr %i.ci, align 8, !tbaa !367
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store float %.pre.i, ptr %i.ck, align 8, !tbaa !367
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store float %.pre.i, ptr %i.cm, align 8, !tbaa !367
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store float %.pre.i, ptr %i.co, align 8, !tbaa !367
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store float %.pre.i, ptr %i.cq, align 8, !tbaa !367
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store float %.pre.i, ptr %i.cs, align 8, !tbaa !367
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %.thread, label %bb.f, !llvm.loop !64

.thread:                                          ; preds = %bb.f
  %i.ct = load i64, ptr %i.bm, align 8, !tbaa !402
  %i.cu = or i64 %i.ct, %i.bq
  store i64 %i.cu, ptr %i.bm, align 8, !tbaa !402
  %i.cv = xor i64 %i.bq, -1
  %i.cw = and i64 %i.bw, %i.cv
  store i64 %i.cw, ptr %i.bv, align 8, !tbaa !402
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !367
  br label %bb.h

bb.g:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cx = zext nneg i32 %i.at to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !367 ; 2 uses
  %.not40 = icmp eq ptr %i.cz, null
  br i1 %.not40, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.037112 = phi ptr [ %i.bs, %.thread ], [ %i.cz, %bb.g ]
  %.sroa.speculated16.i = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.t)
  %.sroa.speculated11.i = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.w)
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.z)
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.speculated11.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.speculated16.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %.0139, ptr %4, align 4
  store i32 %.035136, ptr %.sroa.9.0..sroa_idx, align 4
  store i32 %.036131, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !367
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.af, align 4
  store i32 %.sroa.speculated.i, ptr %.sroa.4.0..sroa_idx50, align 4, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKfb(ptr noundef nonnull align 8 dereferenceable(33808) %.037112, ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit

bb.i:                                             ; preds = %bb.b
  %i.da = zext nneg i32 %i.at to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.da ; 3 uses
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE14unsetChildNodeEjRKf.exit.thread.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE14unsetChildNodeEjRKf.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE14unsetChildNodeEjRKf.exit.thread.i: ; preds = %bb.i
  %i.dc = load float, ptr %2, align 4, !tbaa !369
  store float %i.dc, ptr %i.db, align 8, !tbaa !367
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKf.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE14unsetChildNodeEjRKf.exit.i: ; preds = %bb.i
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !367 ; 4 uses
  %i.de = xor i64 %i.bq, -1
  %i.df = and i64 %i.bn, %i.de
  store i64 %i.df, ptr %i.bm, align 8, !tbaa !402
  %i.dg = load float, ptr %2, align 4, !tbaa !369
  store float %i.dg, ptr %i.db, align 8, !tbaa !367
  %i.dh = icmp eq ptr %i.dd, null
  br i1 %i.dh, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKf.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE14unsetChildNodeEjRKf.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 32768 ; 3 uses
  %i.dj = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.di), !noalias !3999 ; 2 uses
  %.not4.i = icmp eq i32 %i.dj, 4096
  br i1 %.not4.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i
  %.sroa.3.05.i = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEEppEv.exit.i ], [ %i.dj, %bb.j ] ; 2 uses
  %i.dk = zext i32 %.sroa.3.05.i to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !367 ; 7 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.af, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.dp = load atomic i32, ptr %i.do seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = load atomic i32, ptr %i.do seq_cst, align 4
  %.not125 = icmp eq i32 %i.dq, 0
  br i1 %.not125, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !367 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !393 ; 8 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.dv, align 8, !tbaa !385
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !386
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !342
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #22, !inline_history !69
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !342
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #22, !inline_history !69
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !367
  %.not.i.i.i.i.i49 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i49, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !340
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.dy, %bb.r ], [ %i.ei, %bb.s ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.t, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !394

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #22
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !393 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i1.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.em, align 8, !tbaa !385
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !386
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !342
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #22, !inline_history !70
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !342
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIfLj3EEELj4EEELj5EE8DeepCopyISI_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.be = load ptr, ptr %i.p, align 32, !tbaa !1482
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !426, !noundef !670
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.bi = add i8 %i.t, 1
  store i8 %i.bi, ptr %i.i, align 4, !tbaa !882
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1486
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.bj = add i8 %i.t, 1                          ; 2 uses
  store i8 %i.bj, ptr %i.i, align 4, !tbaa !882
  %i.bk = icmp ugt i8 %.pr, 1
  br i1 %i.bk, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4224 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE8DeepCopyISC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bt, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1480
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  store ptr null, ptr %i.bu, align 32, !tbaa !1482
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store i32 2, ptr %i.by, align 16, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4224 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 32, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 32, !tbaa !1482
  store ptr %i.ce, ptr %i.bu, align 32, !tbaa !1482
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !4224
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE8DeepCopyIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !4225

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE8DeepCopyIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>::DeepCopy", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not12 = icmp eq i32 %i.b, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.013 = phi i32 [ %i.b, %.lr.ph ], [ %i.an, %bb.g ] ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1477   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 262144
  %i.j = lshr i32 %.013, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !402
  %i.n = and i32 %.013, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.m, %i.p
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !1478 ; 2 uses
  %i.s = zext i32 %.013 to i64                    ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.s
  %i.v = load float, ptr %i.u, align 4, !tbaa !369
  store float %i.v, ptr %i.t, align 8, !tbaa !367
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.w = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 8 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !1477
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.s
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !367  ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.w, i8 0, i64 32768, i1 false), !tbaa !367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32768
  %i.ac = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, ptr noundef nonnull align 8 dereferenceable(512) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 33280
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 33280
  %i.af = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ad, ptr noundef nonnull align 8 dereferenceable(512) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 33792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 33792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !963
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 33804
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 33804
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1391
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !1391
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.z, ptr %4, align 8, !tbaa !1489
  store ptr %i.w, ptr %i.e, align 8, !tbaa !1490
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.f, align 4, !tbaa !433
  store i64 1, ptr %i.g, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store ptr %i.w, ptr %i.al, align 8, !tbaa !367
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 33808) #32
  resume { ptr, i32 } %i.am

bb.g:                                             ; preds = %bb.c, %bb.e
  %i.an = add i32 %.013, 1                        ; 2 uses
  %.not = icmp eq i32 %i.an, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4226
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !402
  store i64 %i.a, ptr %0, align 8, !tbaa !402
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !402
  store i64 %i.d, ptr %i.b, align 8, !tbaa !402
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !402
  store i64 %i.g, ptr %i.e, align 8, !tbaa !402
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !402
  store i64 %i.j, ptr %i.h, align 8, !tbaa !402
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !402
  store i64 %i.m, ptr %i.k, align 8, !tbaa !402
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !402
  store i64 %i.p, ptr %i.n, align 8, !tbaa !402
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !402
  store i64 %i.s, ptr %i.q, align 8, !tbaa !402
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !402
  store i64 %i.v, ptr %i.t, align 8, !tbaa !402
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !402
  store i64 %i.y, ptr %i.w, align 8, !tbaa !402
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !402
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !402
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !402
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !402
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !402
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !402
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !402
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !402
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i64, ptr %i.am, align 8, !tbaa !402
  store i64 %i.an, ptr %i.al, align 8, !tbaa !402
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !402
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !402
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.at = load i64, ptr %i.as, align 8, !tbaa !402
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !402
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !402
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !402
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !402
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !402
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !402
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !402
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !402
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !402
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !402
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !402
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !402
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !402
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !402
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !402
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !402
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !402
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !402
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !402
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !402
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !402
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !402
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !402
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !402
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !402
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !402
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !402
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !402
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !402
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !402
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !402
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !402
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !402
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !402
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !402
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !402
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !402
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !402
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !402
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.db = load i64, ptr %i.da, align 8, !tbaa !402
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !402
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !402
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !402
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !402
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !402
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !402
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !402
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !402
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !402
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !402
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !402
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !402
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !402
end_hunk_5
begin_hunk_6_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesclERKN3tbb6detail2d113blocked_rangeIjEE:bb.a
  %wide.load38.2 = load <2 x i64>, ptr %next.gep35.2, align 8, !tbaa !402
  %wide.load39.2 = load <2 x i64>, ptr %i.af, align 8, !tbaa !402
  %i.ag = or <2 x i64> %wide.load38.2, %wide.load36.2
  %i.ah = or <2 x i64> %wide.load39.2, %wide.load37.2
  store <2 x i64> %i.ag, ptr %next.gep35.2, align 8, !tbaa !402
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !402
  %next.gep34.3 = getelementptr i8, ptr %i.t, i64 33376
  %next.gep35.3 = getelementptr i8, ptr %i.t, i64 32864 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 33392
  %wide.load36.3 = load <2 x i64>, ptr %next.gep34.3, align 8, !tbaa !402
  %wide.load37.3 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !402
  %i.aj = getelementptr i8, ptr %i.t, i64 32880   ; 2 uses
  %wide.load38.3 = load <2 x i64>, ptr %next.gep35.3, align 8, !tbaa !402
  %wide.load39.3 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !402
  %i.ak = or <2 x i64> %wide.load38.3, %wide.load36.3
  %i.al = or <2 x i64> %wide.load39.3, %wide.load37.3
  store <2 x i64> %i.ak, ptr %next.gep35.3, align 8, !tbaa !402
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !402
  %next.gep34.4 = getelementptr i8, ptr %i.t, i64 33408
  %next.gep35.4 = getelementptr i8, ptr %i.t, i64 32896 ; 2 uses
  %i.am = getelementptr i8, ptr %i.t, i64 33424
  %wide.load36.4 = load <2 x i64>, ptr %next.gep34.4, align 8, !tbaa !402
  %wide.load37.4 = load <2 x i64>, ptr %i.am, align 8, !tbaa !402
  %i.an = getelementptr i8, ptr %i.t, i64 32912   ; 2 uses
  %wide.load38.4 = load <2 x i64>, ptr %next.gep35.4, align 8, !tbaa !402
  %wide.load39.4 = load <2 x i64>, ptr %i.an, align 8, !tbaa !402
  %i.ao = or <2 x i64> %wide.load38.4, %wide.load36.4
  %i.ap = or <2 x i64> %wide.load39.4, %wide.load37.4
  store <2 x i64> %i.ao, ptr %next.gep35.4, align 8, !tbaa !402
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !402
  %next.gep34.5 = getelementptr i8, ptr %i.t, i64 33440
  %next.gep35.5 = getelementptr i8, ptr %i.t, i64 32928 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 33456
  %wide.load36.5 = load <2 x i64>, ptr %next.gep34.5, align 8, !tbaa !402
  %wide.load37.5 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !402
  %i.ar = getelementptr i8, ptr %i.t, i64 32944   ; 2 uses
  %wide.load38.5 = load <2 x i64>, ptr %next.gep35.5, align 8, !tbaa !402
  %wide.load39.5 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !402
  %i.as = or <2 x i64> %wide.load38.5, %wide.load36.5
  %i.at = or <2 x i64> %wide.load39.5, %wide.load37.5
  store <2 x i64> %i.as, ptr %next.gep35.5, align 8, !tbaa !402
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !402
  %next.gep34.6 = getelementptr i8, ptr %i.t, i64 33472
  %next.gep35.6 = getelementptr i8, ptr %i.t, i64 32960 ; 2 uses
  %i.au = getelementptr i8, ptr %i.t, i64 33488
  %wide.load36.6 = load <2 x i64>, ptr %next.gep34.6, align 8, !tbaa !402
  %wide.load37.6 = load <2 x i64>, ptr %i.au, align 8, !tbaa !402
  %i.av = getelementptr i8, ptr %i.t, i64 32976   ; 2 uses
  %wide.load38.6 = load <2 x i64>, ptr %next.gep35.6, align 8, !tbaa !402
  %wide.load39.6 = load <2 x i64>, ptr %i.av, align 8, !tbaa !402
  %i.aw = or <2 x i64> %wide.load38.6, %wide.load36.6
  %i.ax = or <2 x i64> %wide.load39.6, %wide.load37.6
  store <2 x i64> %i.aw, ptr %next.gep35.6, align 8, !tbaa !402
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !402
  %next.gep34.7 = getelementptr i8, ptr %i.t, i64 33504
  %next.gep35.7 = getelementptr i8, ptr %i.t, i64 32992 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.t, i64 33520
  %wide.load36.7 = load <2 x i64>, ptr %next.gep34.7, align 8, !tbaa !402
  %wide.load37.7 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !402
  %i.az = getelementptr i8, ptr %i.t, i64 33008   ; 2 uses
  %wide.load38.7 = load <2 x i64>, ptr %next.gep35.7, align 8, !tbaa !402
  %wide.load39.7 = load <2 x i64>, ptr %i.az, align 8, !tbaa !402
  %i.ba = or <2 x i64> %wide.load38.7, %wide.load36.7
  %i.bb = or <2 x i64> %wide.load39.7, %wide.load37.7
  store <2 x i64> %i.ba, ptr %next.gep35.7, align 8, !tbaa !402
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !402
  %next.gep34.8 = getelementptr i8, ptr %i.t, i64 33536
  %next.gep35.8 = getelementptr i8, ptr %i.t, i64 33024 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.t, i64 33552
  %wide.load36.8 = load <2 x i64>, ptr %next.gep34.8, align 8, !tbaa !402
  %wide.load37.8 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !402
  %i.bd = getelementptr i8, ptr %i.t, i64 33040   ; 2 uses
  %wide.load38.8 = load <2 x i64>, ptr %next.gep35.8, align 8, !tbaa !402
  %wide.load39.8 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !402
  %i.be = or <2 x i64> %wide.load38.8, %wide.load36.8
  %i.bf = or <2 x i64> %wide.load39.8, %wide.load37.8
  store <2 x i64> %i.be, ptr %next.gep35.8, align 8, !tbaa !402
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !402
  %next.gep34.9 = getelementptr i8, ptr %i.t, i64 33568
  %next.gep35.9 = getelementptr i8, ptr %i.t, i64 33056 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.t, i64 33584
  %wide.load36.9 = load <2 x i64>, ptr %next.gep34.9, align 8, !tbaa !402
  %wide.load37.9 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !402
  %i.bh = getelementptr i8, ptr %i.t, i64 33072   ; 2 uses
  %wide.load38.9 = load <2 x i64>, ptr %next.gep35.9, align 8, !tbaa !402
  %wide.load39.9 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !402
  %i.bi = or <2 x i64> %wide.load38.9, %wide.load36.9
  %i.bj = or <2 x i64> %wide.load39.9, %wide.load37.9
  store <2 x i64> %i.bi, ptr %next.gep35.9, align 8, !tbaa !402
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !402
  %next.gep34.10 = getelementptr i8, ptr %i.t, i64 33600
  %next.gep35.10 = getelementptr i8, ptr %i.t, i64 33088 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.t, i64 33616
  %wide.load36.10 = load <2 x i64>, ptr %next.gep34.10, align 8, !tbaa !402
  %wide.load37.10 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !402
  %i.bl = getelementptr i8, ptr %i.t, i64 33104   ; 2 uses
  %wide.load38.10 = load <2 x i64>, ptr %next.gep35.10, align 8, !tbaa !402
  %wide.load39.10 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !402
  %i.bm = or <2 x i64> %wide.load38.10, %wide.load36.10
  %i.bn = or <2 x i64> %wide.load39.10, %wide.load37.10
  store <2 x i64> %i.bm, ptr %next.gep35.10, align 8, !tbaa !402
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !402
  %next.gep34.11 = getelementptr i8, ptr %i.t, i64 33632
  %next.gep35.11 = getelementptr i8, ptr %i.t, i64 33120 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.t, i64 33648
  %wide.load36.11 = load <2 x i64>, ptr %next.gep34.11, align 8, !tbaa !402
  %wide.load37.11 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !402
  %i.bp = getelementptr i8, ptr %i.t, i64 33136   ; 2 uses
  %wide.load38.11 = load <2 x i64>, ptr %next.gep35.11, align 8, !tbaa !402
  %wide.load39.11 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !402
  %i.bq = or <2 x i64> %wide.load38.11, %wide.load36.11
  %i.br = or <2 x i64> %wide.load39.11, %wide.load37.11
  store <2 x i64> %i.bq, ptr %next.gep35.11, align 8, !tbaa !402
  store <2 x i64> %i.br, ptr %i.bp, align 8, !tbaa !402
  %next.gep34.12 = getelementptr i8, ptr %i.t, i64 33664
  %next.gep35.12 = getelementptr i8, ptr %i.t, i64 33152 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.t, i64 33680
  %wide.load36.12 = load <2 x i64>, ptr %next.gep34.12, align 8, !tbaa !402
  %wide.load37.12 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !402
  %i.bt = getelementptr i8, ptr %i.t, i64 33168   ; 2 uses
  %wide.load38.12 = load <2 x i64>, ptr %next.gep35.12, align 8, !tbaa !402
  %wide.load39.12 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !402
  %i.bu = or <2 x i64> %wide.load38.12, %wide.load36.12
  %i.bv = or <2 x i64> %wide.load39.12, %wide.load37.12
  store <2 x i64> %i.bu, ptr %next.gep35.12, align 8, !tbaa !402
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !402
  %next.gep34.13 = getelementptr i8, ptr %i.t, i64 33696
  %next.gep35.13 = getelementptr i8, ptr %i.t, i64 33184 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.t, i64 33712
  %wide.load36.13 = load <2 x i64>, ptr %next.gep34.13, align 8, !tbaa !402
  %wide.load37.13 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !402
  %i.bx = getelementptr i8, ptr %i.t, i64 33200   ; 2 uses
  %wide.load38.13 = load <2 x i64>, ptr %next.gep35.13, align 8, !tbaa !402
  %wide.load39.13 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !402
  %i.by = or <2 x i64> %wide.load38.13, %wide.load36.13
  %i.bz = or <2 x i64> %wide.load39.13, %wide.load37.13
  store <2 x i64> %i.by, ptr %next.gep35.13, align 8, !tbaa !402
  store <2 x i64> %i.bz, ptr %i.bx, align 8, !tbaa !402
  %next.gep34.14 = getelementptr i8, ptr %i.t, i64 33728
  %next.gep35.14 = getelementptr i8, ptr %i.t, i64 33216 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.t, i64 33744
  %wide.load36.14 = load <2 x i64>, ptr %next.gep34.14, align 8, !tbaa !402
  %wide.load37.14 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !402
  %i.cb = getelementptr i8, ptr %i.t, i64 33232   ; 2 uses
  %wide.load38.14 = load <2 x i64>, ptr %next.gep35.14, align 8, !tbaa !402
  %wide.load39.14 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !402
  %i.cc = or <2 x i64> %wide.load38.14, %wide.load36.14
  %i.cd = or <2 x i64> %wide.load39.14, %wide.load37.14
  store <2 x i64> %i.cc, ptr %next.gep35.14, align 8, !tbaa !402
  store <2 x i64> %i.cd, ptr %i.cb, align 8, !tbaa !402
  %next.gep34.15 = getelementptr i8, ptr %i.t, i64 33760
  %next.gep35.15 = getelementptr i8, ptr %i.t, i64 33248 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.t, i64 33776
  %wide.load36.15 = load <2 x i64>, ptr %next.gep34.15, align 8, !tbaa !402
  %wide.load37.15 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !402
  %i.cf = getelementptr i8, ptr %i.t, i64 33264   ; 2 uses
  %wide.load38.15 = load <2 x i64>, ptr %next.gep35.15, align 8, !tbaa !402
  %wide.load39.15 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !402
  %i.cg = or <2 x i64> %wide.load38.15, %wide.load36.15
  %i.ch = or <2 x i64> %wide.load39.15, %wide.load37.15
  store <2 x i64> %i.cg, ptr %next.gep35.15, align 8, !tbaa !402
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.v, i8 0, i64 512, i1 false), !tbaa !402
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 266240
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.k
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !402
  %i.cl = and i64 %i.ck, %i.p
  %.not22 = icmp eq i64 %i.cl, 0
  br i1 %.not22, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = lshr i32 %.024, 3
  %i.cn = shl i32 %.024, 2
  %i.co = shl i32 %.024, 7
  %i.cp = and i32 %i.co, 3968
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 270336
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 270344
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !340
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = zext i32 %.024 to i64                   ; 2 uses
  %i.cv = and i32 %i.ct, -128
  %i.cw = insertelement <2 x i32> poison, i32 %i.cm, i64 0
  %i.cx = insertelement <2 x i32> %i.cw, i32 %i.cn, i64 1
  %i.cy = and <2 x i32> %i.cx, <i32 536870784, i32 3968>
  %i.cz = load <2 x i32>, ptr %i.cq, align 4, !tbaa !340
  %i.da = add nsw <2 x i32> %i.cz, %i.cy
  %i.db = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 78 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !430
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cu
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.db, i8 0, i64 33280, i1 false)
  %i.df = and <2 x i32> %i.da, splat (i32 -128)
  store <2 x i32> %i.df, ptr %i.de, align 8, !tbaa !340
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 33800
  store i32 %i.cv, ptr %i.dg, align 8, !tbaa !340
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 33804
  store i32 0, ptr %i.dh, align 4, !tbaa !1391
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 33280 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.di, i8 -1, i64 512, i1 false), !tbaa !402
  %.pre.i = load float, ptr %i.dd, align 4, !tbaa !369 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.7, %bb.e ] ; 9 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  store float %.pre.i, ptr %i.dj, align 8, !tbaa !367
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store float %.pre.i, ptr %i.dl, align 8, !tbaa !367
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store float %.pre.i, ptr %i.dn, align 8, !tbaa !367
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store float %.pre.i, ptr %i.dp, align 8, !tbaa !367
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store float %.pre.i, ptr %i.dr, align 8, !tbaa !367
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store float %.pre.i, ptr %i.dt, align 8, !tbaa !367
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  store float %.pre.i, ptr %i.dv, align 8, !tbaa !367
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store float %.pre.i, ptr %i.dx, align 8, !tbaa !367
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ERKNS0_4math5CoordERKfb.exit, label %bb.e, !llvm.loop !64

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEC2ERKNS0_4math5CoordERKfb.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.db, ptr %4, align 8, !tbaa !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.f, align 4, !tbaa !433
  store i64 1, ptr %i.g, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 32768 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 33296
  %wide.load = load <2 x i64>, ptr %i.di, align 8, !tbaa !402
  %wide.load28 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !402
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 32784 ; 2 uses
  %wide.load29 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !402
  %wide.load30 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !402
  %i.eb = or <2 x i64> %wide.load29, %wide.load
  %i.ec = or <2 x i64> %wide.load30, %wide.load28
  store <2 x i64> %i.eb, ptr %i.dy, align 8, !tbaa !402
  store <2 x i64> %i.ec, ptr %i.ea, align 8, !tbaa !402
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 33312
  %next.gep27.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 32800 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.db, i64 33328
  %wide.load.1 = load <2 x i64>, ptr %next.gep.1, align 8, !tbaa !402
  %wide.load28.1 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !402
  %i.ee = getelementptr inbounds nuw i8, ptr %i.db, i64 32816 ; 2 uses
  %wide.load29.1 = load <2 x i64>, ptr %next.gep27.1, align 8, !tbaa !402
  %wide.load30.1 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !402
  %i.ef = or <2 x i64> %wide.load29.1, %wide.load.1
  %i.eg = or <2 x i64> %wide.load30.1, %wide.load28.1
  store <2 x i64> %i.ef, ptr %next.gep27.1, align 8, !tbaa !402
  store <2 x i64> %i.eg, ptr %i.ee, align 8, !tbaa !402
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.db, i64 33344
  %next.gep27.2 = getelementptr inbounds nuw i8, ptr %i.db, i64 32832 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 33360
  %wide.load.2 = load <2 x i64>, ptr %next.gep.2, align 8, !tbaa !402
  %wide.load28.2 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !402
  %i.ei = getelementptr inbounds nuw i8, ptr %i.db, i64 32848 ; 2 uses
  %wide.load29.2 = load <2 x i64>, ptr %next.gep27.2, align 8, !tbaa !402
  %wide.load30.2 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !402
  %i.ej = or <2 x i64> %wide.load29.2, %wide.load.2
  %i.ek = or <2 x i64> %wide.load30.2, %wide.load28.2
  store <2 x i64> %i.ej, ptr %next.gep27.2, align 8, !tbaa !402
  store <2 x i64> %i.ek, ptr %i.ei, align 8, !tbaa !402
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.db, i64 33376
  %next.gep27.3 = getelementptr inbounds nuw i8, ptr %i.db, i64 32864 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 33392
  %wide.load.3 = load <2 x i64>, ptr %next.gep.3, align 8, !tbaa !402
  %wide.load28.3 = load <2 x i64>, ptr %i.el, align 8, !tbaa !402
  %i.em = getelementptr inbounds nuw i8, ptr %i.db, i64 32880 ; 2 uses
  %wide.load29.3 = load <2 x i64>, ptr %next.gep27.3, align 8, !tbaa !402
  %wide.load30.3 = load <2 x i64>, ptr %i.em, align 8, !tbaa !402
  %i.en = or <2 x i64> %wide.load29.3, %wide.load.3
  %i.eo = or <2 x i64> %wide.load30.3, %wide.load28.3
  store <2 x i64> %i.en, ptr %next.gep27.3, align 8, !tbaa !402
  store <2 x i64> %i.eo, ptr %i.em, align 8, !tbaa !402
  %next.gep.4 = getelementptr inbounds nuw i8, ptr %i.db, i64 33408
  %next.gep27.4 = getelementptr inbounds nuw i8, ptr %i.db, i64 32896 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.db, i64 33424
  %wide.load.4 = load <2 x i64>, ptr %next.gep.4, align 8, !tbaa !402
  %wide.load28.4 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !402
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 32912 ; 2 uses
  %wide.load29.4 = load <2 x i64>, ptr %next.gep27.4, align 8, !tbaa !402
  %wide.load30.4 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !402
  %i.er = or <2 x i64> %wide.load29.4, %wide.load.4
  %i.es = or <2 x i64> %wide.load30.4, %wide.load28.4
  store <2 x i64> %i.er, ptr %next.gep27.4, align 8, !tbaa !402
  store <2 x i64> %i.es, ptr %i.eq, align 8, !tbaa !402
  %next.gep.5 = getelementptr inbounds nuw i8, ptr %i.db, i64 33440
  %next.gep27.5 = getelementptr inbounds nuw i8, ptr %i.db, i64 32928 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.db, i64 33456
  %wide.load.5 = load <2 x i64>, ptr %next.gep.5, align 8, !tbaa !402
  %wide.load28.5 = load <2 x i64>, ptr %i.et, align 8, !tbaa !402
  %i.eu = getelementptr inbounds nuw i8, ptr %i.db, i64 32944 ; 2 uses
  %wide.load29.5 = load <2 x i64>, ptr %next.gep27.5, align 8, !tbaa !402
  %wide.load30.5 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !402
  %i.ev = or <2 x i64> %wide.load29.5, %wide.load.5
  %i.ew = or <2 x i64> %wide.load30.5, %wide.load28.5
  store <2 x i64> %i.ev, ptr %next.gep27.5, align 8, !tbaa !402
  store <2 x i64> %i.ew, ptr %i.eu, align 8, !tbaa !402
  %next.gep.6 = getelementptr inbounds nuw i8, ptr %i.db, i64 33472
  %next.gep27.6 = getelementptr inbounds nuw i8, ptr %i.db, i64 32960 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 33488
  %wide.load.6 = load <2 x i64>, ptr %next.gep.6, align 8, !tbaa !402
  %wide.load28.6 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !402
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 32976 ; 2 uses
  %wide.load29.6 = load <2 x i64>, ptr %next.gep27.6, align 8, !tbaa !402
  %wide.load30.6 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !402
  %i.ez = or <2 x i64> %wide.load29.6, %wide.load.6
  %i.fa = or <2 x i64> %wide.load30.6, %wide.load28.6
  store <2 x i64> %i.ez, ptr %next.gep27.6, align 8, !tbaa !402
  store <2 x i64> %i.fa, ptr %i.ey, align 8, !tbaa !402
  %next.gep.7 = getelementptr inbounds nuw i8, ptr %i.db, i64 33504
  %next.gep27.7 = getelementptr inbounds nuw i8, ptr %i.db, i64 32992 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.db, i64 33520
  %wide.load.7 = load <2 x i64>, ptr %next.gep.7, align 8, !tbaa !402
  %wide.load28.7 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !402
  %i.fc = getelementptr inbounds nuw i8, ptr %i.db, i64 33008 ; 2 uses
  %wide.load29.7 = load <2 x i64>, ptr %next.gep27.7, align 8, !tbaa !402
  %wide.load30.7 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !402
  %i.fd = or <2 x i64> %wide.load29.7, %wide.load.7
  %i.fe = or <2 x i64> %wide.load30.7, %wide.load28.7
  store <2 x i64> %i.fd, ptr %next.gep27.7, align 8, !tbaa !402
  store <2 x i64> %i.fe, ptr %i.fc, align 8, !tbaa !402
  %next.gep.8 = getelementptr inbounds nuw i8, ptr %i.db, i64 33536
  %next.gep27.8 = getelementptr inbounds nuw i8, ptr %i.db, i64 33024 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.db, i64 33552
  %wide.load.8 = load <2 x i64>, ptr %next.gep.8, align 8, !tbaa !402
  %wide.load28.8 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !402
  %i.fg = getelementptr inbounds nuw i8, ptr %i.db, i64 33040 ; 2 uses
  %wide.load29.8 = load <2 x i64>, ptr %next.gep27.8, align 8, !tbaa !402
  %wide.load30.8 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !402
  %i.fh = or <2 x i64> %wide.load29.8, %wide.load.8
  %i.fi = or <2 x i64> %wide.load30.8, %wide.load28.8
  store <2 x i64> %i.fh, ptr %next.gep27.8, align 8, !tbaa !402
  store <2 x i64> %i.fi, ptr %i.fg, align 8, !tbaa !402
  %next.gep.9 = getelementptr inbounds nuw i8, ptr %i.db, i64 33568
  %next.gep27.9 = getelementptr inbounds nuw i8, ptr %i.db, i64 33056 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.db, i64 33584
  %wide.load.9 = load <2 x i64>, ptr %next.gep.9, align 8, !tbaa !402
  %wide.load28.9 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !402
  %i.fk = getelementptr inbounds nuw i8, ptr %i.db, i64 33072 ; 2 uses
  %wide.load29.9 = load <2 x i64>, ptr %next.gep27.9, align 8, !tbaa !402
  %wide.load30.9 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !402
  %i.fl = or <2 x i64> %wide.load29.9, %wide.load.9
  %i.fm = or <2 x i64> %wide.load30.9, %wide.load28.9
  store <2 x i64> %i.fl, ptr %next.gep27.9, align 8, !tbaa !402
  store <2 x i64> %i.fm, ptr %i.fk, align 8, !tbaa !402
  %next.gep.10 = getelementptr inbounds nuw i8, ptr %i.db, i64 33600
  %next.gep27.10 = getelementptr inbounds nuw i8, ptr %i.db, i64 33088 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.db, i64 33616
  %wide.load.10 = load <2 x i64>, ptr %next.gep.10, align 8, !tbaa !402
  %wide.load28.10 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !402
  %i.fo = getelementptr inbounds nuw i8, ptr %i.db, i64 33104 ; 2 uses
  %wide.load29.10 = load <2 x i64>, ptr %next.gep27.10, align 8, !tbaa !402
  %wide.load30.10 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !402
  %i.fp = or <2 x i64> %wide.load29.10, %wide.load.10
  %i.fq = or <2 x i64> %wide.load30.10, %wide.load28.10
  store <2 x i64> %i.fp, ptr %next.gep27.10, align 8, !tbaa !402
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !402
  %next.gep.11 = getelementptr inbounds nuw i8, ptr %i.db, i64 33632
  %next.gep27.11 = getelementptr inbounds nuw i8, ptr %i.db, i64 33120 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.db, i64 33648
  %wide.load.11 = load <2 x i64>, ptr %next.gep.11, align 8, !tbaa !402
  %wide.load28.11 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !402
  %i.fs = getelementptr inbounds nuw i8, ptr %i.db, i64 33136 ; 2 uses
  %wide.load29.11 = load <2 x i64>, ptr %next.gep27.11, align 8, !tbaa !402
  %wide.load30.11 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !402
  %i.ft = or <2 x i64> %wide.load29.11, %wide.load.11
  %i.fu = or <2 x i64> %wide.load30.11, %wide.load28.11
  store <2 x i64> %i.ft, ptr %next.gep27.11, align 8, !tbaa !402
  store <2 x i64> %i.fu, ptr %i.fs, align 8, !tbaa !402
  %next.gep.12 = getelementptr inbounds nuw i8, ptr %i.db, i64 33664
  %next.gep27.12 = getelementptr inbounds nuw i8, ptr %i.db, i64 33152 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.db, i64 33680
  %wide.load.12 = load <2 x i64>, ptr %next.gep.12, align 8, !tbaa !402
  %wide.load28.12 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !402
  %i.fw = getelementptr inbounds nuw i8, ptr %i.db, i64 33168 ; 2 uses
  %wide.load29.12 = load <2 x i64>, ptr %next.gep27.12, align 8, !tbaa !402
  %wide.load30.12 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !402
  %i.fx = or <2 x i64> %wide.load29.12, %wide.load.12
  %i.fy = or <2 x i64> %wide.load30.12, %wide.load28.12
  store <2 x i64> %i.fx, ptr %next.gep27.12, align 8, !tbaa !402
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !402
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INSE_INSE_INSF_IfLj3EEELj4EEELj5EEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !426, !noundef !670
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.be = load ptr, ptr %i.p, align 16, !tbaa !1620
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !426, !noundef !670
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.bi = add i8 %i.t, 1
  store i8 %i.bi, ptr %i.i, align 4, !tbaa !882
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1486
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.bj = add i8 %i.t, 1                          ; 2 uses
  store i8 %i.bj, ptr %i.i, align 4, !tbaa !882
  %i.bk = icmp ugt i8 %.pr, 1
  br i1 %i.bk, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4534 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS8_INS8_INS9_IfLj3EEELj4EEELj5EEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bt, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false), !tbaa.struct !1618
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  store ptr null, ptr %i.bu, align 16, !tbaa !1620
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  store i32 2, ptr %i.by, align 64, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 132
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4534 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 16, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 16, !tbaa !1620
  store ptr %i.ce, ptr %i.bu, align 16, !tbaa !1620
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !4534
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS2_INS2_INS3_IfLj3EEELj4EEELj5EEEEclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !4535

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS2_INS2_INS3_IfLj3EEELj4EEELj5EEEEclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>::TopologyCopy2", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not14 = icmp eq i32 %i.b, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.015 = phi i32 [ %i.b, %.lr.ph ], [ %i.au, %bb.g ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1597   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144
  %i.l = lshr i32 %.015, 6
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !402
  %i.p = and i32 %.015, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = and i64 %i.o, %i.r
  %.not12 = icmp eq i64 %i.s, 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !1598 ; 2 uses
  %i.u = zext i32 %.015 to i64                    ; 3 uses
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1597
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.v, i8 0, i64 32768, i1 false), !tbaa !367
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32768
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 33280
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 33280
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 33792
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 33792
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 33804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 33804
  %i.ah = load <2 x ptr>, ptr %i.e, align 8, !tbaa !1104
  %i.ai = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.z, ptr noundef nonnull align 8 dereferenceable(512) %i.aa) ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ab, ptr noundef nonnull align 8 dereferenceable(512) %i.ac) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !963
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !1391
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !1622
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.y, ptr %4, align 8, !tbaa !1625
  store ptr %i.v, ptr %i.f, align 8, !tbaa !1626
  store <2 x ptr> %i.ah, ptr %i.g, align 8, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.h, align 4, !tbaa !433
  store i64 1, ptr %i.i, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %i.al, align 8, !tbaa !367
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 33808) #32
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 266240
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.m
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !402
  %i.ar = and i64 %i.aq, %i.r
  %.not13 = icmp eq i64 %i.ar, 0
  %.in.v = select i1 %.not13, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.as = load ptr, ptr %.in, align 8, !tbaa !1104, !nonnull !670
  %i.at = load i8, ptr %i.as, align 1, !tbaa !625, !range !426, !noundef !670
  store i8 %i.at, ptr %i.an, align 8, !tbaa !367
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.au = add i32 %.015, 1                        ; 2 uses
  %.not = icmp eq i32 %i.au, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4536
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !590
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !591
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !367
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !433
  %i.g = load i32, ptr %0, align 8, !tbaa !432
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !870
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !342
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1479
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1628
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !1630
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !881
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !882
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !883
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !884
  store i64 %i.u, ptr %i.t, align 8, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !888
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !889
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !416
  store ptr %4, ptr %i.l, align 16, !tbaa !1630
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !895  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !883
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EE13TopologyCopy2INSE_INSF_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !883
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !896
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EE13TopologyCopy2INSE_INSF_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !1630
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EE13TopologyCopy2INSE_INSF_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !1630
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !882
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12readTopologyERSib:bb.a
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
  %i.ch = load i64, ptr %.013.i.i.i28, align 8, !tbaa !402, !noalias !5209 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ch, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !402, !noalias !5209 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.cj, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit248

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !402, !noalias !5209 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cl, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit245

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !402, !noalias !5209 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cp = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cp, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !96

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
  %i.db = load i8, ptr %i.da, align 1, !tbaa !625, !range !426, !noundef !670
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !367
  %i.dc = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.dd = lshr i32 %i.dc, 6                       ; 3 uses
  %i.de = icmp ugt i32 %i.dc, 32767
  br i1 %i.de, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !402 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !97

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dg, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !97

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5210)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ee, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %i.dx = load i64, ptr %.013.i.i.i48, align 8, !tbaa !402, !noalias !5210 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !402, !noalias !5210 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit272

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !402, !noalias !5210 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit269

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !402, !noalias !5210 ; 2 uses
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
  store ptr %0, ptr %3, align 8, !tbaa !1677, !alias.scope !5210
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !alias.scope !5210
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !5210
  %.not82105 = icmp eq i32 %i.em, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.lr.ph106:                                        ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEppEv.exit
  %i.eo = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 13 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.lr.ph106
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !489 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 270336
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, i8 0, i64 33792, i1 false)
  %i.et = lshr i32 %i.eq, 3
  %i.eu = shl i32 %i.eq, 2
  %4 = shl i32 %i.eq, 7
  %5 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %6 = insertelement <4 x i32> %5, i32 %i.eu, i64 1
  %7 = insertelement <4 x i32> %6, i32 %4, i64 2
  %8 = and <4 x i32> %7, <i32 536870784, i32 3968, i32 3968, i32 poison>
  %9 = load <4 x i32>, ptr %i.er, align 8
  %10 = freeze <4 x i32> %9
  %.fr = freeze <4 x i32> %8
  %11 = add <4 x i32> %.fr, %10
  %12 = and <4 x i32> %11, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %12, ptr %i.es, align 8, !tbaa !340
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.7, %bb.r ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  store i8 %i.p, ptr %i.ev, align 8, !tbaa !367
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i8 %i.p, ptr %i.ex, align 8, !tbaa !367
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i8 %i.p, ptr %i.ez, align 8, !tbaa !367
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i8 %i.p, ptr %i.fb, align 8, !tbaa !367
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i8 %i.p, ptr %i.fd, align 8, !tbaa !367
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i8 %i.p, ptr %i.ff, align 8, !tbaa !367
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store i8 %i.p, ptr %i.fh, align 8, !tbaa !367
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store i8 %i.p, ptr %i.fj, align 8, !tbaa !367
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 4096
  br i1 %exitcond.not.i.7, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit, label %bb.r, !llvm.loop !5206

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit: ; preds = %bb.r
  %i.fk = zext i32 %i.eq to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store ptr %i.eo, ptr %i.fl, align 8, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fm = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !825 ; 2 uses
  %i.fn = load i32, ptr %i.en, align 8, !tbaa !489
  %i.fo = add i32 %i.fn, 1                        ; 4 uses
  %i.fp = lshr i32 %i.fo, 6                       ; 3 uses
  %i.fq = icmp ugt i32 %i.fo, 32767
  br i1 %i.fq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKbb.exit
  %i.fr = and i32 %i.fo, 63
  %i.fs = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !402 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !48

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fs, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i.i.i65
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !48

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
  store i32 %.118.i.i.i.i58, ptr %i.en, align 8, !tbaa !489
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !5207

bb.u:                                             ; preds = %.lr.ph106
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 33808) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gh, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE22_M_emplace_hint_uniqueIJS3_NSE_4TileEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !963
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !1593
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i16, ptr %3, align 1, !tbaa !625
  store i16 %i.e, ptr %i.d, align 8, !tbaa !625
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
  %i.l = load i32, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !340  ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !340  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !340  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !340
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !340
  %i.z = icmp slt i32 %i.w, %i.y
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.aa = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.z, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !378
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !378
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIbNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.292", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.360", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.360", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
end_hunk_8
begin_hunk_9_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyCopy1ISI_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !426, !noundef !670
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !2176
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !426, !noundef !670
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.bi = add i8 %i.t, 1
  store i8 %i.bi, ptr %i.i, align 4, !tbaa !882
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1486
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.bj = add i8 %i.t, 1                          ; 2 uses
  store i8 %i.bj, ptr %i.i, align 4, !tbaa !882
  %i.bk = icmp ugt i8 %.pr, 1
  br i1 %i.bk, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !5660 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyCopy1ISC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !2174
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !2176
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bw = load i64, ptr %i.r, align 16, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 16, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 16, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  store i32 2, ptr %i.by, align 8, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 64, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !5660 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 8, !tbaa !2176
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !2176
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !5660
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyCopy1IS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !5661

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyCopy1IS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>::TopologyCopy1", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not12 = icmp eq i32 %i.b, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.013 = phi i32 [ %i.b, %.lr.ph ], [ %i.aq, %bb.g ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2171
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144
  %i.l = lshr i32 %.013, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !402
  %i.p = and i32 %.013, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.o, %i.r
  %.not11 = icmp eq i64 %i.s, 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !2172 ; 2 uses
  %i.u = zext i32 %.013 to i64                    ; 3 uses
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !2171
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 5 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !5663, !nonnull !670, !align !2177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.v, i8 0, i64 32768, i1 false), !tbaa !367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32768
  %i.ac = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, ptr noundef nonnull align 8 dereferenceable(512) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 33280
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 33280
  %i.af = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ad, ptr noundef nonnull align 8 dereferenceable(512) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 33792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 33792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !963
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 33804
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 33804
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1391
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !1391
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.y, ptr %4, align 8, !tbaa !2179
  store ptr %i.v, ptr %i.f, align 8, !tbaa !2180
  store ptr %i.z, ptr %i.g, align 8, !tbaa !2173
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.h, align 4, !tbaa !433
  store i64 1, ptr %i.i, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %i.al, align 8, !tbaa !367
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 33808) #32
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !5663, !nonnull !670, !align !2177
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !369
  store float %i.ap, ptr %i.an, align 8, !tbaa !367
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.aq = add i32 %.013, 1                        ; 2 uses
  %.not = icmp eq i32 %i.aq, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5662
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !590
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !591
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !367
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !433
  %i.g = load i32, ptr %0, align 8, !tbaa !432
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !870
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !342
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1479
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !2181
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !2183
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !881
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.q, align 4, !tbaa !882
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !883
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.u = load i64, ptr %3, align 8, !tbaa !884
  store i64 %i.u, ptr %i.t, align 64, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !888
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !889
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !416
  store ptr %4, ptr %i.l, align 8, !tbaa !2183
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !895  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !883
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !883
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !896
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2183
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !2183
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !882
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !882
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSB_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_9
begin_hunk_10_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyUnionISI_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !5698 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyUnionISC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !2188
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !2190
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bw = load i64, ptr %i.r, align 16, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 16, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 16, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  store i32 2, ptr %i.by, align 8, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 64, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !5698 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 8, !tbaa !2190
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !2190
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !5698
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyUnionIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(17) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !5699

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE13TopologyUnionIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>::TopologyCopy1", align 8 ; 6 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<float, 3>, 4>::TopologyUnion", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not27 = icmp eq i32 %i.b, %i.c
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.028 = phi i32 [ %i.b, %.lr.ph ], [ %i.bt, %bb.o ] ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2185   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144
  %i.l = lshr i32 %.028, 6
  %i.m = zext nneg i32 %i.l to i64                ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !402
  %i.p = and i32 %.028, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q                      ; 6 uses
  %i.s = and i64 %i.o, %i.r
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = zext i32 %.028 to i64                    ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !367  ; 6 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !2186 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 262144
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.m
  %i.z = load i64, ptr %i.y, align 8, !tbaa !402
  %i.aa = and i64 %i.z, %i.r
  %.not25 = icmp eq i64 %i.aa, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !367
  %i.ad = load i8, ptr %i.e, align 8, !tbaa !2187, !range !426, !noundef !670
  %i.ae = trunc nuw i8 %i.ad to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE13TopologyUnionIS5_EC2EPKS5_PS5_b(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(33808) %i.v, ptr noundef nonnull align 8 dereferenceable(33808) %i.ac, i1 noundef zeroext %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.e, align 8, !tbaa !2187, !range !426, !noundef !670
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 266240
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.m
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !402
  %i.ak = and i64 %i.aj, %i.r
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 9 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !2186
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.al, i8 0, i64 32768, i1 false), !tbaa !367
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32768
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 32768
  %i.aq = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ao, ptr noundef nonnull align 8 dereferenceable(512) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 33280
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 33280
  %i.at = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ar, ptr noundef nonnull align 8 dereferenceable(512) %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 33792
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 33792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !963
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 33804
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 33804
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1391
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !1391
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.v, ptr %4, align 8, !tbaa !2179
  store ptr %i.al, ptr %i.f, align 8, !tbaa !2180
  store ptr %i.an, ptr %i.g, align 8, !tbaa !2173
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.h, align 4, !tbaa !433
  store i64 1, ptr %i.i, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !2186 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 266240
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.m
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !402
  %i.bd = and i64 %i.bc, %i.r
  %.not26 = icmp eq i64 %i.bd, 0
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11setValuesOnEv(ptr noundef nonnull align 8 dereferenceable(33808) %i.al)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !2186
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 33808) #32
  resume { ptr, i32 } %i.be

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bf = phi ptr [ %.pre, %bb.i ], [ %i.az, %bb.h ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.t
  store ptr %i.al, ptr %i.bg, align 8, !tbaa !367
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 266240
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.m
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !402
  %i.bk = and i64 %i.bj, %i.r
  %.not23 = icmp eq i64 %i.bk, 0
  br i1 %.not23, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !2186 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 262144
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.m
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !402
  %i.bp = and i64 %i.bo, %i.r
  %.not24 = icmp eq i64 %i.bp, 0
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = zext i32 %.028 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11setValuesOnEv(ptr noundef nonnull align 8 dereferenceable(33808) %i.bs)
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.k, %bb.f, %bb.n, %bb.m, %bb.l
  %i.bt = add i32 %.028, 1                        ; 2 uses
  %.not = icmp eq i32 %i.bt, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5700
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE11setValuesOnEv(ptr noundef nonnull align 8 dereferenceable(33808) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32768 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32784
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32800
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32816
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32848
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32864
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32896
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32912
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32944
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32960
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32976
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 33008
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 33024
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 33040
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33056
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 33072
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 33088
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 33136
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 33152
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 33168
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 33184
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33200
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 33216
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33232
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 33248
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33264
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.ah = load <2 x i64>, ptr %i.a, align 8, !tbaa !402
  %i.ai = xor <2 x i64> %i.ah, splat (i64 -1)
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !402
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 33296
  %i.ak = load <2 x i64>, ptr %i.b, align 8, !tbaa !402
  %i.al = xor <2 x i64> %i.ak, splat (i64 -1)
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !402
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 33312
  %i.an = load <2 x i64>, ptr %i.c, align 8, !tbaa !402
  %i.ao = xor <2 x i64> %i.an, splat (i64 -1)
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !402
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 33328
  %i.aq = load <2 x i64>, ptr %i.d, align 8, !tbaa !402
  %i.ar = xor <2 x i64> %i.aq, splat (i64 -1)
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !402
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 33344
  %i.at = load <2 x i64>, ptr %i.e, align 8, !tbaa !402
  %i.au = xor <2 x i64> %i.at, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !402
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 33360
  %i.aw = load <2 x i64>, ptr %i.f, align 8, !tbaa !402
  %i.ax = xor <2 x i64> %i.aw, splat (i64 -1)
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !402
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 33376
  %i.az = load <2 x i64>, ptr %i.g, align 8, !tbaa !402
  %i.ba = xor <2 x i64> %i.az, splat (i64 -1)
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !402
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 33392
  %i.bc = load <2 x i64>, ptr %i.h, align 8, !tbaa !402
  %i.bd = xor <2 x i64> %i.bc, splat (i64 -1)
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !402
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 33408
  %i.bf = load <2 x i64>, ptr %i.i, align 8, !tbaa !402
  %i.bg = xor <2 x i64> %i.bf, splat (i64 -1)
  store <2 x i64> %i.bg, ptr %i.be, align 8, !tbaa !402
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 33424
  %i.bi = load <2 x i64>, ptr %i.j, align 8, !tbaa !402
  %i.bj = xor <2 x i64> %i.bi, splat (i64 -1)
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !402
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 33440
  %i.bl = load <2 x i64>, ptr %i.k, align 8, !tbaa !402
  %i.bm = xor <2 x i64> %i.bl, splat (i64 -1)
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !402
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 33456
  %i.bo = load <2 x i64>, ptr %i.l, align 8, !tbaa !402
  %i.bp = xor <2 x i64> %i.bo, splat (i64 -1)
  store <2 x i64> %i.bp, ptr %i.bn, align 8, !tbaa !402
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 33472
  %i.br = load <2 x i64>, ptr %i.m, align 8, !tbaa !402
  %i.bs = xor <2 x i64> %i.br, splat (i64 -1)
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !tbaa !402
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 33488
  %i.bu = load <2 x i64>, ptr %i.n, align 8, !tbaa !402
  %i.bv = xor <2 x i64> %i.bu, splat (i64 -1)
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !402
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 33504
  %i.bx = load <2 x i64>, ptr %i.o, align 8, !tbaa !402
  %i.by = xor <2 x i64> %i.bx, splat (i64 -1)
  store <2 x i64> %i.by, ptr %i.bw, align 8, !tbaa !402
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 33520
  %i.ca = load <2 x i64>, ptr %i.p, align 8, !tbaa !402
  %i.cb = xor <2 x i64> %i.ca, splat (i64 -1)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !402
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 33536
  %i.cd = load <2 x i64>, ptr %i.q, align 8, !tbaa !402
  %i.ce = xor <2 x i64> %i.cd, splat (i64 -1)
  store <2 x i64> %i.ce, ptr %i.cc, align 8, !tbaa !402
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 33552
  %i.cg = load <2 x i64>, ptr %i.r, align 8, !tbaa !402
  %i.ch = xor <2 x i64> %i.cg, splat (i64 -1)
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !402
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 33568
  %i.cj = load <2 x i64>, ptr %i.s, align 8, !tbaa !402
  %i.ck = xor <2 x i64> %i.cj, splat (i64 -1)
  store <2 x i64> %i.ck, ptr %i.ci, align 8, !tbaa !402
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 33584
  %i.cm = load <2 x i64>, ptr %i.t, align 8, !tbaa !402
  %i.cn = xor <2 x i64> %i.cm, splat (i64 -1)
  store <2 x i64> %i.cn, ptr %i.cl, align 8, !tbaa !402
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 33600
  %i.cp = load <2 x i64>, ptr %i.u, align 8, !tbaa !402
  %i.cq = xor <2 x i64> %i.cp, splat (i64 -1)
  store <2 x i64> %i.cq, ptr %i.co, align 8, !tbaa !402
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 33616
  %i.cs = load <2 x i64>, ptr %i.v, align 8, !tbaa !402
  %i.ct = xor <2 x i64> %i.cs, splat (i64 -1)
  store <2 x i64> %i.ct, ptr %i.cr, align 8, !tbaa !402
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 33632
  %i.cv = load <2 x i64>, ptr %i.w, align 8, !tbaa !402
  %i.cw = xor <2 x i64> %i.cv, splat (i64 -1)
  store <2 x i64> %i.cw, ptr %i.cu, align 8, !tbaa !402
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 33648
  %i.cy = load <2 x i64>, ptr %i.x, align 8, !tbaa !402
end_hunk_10
begin_hunk_11_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib:bb.a
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.ch, %.critedge.i.i.i.i ], [ %i.bn, %bb.g ] ; 2 uses
  %.not81 = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not81, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph104

.preheader84:                                     ; preds = %bb.e, %bb.i
  %.013.i.i.i28 = phi ptr [ %i.cp, %bb.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0712.i.i.i29 = phi i32 [ %i.cq, %bb.i ], [ 0, %bb.e ] ; 5 uses
  %i.ci = load i64, ptr %.013.i.i.i28, align 8, !tbaa !402, !noalias !6548 ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i30, label %.preheader84.1, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34

.preheader84.1:                                   ; preds = %.preheader84
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !402, !noalias !6548 ; 2 uses
  %.not.i.i.i30.1 = icmp eq i64 %i.ck, -1
  br i1 %.not.i.i.i30.1, label %.preheader84.2, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit253

.preheader84.2:                                   ; preds = %.preheader84.1
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !402, !noalias !6548 ; 2 uses
  %.not.i.i.i30.2 = icmp eq i64 %i.cm, -1
  br i1 %.not.i.i.i30.2, label %.preheader84.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit250

.preheader84.3:                                   ; preds = %.preheader84.2
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !402, !noalias !6548 ; 2 uses
  %.not.i.i.i30.3 = icmp eq i64 %i.co, -1
  br i1 %.not.i.i.i30.3, label %bb.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13beginValueAllEv.exit34.split.loop.exit

bb.i:                                             ; preds = %.preheader84.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 32
  %i.cq = add nuw nsw i32 %.0712.i.i.i29, 4       ; 2 uses
  %exitcond.not.i.i.i33.3 = icmp eq i32 %i.cq, 512
  br i1 %exitcond.not.i.i.i33.3, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.preheader84, !llvm.loop !96

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
  %i.dc = load double, ptr %i.db, align 8, !tbaa !535
  store double %i.dc, ptr %i.da, align 8, !tbaa !367
  %i.dd = add i32 %.sroa.4.0100, 1                ; 4 uses
  %i.de = lshr i32 %i.dd, 6                       ; 3 uses
  %i.df = icmp ugt i32 %i.dd, 32767
  br i1 %i.df, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = and i32 %i.dd, 63
  %i.dh = zext nneg i32 %i.de to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !402 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i43, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph194, !llvm.loop !97

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i41.preheader, %.lr.ph.i.i.i.i41
  %indvars.iv.i.i.i.i42193 = phi i64 [ %indvars.iv.next.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.dh, %.lr.ph.i.i.i.i41.preheader ]
  %indvars.iv.next.i.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i.i42193, 1 ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.i44
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i.i45 = icmp eq i64 %i.dr, -1
  br i1 %.not.i.i.i.i45, label %.lr.ph.i.i.i.i41, label %.critedge.loopexit.i.i.i.i46, !llvm.loop !97

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
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6549)
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i48 = phi ptr [ %i.q, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.ef, %bb.p ] ; 5 uses
  %.0712.i.i.i49 = phi i32 [ 0, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.eg, %bb.p ] ; 5 uses
  %i.dy = load i64, ptr %.013.i.i.i48, align 8, !tbaa !402, !noalias !6549 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i50, label %bb.m, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !402, !noalias !6549 ; 2 uses
  %.not.i.i.i50.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i50.1, label %bb.n, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit277

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !402, !noalias !6549 ; 2 uses
  %.not.i.i.i50.2 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i50.2, label %bb.o, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit274

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !402, !noalias !6549 ; 2 uses
  %.not.i.i.i50.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i50.3, label %bb.p, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i48, i64 32
  %i.eg = add nuw nsw i32 %.0712.i.i.i49, 4       ; 2 uses
  %exitcond.not.i.i.i53.3 = icmp eq i32 %i.eg, 512
  br i1 %exitcond.not.i.i.i53.3, label %._crit_edge, label %bb.l, !llvm.loop !47

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
  store ptr %0, ptr %3, align 8, !tbaa !2229, !alias.scope !6549
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %i.en, ptr %i.eo, align 8, !alias.scope !6549
  %.sroa.41.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.q, ptr %.sroa.41.0..sroa_idx.i52, align 8, !alias.scope !6549
  %.not82105 = icmp eq i32 %i.en, 32768
  br i1 %.not82105, label %._crit_edge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %.lr.ph106

._crit_edge:                                      ; preds = %bb.p, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit
  %i.ep = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 9 uses
  %i.eq = invoke noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %vector.ph203 unwind label %bb.s

vector.ph203:                                     ; preds = %.lr.ph106
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !489 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 270336
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, i8 0, i64 33792, i1 false)
  %i.eu = lshr i32 %i.er, 3
  %i.ev = shl i32 %i.er, 2
  %4 = shl i32 %i.er, 7
  %5 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %6 = insertelement <4 x i32> %5, i32 %i.ev, i64 1
  %7 = insertelement <4 x i32> %6, i32 %4, i64 2
  %8 = and <4 x i32> %7, <i32 536870784, i32 3968, i32 3968, i32 poison>
  %9 = load <4 x i32>, ptr %i.es, align 8
  %10 = freeze <4 x i32> %9
  %.fr = freeze <4 x i32> %8
  %11 = add <4 x i32> %.fr, %10
  %12 = and <4 x i32> %11, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %12, ptr %i.et, align 8, !tbaa !340
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph203
  %index205 = phi i64 [ 0, %vector.ph203 ], [ %index.next206.3, %vector.body204 ] ; 5 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ew, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.ex, align 8, !tbaa !367
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ez, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.fa, align 8, !tbaa !367
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  store <2 x double> %broadcast.splat, ptr %i.fc, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.fd, align 8, !tbaa !367
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index205 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ff, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.fg, align 8, !tbaa !367
  %index.next206.3 = add nuw nsw i64 %index205, 16 ; 2 uses
  %i.fh = icmp eq i64 %index.next206.3, 4096
  br i1 %i.fh, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body204, !llvm.loop !6545

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body204
  %i.fi = zext i32 %i.er to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fi
  store ptr %i.ep, ptr %i.fj, align 8, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(33808) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  %i.fk = load ptr, ptr %.sroa.41.0..sroa_idx.i52, align 8, !tbaa !825 ; 2 uses
  %i.fl = load i32, ptr %i.eo, align 8, !tbaa !489
  %i.fm = add i32 %i.fl, 1                        ; 4 uses
  %i.fn = lshr i32 %i.fm, 6                       ; 3 uses
  %i.fo = icmp ugt i32 %i.fm, 32767
  br i1 %i.fo, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %i.fp = and i32 %i.fm, 63
  %i.fq = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !402 ; 2 uses
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
  br i1 %exitcond.not.i.i.i.i64, label %._crit_edge, label %.lr.ph200, !llvm.loop !48

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %indvars.iv.i.i.i.i63199 = phi i64 [ %indvars.iv.next.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.fq, %.lr.ph.i.i.i.i62.preheader ]
  %indvars.iv.next.i.i.i.i65 = add nuw nsw i64 %indvars.iv.i.i.i.i63199, 1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i65
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i62, label %.critedge.loopexit.i.i.i.i66, !llvm.loop !48

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
  store i32 %.118.i.i.i.i58, ptr %i.eo, align 8, !tbaa !489
  %.not82 = icmp eq i32 %.118.i.i.i.i58, 32768
  br i1 %.not82, label %._crit_edge, label %.lr.ph106, !llvm.loop !6546

bb.s:                                             ; preds = %.lr.ph106
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 33808) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.gf, %bb.s ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !963
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !696
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2267
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
  %i.k = load i32, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !340  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.k, %i.l
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !340  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !340  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.p, %i.r
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !340
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.x = load i32, ptr %i.w, align 4, !tbaa !340
  %i.y = icmp slt i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.z = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ %i.y, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !378
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !378
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #32
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #32
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.i
  %.sroa.012.016 = phi ptr [ %i.a, %.thread ], [ %i.f, %bb.i ]
  ret ptr %.sroa.012.016
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::shared_ptr.292", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.360", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.360", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i8, align 1                       ; 12 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 7 uses
  %9 = alloca %"class.openvdb::v13_0::util::NodeMask.273", align 8 ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !342
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
end_hunk_11
begin_hunk_12_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13writeTopologyERSob:bb.a
_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6566)
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  %.013.i.i.i = phi ptr [ %i.a, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.ae, %bb.l ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.af, %bb.l ] ; 5 uses
  %i.x = load i64, ptr %.013.i.i.i, align 8, !tbaa !402, !noalias !6566 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !402, !noalias !6566 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.1, label %bb.j, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !402, !noalias !6566 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.2, label %bb.k, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !402, !noalias !6566 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.3, label %bb.l, label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.af = add nuw nsw i32 %.0712.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.af, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.h, !llvm.loop !47

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit: ; preds = %bb.k
  %i.ag = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63: ; preds = %bb.j
  %i.ah = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66: ; preds = %bb.i
  %i.ai = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit

_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit: ; preds = %bb.h, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.ai, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66 ], [ %i.ah, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63 ], [ %i.ag, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.h ]
  %.lcssa58 = phi i64 [ %i.z, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit66 ], [ %i.ab, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit63 ], [ %i.ad, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit.split.loop.exit ], [ %i.x, %bb.h ]
  %i.aj = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa58, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 3 uses
  store ptr %0, ptr %3, align 8, !tbaa !2198, !alias.scope !6566
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.am, ptr %i.an, align 8, !alias.scope !6566
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !6566
  %.not28 = icmp eq i32 %i.am, 32768
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit21: ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  resume { ptr, i32 } %i.ao

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit
  %i.ap = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit ], [ %i.am, %_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13cbeginChildOnEv.exit ]
  %i.aq = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !367
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13writeTopologyERSob(ptr noundef nonnull align 8 dereferenceable(33808) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  %i.au = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !825 ; 2 uses
  %i.av = load i32, ptr %i.an, align 8, !tbaa !489
  %i.aw = add i32 %i.av, 1                        ; 4 uses
  %i.ax = lshr i32 %i.aw, 6                       ; 3 uses
  %i.ay = icmp ugt i32 %i.aw, 32767
  br i1 %i.ay, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.az = and i32 %i.aw, 63
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !402 ; 2 uses
  %i.bd = zext nneg i32 %i.az to i64              ; 2 uses
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %.not.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = shl nsw i64 -1, %i.bd
  %i.bh = and i64 %i.bc, %i.bg                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.n
  %exitcond.not.i.i.i.i51 = icmp eq i32 %i.ax, 511
  br i1 %exitcond.not.i.i.i.i51, label %._crit_edge, label %.lr.ph53

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph53
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph53, !llvm.loop !48

.lr.ph53:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i52 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i52, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !48

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph53
  %i.bk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.n
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bk, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.bh, %bb.n ], [ %i.bj, %.critedge.loopexit.i.i.i.i ]
  %i.bl = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit: ; preds = %bb.m, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bo, %.critedge.i.i.i.i ], [ %i.aw, %bb.m ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.an, align 8, !tbaa !489
  %.not = icmp eq i32 %.118.i.i.i.i, 32768
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6565
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSoPKT_jRKT0_SC_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::io::MaskCompress.1810", align 8 ; 10 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::util::NodeMask.273", align 8 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !342
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g) ; 4 uses
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 6, ptr %i.a, align 1, !tbaa !367
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bo unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp, %bb.b
  %.sroa.0102.0 = phi ptr [ %.sroa.0102.4, %bb.bp ], [ %.sroa.0102.4, %bb.bu ], [ %.sroa.0102.4, %bb.bt ], [ %.sroa.0102.4, %bb.br ], [ null, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !535
  %i.l = load ptr, ptr %0, align 8, !tbaa !342
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.o)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load double, ptr %i.p, align 8, !tbaa !535
  store double %i.q, ptr %i.b, align 8, !tbaa !535
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj5EEEEC2ERKS5_S8_PKdRS9_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(4096) %3, ptr noundef nonnull align 8 dereferenceable(4096) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %6, align 8, !tbaa !2667
  store i8 %i.s, ptr %i.a, align 1, !tbaa !367
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  switch i8 %i.u, label %bb.ba [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v, i64 noundef 8)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  %i.y = icmp eq i8 %i.x, 5
  br i1 %i.y, label %bb.n, label %bb.ba

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z, i64 noundef 8)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.bb, %bb.n, %bb.l, %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !535
  %i.ae = fptrunc double %i.ad to float           ; 2 uses
  %i.af = bitcast float %i.ae to i32
  %i.ag = call float @llvm.fabs.f32(float %i.ae)
  %i.ah = bitcast float %i.ag to i32              ; 10 uses
  %i.ai = lshr i32 %i.af, 16                      ; 3 uses
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = and i16 %i.aj, -32768                   ; 3 uses
  %i.al = icmp samesign ugt i32 %i.ah, 947912703
  br i1 %i.al, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.am = icmp samesign ugt i32 %i.ah, 2139095039
  br i1 %i.am, label %bb.r, label %bb.t, !prof !394

bb.r:                                             ; preds = %bb.q
  %i.an = or disjoint i16 %i.ak, 31744            ; 2 uses
  %i.ao = icmp eq i32 %i.ah, 2139095040
  br i1 %i.ao, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = lshr i32 %i.ah, 13
  %i.aq = and i32 %i.ap, 1023                     ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i16
  %i.at = trunc nuw nsw i32 %i.aq to i16
  %i.au = or i16 %i.at, %i.as
  %i.av = or disjoint i16 %i.au, %i.an
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

bb.t:                                             ; preds = %bb.q
  %i.aw = icmp samesign ugt i32 %i.ah, 1199566847
  br i1 %i.aw, label %bb.u, label %bb.v, !prof !394

bb.u:                                             ; preds = %bb.t
  %i.ax = or disjoint i16 %i.ak, 31744
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ay = add nuw nsw i32 %i.ah, 134221823
  %i.az = lshr i32 %i.ah, 13
  %i.ba = and i32 %i.az, 1
  %i.bb = add nuw nsw i32 %i.ay, %i.ba
  %i.bc = lshr i32 %i.bb, 13
  %i.bd = and i32 %i.ai, 32768
  %i.be = or i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i16
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

bb.w:                                             ; preds = %bb.p
  %i.bg = icmp samesign ult i32 %i.ah, 855638017
  br i1 %i.bg, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = lshr i32 %i.ah, 23                      ; 2 uses
  %i.bi = sub nuw nsw i32 126, %i.bh
  %i.bj = and i32 %i.ah, 8388607
  %i.bk = or disjoint i32 %i.bj, 8388608          ; 2 uses
  %i.bl = add nsw i32 %i.bh, -94
  %i.bm = shl i32 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i32 %i.bk, %i.bi                   ; 2 uses
  %i.bo = and i32 %i.ai, 32768
  %i.bp = or i32 %i.bn, %i.bo
  %i.bq = trunc nuw i32 %i.bp to i16              ; 2 uses
  %i.br = icmp ugt i32 %i.bm, -2147483648
  br i1 %i.br, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = icmp ne i32 %i.bm, -2147483648
  %i.bt = and i32 %i.bn, 1
  %.not.i.i.i.i = icmp eq i32 %i.bt, 0
  %or.cond.i.i.i.i = select i1 %i.bs, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = add nuw i16 %i.bq, 1
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.033.i.i.i.i = phi i16 [ %i.ak, %bb.w ], [ %i.av, %bb.s ], [ %i.ax, %bb.u ], [ %i.bf, %bb.v ], [ %i.an, %bb.r ], [ %i.bu, %bb.z ], [ %i.bq, %bb.y ] ; 2 uses
  %i.bv = zext i16 %.033.i.i.i.i to i32
  %i.bw = shl nuw nsw i32 %i.bv, 13
  %i.bx = and i32 %i.bw, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %.033.i.i.i.i to i32
  %i.by = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.bz = icmp samesign ugt i32 %i.bx, 8388607
  br i1 %i.bz, label %bb.aa, label %bb.ad, !prof !938

bb.aa:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i
  %i.ca = or disjoint i32 %i.bx, %i.by            ; 2 uses
  %i.cb = icmp samesign ult i32 %i.bx, 260046848
  br i1 %i.cb, label %bb.ab, label %bb.ac, !prof !938

bb.ab:                                            ; preds = %bb.aa
  %i.cc = add nuw nsw i32 %i.ca, 939524096
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cd = or i32 %i.ca, 2139095040
  br label %bb.af

bb.ad:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i
  %.not.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true)
  %i.cf = add nsw i32 %i.ce, -8                   ; 2 uses
  %i.cg = shl i32 %i.bx, %i.cf
  %i.ch = or i32 %i.by, %i.cg
  %i.ci = or i32 %i.ch, 947912704
  %i.cj = shl nuw nsw i32 %i.cf, 23
  %i.ck = sub nuw i32 %i.ci, %i.cj
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.i.i.i = phi i32 [ %i.cc, %bb.ab ], [ %i.cd, %bb.ac ], [ %i.ck, %bb.ae ], [ %i.by, %bb.ad ]
  %i.cl = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.cm = fpext float %i.cl to double
  store double %i.cm, ptr %i.c, align 8, !tbaa !535
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 8)
          to label %bb.ag unwind label %bb.ay     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.co = load i8, ptr %i.a, align 1, !tbaa !367
  %i.cp = icmp eq i8 %i.co, 5
  br i1 %i.cp, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !535
  %i.cs = fptrunc double %i.cr to float           ; 2 uses
  %i.ct = bitcast float %i.cs to i32
  %i.cu = call float @llvm.fabs.f32(float %i.cs)
  %i.cv = bitcast float %i.cu to i32              ; 10 uses
  %i.cw = lshr i32 %i.ct, 16                      ; 3 uses
  %i.cx = trunc nuw i32 %i.cw to i16
  %i.cy = and i16 %i.cx, -32768                   ; 3 uses
  %i.cz = icmp samesign ugt i32 %i.cv, 947912703
  br i1 %i.cz, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.da = icmp samesign ugt i32 %i.cv, 2139095039
  br i1 %i.da, label %bb.aj, label %bb.al, !prof !394

bb.aj:                                            ; preds = %bb.ai
  %i.db = or disjoint i16 %i.cy, 31744            ; 2 uses
  %i.dc = icmp eq i32 %i.cv, 2139095040
  br i1 %i.dc, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = lshr i32 %i.cv, 13
  %i.de = and i32 %i.dd, 1023                     ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = zext i1 %i.df to i16
  %i.dh = trunc nuw nsw i32 %i.de to i16
  %i.di = or i16 %i.dh, %i.dg
  %i.dj = or disjoint i16 %i.di, %i.db
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i85

bb.al:                                            ; preds = %bb.ai
  %i.dk = icmp samesign ugt i32 %i.cv, 1199566847
end_hunk_12
begin_hunk_13_@_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13writeTopologyERSob:bb.a
  invoke void @_ZN7openvdb5v13_02io21writeCompressedValuesIdNS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SC_b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i32 noundef 4096, ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 8 dereferenceable(512) %i.a, i1 noundef zeroext %2)
          to label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit21

bb.c:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.g ] ; 6 uses
  %i.f = lshr i64 %indvars.iv, 6
  %i.g = and i64 %i.f, 67108863
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !402  ; 2 uses
  %i.j = and i64 %indvars.iv, 62
  %i.k = shl nuw nsw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !535
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi double [ %i.n, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.o, ptr %i.p, align 8, !tbaa !535
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.q = and i64 %indvars.iv.next, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.i, %i.r
  %.not.i.1 = icmp eq i64 %i.s, 0
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = load double, ptr %i.t, align 8, !tbaa !535
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi double [ %i.u, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store double %i.v, ptr %i.w, align 8, !tbaa !535
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 4096
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !6569

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6573)
  %i.x = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.a), !noalias !6573 ; 3 uses
  store ptr %0, ptr %3, align 8, !tbaa !791, !alias.scope !6573
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.x, ptr %i.y, align 8, !alias.scope !6573
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !6573
  %.not25 = icmp eq i32 %i.x, 4096
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit21: ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  resume { ptr, i32 } %i.z

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit
  %i.aa = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit ], [ %i.x, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ]
  %i.ab = call noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !367
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 noundef 64) ; 0 uses
  %i.ah = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !914 ; 2 uses
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !490
  %i.aj = add i32 %i.ai, 1                        ; 4 uses
  %i.ak = lshr i32 %i.aj, 6                       ; 3 uses
  %i.al = icmp ugt i32 %i.aj, 4095
  br i1 %i.al, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.am = and i32 %i.aj, 63
  %i.an = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !402 ; 2 uses
  %i.aq = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ap, %i.ar
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i64 -1, %i.aq
  %i.au = and i64 %i.ap, %i.at                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %exitcond.not.i.i.i.i34 = icmp eq i32 %i.ak, 63
  br i1 %exitcond.not.i.i.i.i34, label %._crit_edge, label %.lr.ph36

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph36
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph36, !llvm.loop !49

.lr.ph36:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i35 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i35, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !49

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph36
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ak, %bb.i ], [ %i.ax, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.au, %bb.i ], [ %i.aw, %.critedge.loopexit.i.i.i.i ]
  %i.ay = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.az = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit: ; preds = %bb.h, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bb, %.critedge.i.i.i.i ], [ %i.aj, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.y, align 8, !tbaa !490
  %.not = icmp eq i32 %.118.i.i.i.i, 4096
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6572
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj5EEEEC2ERKS5_S8_PKdRS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(4096) %1, ptr noundef nonnull align 8 dereferenceable(4096) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !535 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store double %i.a, ptr %i.c, align 8, !tbaa !535
  store double %i.a, ptr %i.b, align 8, !tbaa !535
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i.i = phi ptr [ %1, %bb.a ], [ %i.k, %bb.f ] ; 5 uses
  %.0712.i.i = phi i32 [ 0, %bb.a ], [ %i.l, %bb.f ] ; 5 uses
  %i.d = load i64, ptr %.013.i.i, align 8, !tbaa !402 ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !402  ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.f, -1
  br i1 %.not.i.i.1, label %bb.d, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !402  ; 2 uses
  %.not.i.i.2 = icmp eq i64 %i.h, -1
  br i1 %.not.i.i.2, label %bb.e, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !402  ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.3, label %bb.f, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.l = add nuw nsw i32 %.0712.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.l, 512
  br i1 %exitcond.not.i.i.3, label %.thread64, label %bb.b, !llvm.loop !96

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit: ; preds = %bb.e
  %i.m = or disjoint i32 %.0712.i.i, 3
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94: ; preds = %bb.d
  %i.n = or disjoint i32 %.0712.i.i, 2
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97: ; preds = %bb.c
  %i.o = or disjoint i32 %.0712.i.i, 1
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit: ; preds = %bb.b, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit
  %.0712.i.i.lcssa = phi i32 [ %i.o, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97 ], [ %i.n, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94 ], [ %i.m, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit ], [ %.0712.i.i, %bb.b ]
  %.lcssa87 = phi i64 [ %i.f, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit97 ], [ %i.h, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit94 ], [ %i.j, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit.split.loop.exit ], [ %i.d, %bb.b ]
  %i.p = shl nuw nsw i32 %.0712.i.i.lcssa, 6
  %i.q = xor i64 %.lcssa87, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s               ; 2 uses
  %.not44 = icmp eq i32 %i.t, 32768
  br i1 %.not44, label %.thread64, label %.lr.ph

.thread64:                                        ; preds = %bb.f, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit
  store i8 0, ptr %0, align 8, !tbaa !2667
  br label %.thread38

.critedge:                                        ; preds = %.critedge28, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  store i8 0, ptr %0, align 8, !tbaa !2667
  switch i32 %.2, label %bb.z [
    i32 1, label %bb.m
    i32 2, label %bb.q
  ]

.lr.ph:                                           ; preds = %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit
  %.043 = phi i32 [ %.2, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ 0, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit ] ; 6 uses
  %.sroa.0.042 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit ], [ %i.t, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8beginOffEv.exit ] ; 4 uses
  %i.u = lshr i32 %.sroa.0.042, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !402
  %i.y = and i32 %.sroa.0.042, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.x, %i.aa
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.g, label %.critedge28

bb.g:                                             ; preds = %.lr.ph
  %i.ac = zext i32 %.sroa.0.042 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  %i.ae = icmp sgt i32 %.043, 0
  %.pre = load double, ptr %i.ad, align 8, !tbaa !535 ; 3 uses
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = load double, ptr %i.b, align 8, !tbaa !535
  %i.ag = fcmp oeq double %.pre, %i.af
  br i1 %i.ag, label %.critedge28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %cond = icmp eq i32 %.043, 2
  br i1 %cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = load double, ptr %i.c, align 8, !tbaa !535
  %i.ai = fcmp une double %.pre, %i.ah
  br i1 %i.ai, label %.critedge30, label %.critedge28

.thread:                                          ; preds = %bb.g, %bb.i
  %i.aj = sext i32 %.043 to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aj
  store double %.pre, ptr %i.ak, align 8, !tbaa !535
  br label %.critedge30

.critedge30:                                      ; preds = %bb.j, %.thread
  %i.al = add nsw i32 %.043, 1
  br label %.critedge28

.critedge28:                                      ; preds = %bb.j, %.critedge30, %bb.h, %.lr.ph
  %.2 = phi i32 [ %.043, %.lr.ph ], [ %i.al, %.critedge30 ], [ 2, %bb.j ], [ %.043, %bb.h ] ; 4 uses
  %i.am = add i32 %.sroa.0.042, 1                 ; 4 uses
  %i.an = lshr i32 %i.am, 6                       ; 3 uses
  %i.ao = icmp ugt i32 %i.am, 32767
  br i1 %i.ao, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.critedge28
  %i.ap = and i32 %i.am, 63
  %i.aq = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !402 ; 2 uses
  %i.at = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = xor i64 %i.as, -1
  %i.ax = shl nsw i64 -1, %i.at
  %i.ay = and i64 %i.ax, %i.aw                    ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %exitcond.not.i.i.i78 = icmp eq i32 %i.an, 511
  br i1 %exitcond.not.i.i.i78, label %.critedge, label %.lr.ph80

.lr.ph.i.i.i:                                     ; preds = %.lr.ph80
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 511
  br i1 %exitcond.not.i.i.i, label %.critedge, label %.lr.ph80, !llvm.loop !97

.lr.ph80:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i79 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i79, 1 ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ba, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !97

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph80
  %i.bb = xor i64 %i.ba, -1
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.l
  %.016.lcssa.i.i.i = phi i32 [ %i.an, %bb.l ], [ %i.bc, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.bb, %.critedge.loopexit.i.i.i ]
  %i.bd = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj5EEEEppEv.exit: ; preds = %bb.k, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.bg, %.critedge.i.i.i ], [ %i.am, %bb.k ] ; 2 uses
  %i.bh = icmp slt i32 %.2, 3
  %i.bi = icmp ne i32 %.118.i.i.i, 32768
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !6574

bb.m:                                             ; preds = %.critedge
  %i.bj = load double, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.bk = load double, ptr %4, align 8, !tbaa !535 ; 2 uses
  %i.bl = fcmp oeq double %i.bj, %i.bk
  br i1 %i.bl, label %.thread38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = fneg double %i.bk
  %i.bn = fcmp oeq double %i.bj, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %0, align 8, !tbaa !2667
  br label %.thread38

bb.p:                                             ; preds = %bb.n
  store i8 2, ptr %0, align 8, !tbaa !2667
  br label %.thread38

bb.q:                                             ; preds = %.critedge
  %i.bo = load double, ptr %i.b, align 8, !tbaa !535 ; 4 uses
  %i.bp = load double, ptr %4, align 8, !tbaa !535 ; 4 uses
  %i.bq = fcmp oeq double %i.bo, %i.bp
  %i.br = load double, ptr %i.c, align 8, !tbaa !535 ; 4 uses
  %i.bs = fcmp oeq double %i.br, %i.bp            ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bs, label %.thread37, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 5, ptr %0, align 8, !tbaa !2667
  br label %.thread38

bb.t:                                             ; preds = %bb.q
  br i1 %i.bs, label %.thread37, label %bb.w

.thread37:                                        ; preds = %bb.r, %bb.t
  %i.bt = fneg double %i.bp
  %i.bu = fcmp oeq double %i.bo, %i.bt
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread37
  store i8 3, ptr %0, align 8, !tbaa !2667
  br label %.thread38

bb.v:                                             ; preds = %.thread37
  store i8 4, ptr %0, align 8, !tbaa !2667
  br label %.thread38

bb.w:                                             ; preds = %bb.t
  %i.bv = fneg double %i.bp
  %i.bw = fcmp oeq double %i.br, %i.bv
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 3, ptr %0, align 8, !tbaa !2667
  store double %i.br, ptr %i.b, align 8, !tbaa !535
  store double %i.bo, ptr %i.c, align 8, !tbaa !535
  br label %.thread38

bb.y:                                             ; preds = %bb.w
  store double %i.br, ptr %i.b, align 8, !tbaa !535
  store double %i.bo, ptr %i.c, align 8, !tbaa !535
  store i8 4, ptr %0, align 8, !tbaa !2667
  br label %.thread38

bb.z:                                             ; preds = %.critedge
  %i.bx = icmp sgt i32 %.2, 2
  br i1 %i.bx, label %bb.aa, label %.thread38

bb.aa:                                            ; preds = %bb.z
  store i8 6, ptr %0, align 8, !tbaa !2667
  br label %.thread38

.thread38:                                        ; preds = %.thread64, %bb.v, %bb.u, %bb.x, %bb.y, %bb.s, %bb.aa, %bb.z, %bb.m, %bb.p, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io10HalfWriterILb1EdE5writeERSoPKdjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.q, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 1                  ; 5 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 8 uses
  store i16 0, ptr %i.d, align 2
  %i.e = add nsw i64 %i.b, -1                     ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc
  br label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc
  %i.g = getelementptr i8, ptr %i.d, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !935
  br label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader

bb.b:                                             ; preds = %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit
  %i.h = and i32 %3, 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef %i.b)
          to label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %3, 1
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7openvdb5v13_02io11zipToStreamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef %i.c)
          to label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21

bb.f:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef %i.c)
          to label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21 ; 0 uses

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader, %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit ], [ 0, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !535
  %i.m = fptrunc double %i.l to float             ; 2 uses
  %i.n = bitcast float %i.m to i32
  %i.o = tail call float @llvm.fabs.f32(float %i.m)
  %i.p = bitcast float %i.o to i32                ; 10 uses
  %i.q = lshr i32 %i.n, 16                        ; 3 uses
  %i.r = trunc nuw i32 %i.q to i16
  %i.s = and i16 %i.r, -32768                     ; 3 uses
  %i.t = icmp samesign ugt i32 %i.p, 947912703
  br i1 %i.t, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit
  %i.u = icmp samesign ugt i32 %i.p, 2139095039
  br i1 %i.u, label %bb.h, label %bb.j, !prof !394

bb.h:                                             ; preds = %bb.g
  %i.v = or disjoint i16 %i.s, 31744              ; 2 uses
  %i.w = icmp eq i32 %i.p, 2139095040
  br i1 %i.w, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = lshr i32 %i.p, 13
  %i.y = and i32 %i.x, 1023                       ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = zext i1 %i.z to i16
  %i.ab = trunc nuw nsw i32 %i.y to i16
  %i.ac = or i16 %i.ab, %i.aa
  %i.ad = or disjoint i16 %i.ac, %i.v
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = icmp samesign ugt i32 %i.p, 1199566847
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !394

bb.k:                                             ; preds = %bb.j
  %i.af = or disjoint i16 %i.s, 31744
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = add nuw nsw i32 %i.p, 134221823
  %i.ah = lshr i32 %i.p, 13
  %i.ai = and i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ag, %i.ai
  %i.ak = lshr i32 %i.aj, 13
  %i.al = and i32 %i.q, 32768
  %i.am = or i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i16
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit

bb.m:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit
  %i.ao = icmp samesign ult i32 %i.p, 855638017
  br i1 %i.ao, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = lshr i32 %i.p, 23                       ; 2 uses
  %i.aq = sub nuw nsw i32 126, %i.ap
  %i.ar = and i32 %i.p, 8388607
  %i.as = or disjoint i32 %i.ar, 8388608          ; 2 uses
  %i.at = add nsw i32 %i.ap, -94
  %i.au = shl i32 %i.as, %i.at                    ; 2 uses
  %i.av = lshr i32 %i.as, %i.aq                   ; 2 uses
  %i.aw = and i32 %i.q, 32768
  %i.ax = or i32 %i.av, %i.aw
  %i.ay = trunc nuw i32 %i.ax to i16              ; 2 uses
  %i.az = icmp ugt i32 %i.au, -2147483648
  br i1 %i.az, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp ne i32 %i.au, -2147483648
  %i.bb = and i32 %i.av, 1
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  %or.cond.i.i.i = select i1 %i.ba, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = add nuw i16 %i.ay, 1
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit

_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p
  %.033.i.i.i = phi i16 [ %i.s, %bb.m ], [ %i.ad, %bb.i ], [ %i.af, %bb.k ], [ %i.an, %bb.l ], [ %i.v, %bb.h ], [ %i.bc, %bb.p ], [ %i.ay, %bb.o ]
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %.033.i.i.i, ptr %i.bd, align 2, !tbaa !935
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %bb.b, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EEC2EmRKS5_.exit, !llvm.loop !6575

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit: ; preds = %bb.c, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.c) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit
  ret void

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit21: ; preds = %bb.f, %bb.e, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.c) #32
  resume { ptr, i32 } %i.be
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io21writeCompressedValuesIdNS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SC_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::io::MaskCompress.1811", align 8 ; 10 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %7 = alloca %"class.openvdb::v13_0::util::NodeMask.280", align 8 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !342
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = tail call noundef i32 @_ZN7openvdb5v13_02io18getDataCompressionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g) ; 4 uses
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 6, ptr %i.a, align 1, !tbaa !367
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bo unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp, %bb.b
  %.sroa.097.0 = phi ptr [ %.sroa.097.4, %bb.bp ], [ %.sroa.097.4, %bb.bu ], [ %.sroa.097.4, %bb.bt ], [ %.sroa.097.4, %bb.br ], [ null, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !535
  %i.l = load ptr, ptr %0, align 8, !tbaa !342
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.o)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load double, ptr %i.p, align 8, !tbaa !535
  store double %i.q, ptr %i.b, align 8, !tbaa !535
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj4EEEEC2ERKS5_S8_PKdRS9_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %6, align 8, !tbaa !2669
  store i8 %i.s, ptr %i.a, align 1, !tbaa !367
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  switch i8 %i.u, label %bb.ba [
    i8 5, label %bb.k
    i8 4, label %bb.k
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br i1 %5, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v, i64 noundef 8)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %i.a, align 1, !tbaa !367   ; 2 uses
  %i.y = icmp eq i8 %i.x, 5
  br i1 %i.y, label %bb.n, label %bb.ba

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z, i64 noundef 8)
          to label %thread-pre-split unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.bb, %bb.n, %bb.l, %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !535
  %i.ae = fptrunc double %i.ad to float           ; 2 uses
  %i.af = bitcast float %i.ae to i32
  %i.ag = call float @llvm.fabs.f32(float %i.ae)
  %i.ah = bitcast float %i.ag to i32              ; 10 uses
  %i.ai = lshr i32 %i.af, 16                      ; 3 uses
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = and i16 %i.aj, -32768                   ; 3 uses
  %i.al = icmp samesign ugt i32 %i.ah, 947912703
  br i1 %i.al, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.am = icmp samesign ugt i32 %i.ah, 2139095039
  br i1 %i.am, label %bb.r, label %bb.t, !prof !394

bb.r:                                             ; preds = %bb.q
  %i.an = or disjoint i16 %i.ak, 31744            ; 2 uses
  %i.ao = icmp eq i32 %i.ah, 2139095040
  br i1 %i.ao, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = lshr i32 %i.ah, 13
  %i.aq = and i32 %i.ap, 1023                     ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i16
  %i.at = trunc nuw nsw i32 %i.aq to i16
  %i.au = or i16 %i.at, %i.as
  %i.av = or disjoint i16 %i.au, %i.an
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

bb.t:                                             ; preds = %bb.q
  %i.aw = icmp samesign ugt i32 %i.ah, 1199566847
  br i1 %i.aw, label %bb.u, label %bb.v, !prof !394

bb.u:                                             ; preds = %bb.t
  %i.ax = or disjoint i16 %i.ak, 31744
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ay = add nuw nsw i32 %i.ah, 134221823
  %i.az = lshr i32 %i.ah, 13
  %i.ba = and i32 %i.az, 1
  %i.bb = add nuw nsw i32 %i.ay, %i.ba
  %i.bc = lshr i32 %i.bb, 13
  %i.bd = and i32 %i.ai, 32768
  %i.be = or i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i16
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

bb.w:                                             ; preds = %bb.p
  %i.bg = icmp samesign ult i32 %i.ah, 855638017
  br i1 %i.bg, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = lshr i32 %i.ah, 23                      ; 2 uses
  %i.bi = sub nuw nsw i32 126, %i.bh
  %i.bj = and i32 %i.ah, 8388607
  %i.bk = or disjoint i32 %i.bj, 8388608          ; 2 uses
  %i.bl = add nsw i32 %i.bh, -94
  %i.bm = shl i32 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i32 %i.bk, %i.bi                   ; 2 uses
  %i.bo = and i32 %i.ai, 32768
  %i.bp = or i32 %i.bn, %i.bo
  %i.bq = trunc nuw i32 %i.bp to i16              ; 2 uses
  %i.br = icmp ugt i32 %i.bm, -2147483648
  br i1 %i.br, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = icmp ne i32 %i.bm, -2147483648
  %i.bt = and i32 %i.bn, 1
  %.not.i.i.i.i = icmp eq i32 %i.bt, 0
  %or.cond.i.i.i.i = select i1 %i.bs, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = add nuw i16 %i.bq, 1
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i

_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.033.i.i.i.i = phi i16 [ %i.ak, %bb.w ], [ %i.av, %bb.s ], [ %i.ax, %bb.u ], [ %i.bf, %bb.v ], [ %i.an, %bb.r ], [ %i.bu, %bb.z ], [ %i.bq, %bb.y ] ; 2 uses
  %i.bv = zext i16 %.033.i.i.i.i to i32
  %i.bw = shl nuw nsw i32 %i.bv, 13
  %i.bx = and i32 %i.bw, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %.033.i.i.i.i to i32
  %i.by = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.bz = icmp samesign ugt i32 %i.bx, 8388607
  br i1 %i.bz, label %bb.aa, label %bb.ad, !prof !938

bb.aa:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i
  %i.ca = or disjoint i32 %i.bx, %i.by            ; 2 uses
  %i.cb = icmp samesign ult i32 %i.bx, 260046848
  br i1 %i.cb, label %bb.ab, label %bb.ac, !prof !938

bb.ab:                                            ; preds = %bb.aa
  %i.cc = add nuw nsw i32 %i.ca, 939524096
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cd = or i32 %i.ca, 2139095040
  br label %bb.af

bb.ad:                                            ; preds = %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i
  %.not.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true)
  %i.cf = add nsw i32 %i.ce, -8                   ; 2 uses
  %i.cg = shl i32 %i.bx, %i.cf
  %i.ch = or i32 %i.by, %i.cg
  %i.ci = or i32 %i.ch, 947912704
  %i.cj = shl nuw nsw i32 %i.cf, 23
  %i.ck = sub nuw i32 %i.ci, %i.cj
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.i.i.i = phi i32 [ %i.cc, %bb.ab ], [ %i.cd, %bb.ac ], [ %i.ck, %bb.ae ], [ %i.by, %bb.ad ]
  %i.cl = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.cm = fpext float %i.cl to double
  store double %i.cm, ptr %i.c, align 8, !tbaa !535
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 8)
          to label %bb.ag unwind label %bb.ay     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.co = load i8, ptr %i.a, align 1, !tbaa !367
  %i.cp = icmp eq i8 %i.co, 5
  br i1 %i.cp, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !535
  %i.cs = fptrunc double %i.cr to float           ; 2 uses
  %i.ct = bitcast float %i.cs to i32
  %i.cu = call float @llvm.fabs.f32(float %i.cs)
  %i.cv = bitcast float %i.cu to i32              ; 10 uses
  %i.cw = lshr i32 %i.ct, 16                      ; 3 uses
  %i.cx = trunc nuw i32 %i.cw to i16
  %i.cy = and i16 %i.cx, -32768                   ; 3 uses
  %i.cz = icmp samesign ugt i32 %i.cv, 947912703
  br i1 %i.cz, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.da = icmp samesign ugt i32 %i.cv, 2139095039
  br i1 %i.da, label %bb.aj, label %bb.al, !prof !394

bb.aj:                                            ; preds = %bb.ai
  %i.db = or disjoint i16 %i.cy, 31744            ; 2 uses
  %i.dc = icmp eq i32 %i.cv, 2139095040
  br i1 %i.dc, label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i81, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = lshr i32 %i.cv, 13
  %i.de = and i32 %i.dd, 1023                     ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = zext i1 %i.df to i16
  %i.dh = trunc nuw nsw i32 %i.de to i16
  %i.di = or i16 %i.dh, %i.dg
  %i.dj = or disjoint i16 %i.di, %i.db
  br label %_ZN7openvdb5v13_02io10RealToHalfIdE7convertEd.exit.i81

bb.al:                                            ; preds = %bb.ai
  %i.dk = icmp samesign ugt i32 %i.cv, 1199566847
end_hunk_13
begin_hunk_14_@_ZN7openvdb5v13_02io21writeCompressedValuesIdNS0_4util8NodeMaskILj4EEEEEvRSoPKT_jRKT0_SC_b:bb.a
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fv, %i.fx
  %.not.i.i.i87 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i87, label %bb.be, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

bb.be:                                            ; preds = %bb.bd
  %i.fz = shl nsw i64 -1, %i.fw
  %i.ga = and i64 %i.fv, %i.fz                    ; 2 uses
  %.not2226.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.be
  %exitcond.not.i.i.i139 = icmp eq i32 %i.fq, 63
  br i1 %exitcond.not.i.i.i139, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph141

.lr.ph.i.i.i:                                     ; preds = %.lr.ph141
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, label %.lr.ph141, !llvm.loop !49

.lr.ph141:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.ft, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i140, 1 ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !49

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph141
  %i.gd = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.be
  %.016.lcssa.i.i.i = phi i32 [ %i.fq, %bb.be ], [ %i.gd, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.ga, %bb.be ], [ %i.gc, %.critedge.loopexit.i.i.i ]
  %i.ge = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.gf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  br label %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread: ; preds = %.lr.ph109, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.gi = add i32 %.068107, 1
  br label %.loopexit

_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit: ; preds = %.critedge.i.i.i, %bb.bd
  %.118.i.i.i = phi i32 [ %i.gh, %.critedge.i.i.i ], [ %i.fp, %bb.bd ] ; 2 uses
  %i.gj = add i32 %.068107, 1                     ; 2 uses
  %.not102 = icmp eq i32 %.118.i.i.i, 4096
  br i1 %.not102, label %.loopexit, label %.lr.ph109, !llvm.loop !6576

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %7, i8 0, i64 512, i1 false), !tbaa !402
  %.not111 = icmp eq i32 %2, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gl = load double, ptr %i.gk, align 8
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.bk, %bb.bf
  %.169.lcssa = phi i32 [ 0, %bb.bf ], [ %.270, %bb.bk ]
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(512) %7, i64 noundef 512)
          to label %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit unwind label %bb.bl ; 0 uses

bb.bg:                                            ; preds = %.lr.ph, %bb.bk
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bk ] ; 4 uses
  %.169103 = phi i32 [ 0, %.lr.ph ], [ %.270, %bb.bk ] ; 4 uses
  %i.gn = lshr i64 %indvars.iv, 6
  %i.go = and i64 %i.gn, 67108863                 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !402
  %i.gr = and i64 %indvars.iv, 63
  %i.gs = shl nuw i64 1, %i.gr                    ; 2 uses
  %i.gt = and i64 %i.gq, %i.gs
  %.not101 = icmp eq i64 %i.gt, 0
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !535 ; 2 uses
  br i1 %.not101, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gw = zext i32 %.169103 to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.gw
  store double %i.gv, ptr %i.gx, align 8, !tbaa !535
  %i.gy = add i32 %.169103, 1
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.gz = fcmp oeq double %i.gv, %i.gl
  br i1 %i.gz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.go ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !402
  %i.hc = or i64 %i.hb, %i.gs
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !402
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj, %bb.bi
  %.270 = phi i32 [ %i.gy, %bb.bh ], [ %.169103, %bb.bj ], [ %.169103, %bb.bi ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ff
  br i1 %exitcond.not, label %._crit_edge, label %bb.bg, !llvm.loop !6577

_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit

bb.bl:                                            ; preds = %._crit_edge
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.bm

.loopexit:                                        ; preds = %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread, %bb.bc, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit, %bb.ba
  %.sroa.097.1 = phi ptr [ null, %bb.ba ], [ %i.fh, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ %i.fh, %bb.bc ], [ %i.fh, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.fh, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  %.3 = phi i32 [ %2, %bb.ba ], [ %.169.lcssa, %_ZNK7openvdb5v13_04util8NodeMaskILj4EE4saveERSo.exit ], [ 0, %bb.bc ], [ %i.gi, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit.thread ], [ %i.gj, %_ZN7openvdb5v13_04util14OnMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %bb.ay, %bb.o
  %.sroa.097.2 = phi ptr [ %i.fh, %bb.bl ], [ null, %bb.o ], [ null, %bb.ay ]
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.bl ], [ %i.ab, %bb.o ], [ %i.fc, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.g
  %.sroa.097.3 = phi ptr [ %.sroa.097.2, %bb.bm ], [ null, %bb.g ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bm ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bv

bb.bo:                                            ; preds = %bb.b, %.loopexit
  %.sroa.097.4 = phi ptr [ null, %bb.b ], [ %.sroa.097.1, %.loopexit ] ; 8 uses
  %.4 = phi i32 [ %2, %bb.b ], [ %.3, %.loopexit ] ; 3 uses
  %.not76 = icmp eq ptr %.sroa.097.4, null
  %i.he = select i1 %.not76, ptr %1, ptr %.sroa.097.4 ; 4 uses
  br i1 %5, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN7openvdb5v13_02io10HalfWriterILb1EdE5writeERSoPKdjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.he, i32 noundef %.4, i32 noundef %i.h)
          to label %_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit unwind label %bb.c

bb.bq:                                            ; preds = %bb.bo
  %i.hf = and i32 %i.h, 4
  %.not.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hg = zext i32 %.4 to i64
  invoke void @_ZN7openvdb5v13_02io13bloscToStreamERSoPKcmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.he, i64 noundef 8, i64 noundef %i.hg)
          to label %_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit unwind label %bb.c

bb.bs:                                            ; preds = %bb.bq
  %i.hh = and i32 %i.h, 1
  %.not10.i = icmp eq i32 %i.hh, 0
  %i.hi = zext i32 %.4 to i64
  %i.hj = shl nuw nsw i64 %i.hi, 3                ; 2 uses
  br i1 %.not10.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN7openvdb5v13_02io11zipToStreamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.he, i64 noundef %i.hj)
          to label %_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit unwind label %bb.c

bb.bu:                                            ; preds = %bb.bs
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.he, i64 noundef %i.hj)
          to label %_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit unwind label %bb.c ; 0 uses

_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit: ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i90 = icmp eq ptr %.sroa.097.4, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.097.4) #32
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN7openvdb5v13_02io9writeDataIdEEvRSoPKT_jj.exit, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void

bb.bv:                                            ; preds = %bb.bn, %bb.c
  %.sroa.097.5 = phi ptr [ %.sroa.097.0, %bb.c ], [ %.sroa.097.3, %bb.bn ] ; 2 uses
  %.pn77 = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i91 = icmp eq ptr %.sroa.097.5, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit93, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92: ; preds = %bb.bv
  call void @_ZdaPv(ptr noundef nonnull %.sroa.097.5) #32
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit93

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit93: ; preds = %bb.bv, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i92
  resume { ptr, i32 } %.pn77
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj4EEEEC2ERKS5_S8_PKdRS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #5 comdat align 2 {
bb.a:
  store i8 6, ptr %0, align 8, !tbaa !2669
  %i.a = load double, ptr %4, align 8, !tbaa !535 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store double %i.a, ptr %i.c, align 8, !tbaa !535
  store double %i.a, ptr %i.b, align 8, !tbaa !535
  %i.d = tail call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE12findFirstOffEv(ptr noundef nonnull align 8 dereferenceable(512) %1) ; 2 uses
  %.not41 = icmp eq i32 %i.d, 4096
  br i1 %.not41, label %.thread55, label %.lr.ph

.thread55:                                        ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !2669
  br label %.thread38

.critedge:                                        ; preds = %.critedge28, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  store i8 0, ptr %0, align 8, !tbaa !2669
  switch i32 %.2, label %bb.u [
    i32 1, label %bb.h
    i32 2, label %bb.l
  ]

.lr.ph:                                           ; preds = %bb.a, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit
  %.040 = phi i32 [ %.2, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ 0, %bb.a ] ; 6 uses
  %.sroa.0.039 = phi i32 [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit ], [ %i.d, %bb.a ] ; 4 uses
  %i.e = lshr i32 %.sroa.0.039, 6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !402
  %i.i = and i32 %.sroa.0.039, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.h, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %.critedge28

bb.b:                                             ; preds = %.lr.ph
  %i.m = zext i32 %.sroa.0.039 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.o = icmp sgt i32 %.040, 0
  %.pre = load double, ptr %i.n, align 8, !tbaa !535 ; 3 uses
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load double, ptr %i.b, align 8, !tbaa !535
  %i.q = fcmp oeq double %.pre, %i.p
  br i1 %i.q, label %.critedge28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %cond = icmp eq i32 %.040, 2
  br i1 %cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load double, ptr %i.c, align 8, !tbaa !535
  %i.s = fcmp une double %.pre, %i.r
  br i1 %i.s, label %.critedge30, label %.critedge28

.thread:                                          ; preds = %bb.b, %bb.d
  %i.t = sext i32 %.040 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.t
  store double %.pre, ptr %i.u, align 8, !tbaa !535
  br label %.critedge30

.critedge30:                                      ; preds = %bb.e, %.thread
  %i.v = add nsw i32 %.040, 1
  br label %.critedge28

.critedge28:                                      ; preds = %bb.e, %.critedge30, %bb.c, %.lr.ph
  %.2 = phi i32 [ %.040, %.lr.ph ], [ %i.v, %.critedge30 ], [ 2, %bb.e ], [ %.040, %bb.c ] ; 4 uses
  %i.w = add i32 %.sroa.0.039, 1                  ; 4 uses
  %i.x = lshr i32 %i.w, 6                         ; 3 uses
  %i.y = icmp ugt i32 %i.w, 4095
  br i1 %i.y, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge28
  %i.z = and i32 %i.w, 63
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !402 ; 2 uses
  %i.ad = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ac, %i.ae
  %.not.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = xor i64 %i.ac, -1
  %i.ah = shl nsw i64 -1, %i.ad
  %i.ai = and i64 %i.ah, %i.ag                    ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %exitcond.not.i.i.i63 = icmp eq i32 %i.x, 63
  br i1 %exitcond.not.i.i.i63, label %.critedge, label %.lr.ph65

.lr.ph.i.i.i:                                     ; preds = %.lr.ph65
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %.critedge, label %.lr.ph65, !llvm.loop !92

.lr.ph65:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i64 = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.preheader ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i64, 1 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ak, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !92

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph65
  %i.al = xor i64 %i.ak, -1
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.g
  %.016.lcssa.i.i.i = phi i32 [ %i.x, %bb.g ], [ %i.am, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.ai, %bb.g ], [ %i.al, %.critedge.loopexit.i.i.i ]
  %i.an = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj4EEEEppEv.exit: ; preds = %bb.f, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.aq, %.critedge.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.ar = icmp slt i32 %.2, 3
  %i.as = icmp ne i32 %.118.i.i.i, 4096
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !6578

bb.h:                                             ; preds = %.critedge
  %i.at = load double, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.au = load double, ptr %4, align 8, !tbaa !535 ; 2 uses
  %i.av = fcmp oeq double %i.at, %i.au
  br i1 %i.av, label %.thread38, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = fneg double %i.au
  %i.ax = fcmp oeq double %i.at, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %0, align 8, !tbaa !2669
  br label %.thread38

bb.k:                                             ; preds = %bb.i
  store i8 2, ptr %0, align 8, !tbaa !2669
  br label %.thread38

bb.l:                                             ; preds = %.critedge
  %i.ay = load double, ptr %i.b, align 8, !tbaa !535 ; 4 uses
  %i.az = load double, ptr %4, align 8, !tbaa !535 ; 4 uses
  %i.ba = fcmp oeq double %i.ay, %i.az
  %i.bb = load double, ptr %i.c, align 8, !tbaa !535 ; 4 uses
  %i.bc = fcmp oeq double %i.bb, %i.az            ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.bc, label %.thread37, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 5, ptr %0, align 8, !tbaa !2669
  br label %.thread38

bb.o:                                             ; preds = %bb.l
  br i1 %i.bc, label %.thread37, label %bb.r

.thread37:                                        ; preds = %bb.m, %bb.o
  %i.bd = fneg double %i.az
  %i.be = fcmp oeq double %i.ay, %i.bd
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread37
  store i8 3, ptr %0, align 8, !tbaa !2669
  br label %.thread38

bb.q:                                             ; preds = %.thread37
  store i8 4, ptr %0, align 8, !tbaa !2669
  br label %.thread38

bb.r:                                             ; preds = %bb.o
  %i.bf = fneg double %i.az
  %i.bg = fcmp oeq double %i.bb, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 3, ptr %0, align 8, !tbaa !2669
  store double %i.bb, ptr %i.b, align 8, !tbaa !535
  store double %i.ay, ptr %i.c, align 8, !tbaa !535
  br label %.thread38

bb.t:                                             ; preds = %bb.r
  store double %i.bb, ptr %i.b, align 8, !tbaa !535
  store double %i.ay, ptr %i.c, align 8, !tbaa !535
  store i8 4, ptr %0, align 8, !tbaa !2669
  br label %.thread38

bb.u:                                             ; preds = %.critedge
  %i.bh = icmp sgt i32 %.2, 2
  br i1 %i.bh, label %bb.v, label %.thread38

bb.v:                                             ; preds = %bb.u
  store i8 6, ptr %0, align 8, !tbaa !2669
  br label %.thread38

.thread38:                                        ; preds = %.thread55, %bb.q, %bb.p, %bb.s, %bb.t, %bb.n, %bb.v, %bb.u, %bb.h, %bb.k, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE11readBuffersERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 8 ; 7 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>::ChildIter.1417", align 8 ; 6 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter.1411", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6587)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i.i.i = phi ptr [ %i.a, %bb.a ], [ %i.i, %bb.f ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %bb.f ] ; 5 uses
  %i.b = load i64, ptr %.013.i.i.i, align 8, !tbaa !402, !noalias !6587 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !402, !noalias !6587 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.1, label %bb.d, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !402, !noalias !6587 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.2, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !402, !noalias !6587 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.3, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.j = add nuw nsw i32 %.0712.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.j, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.b, !llvm.loop !47

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.e
  %i.k = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61: ; preds = %bb.d
  %i.l = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64: ; preds = %bb.c
  %i.m = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.b, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61 ], [ %i.k, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.b ]
  %.lcssa53 = phi i64 [ %i.d, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit64 ], [ %i.f, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit61 ], [ %i.h, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.b, %bb.b ]
  %i.n = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa53, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p               ; 3 uses
  store ptr %0, ptr %5, align 8, !tbaa !2229, !alias.scope !6587
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !alias.scope !6587
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !6587
  %.not7 = icmp eq i32 %i.q, 32768
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit
  %i.u = phi i32 [ %i.q, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit ]
  %i.v = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !6588)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32768 ; 2 uses
  %i.aa = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.z), !noalias !6588 ; 3 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !2259, !alias.scope !6588
  store i32 %i.aa, ptr %i.s, align 8, !alias.scope !6588
  store ptr %i.z, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !6588
  %.not2.i = icmp eq i32 %i.aa, 4096
  br i1 %.not2.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i
  %i.ab = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i ], [ %i.aa, %bb.g ]
  %i.ac = call noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 -9223372034707292160, ptr %3, align 8, !alias.scope !6589
  store i32 -2147483648, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !tbaa !367, !alias.scope !6589
  store i64 9223372034707292159, ptr %i.t, align 4, !alias.scope !6589
  store i32 2147483647, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !367, !alias.scope !6589
  call void @_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE11readBuffersERSiRKNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %3, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ag = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !914 ; 2 uses
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !490
  %i.ai = add i32 %i.ah, 1                        ; 4 uses
  %i.aj = lshr i32 %i.ai, 6                       ; 3 uses
  %i.ak = icmp ugt i32 %i.ai, 4095
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.al = and i32 %i.ai, 63
  %i.am = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !402 ; 2 uses
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.ao, %i.aq
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.as = shl nsw i64 -1, %i.ap
  %i.at = and i64 %i.ao, %i.as                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %exitcond.not.i.i.i.i.i39 = icmp eq i32 %i.aj, 63
  br i1 %exitcond.not.i.i.i.i.i39, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph41

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph41
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph41, !llvm.loop !49

.lr.ph41:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i40 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i40, 1 ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !402 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !49

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph41
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.i
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.aj, %bb.i ], [ %i.aw, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.at, %bb.i ], [ %i.av, %.critedge.loopexit.i.i.i.i.i ]
  %i.ax = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.ay = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.h
  %.118.i.i.i.i.i = phi i32 [ %i.ba, %.critedge.i.i.i.i.i ], [ %i.ai, %bb.h ] ; 3 uses
  store i32 %.118.i.i.i.i.i, ptr %i.s, align 8, !tbaa !490
  %.not.i = icmp eq i32 %.118.i.i.i.i.i, 4096
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit, label %.lr.ph.i, !llvm.loop !6585

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit: ; preds = %.lr.ph.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bb = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !825 ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !489
  %i.bd = add i32 %i.bc, 1                        ; 4 uses
  %i.be = lshr i32 %i.bd, 6                       ; 3 uses
  %i.bf = icmp ugt i32 %i.bd, 32767
  br i1 %i.bf, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11readBuffersERSib.exit
  %i.bg = and i32 %i.bd, 63
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !402 ; 2 uses
  %i.bk = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEppEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bn = shl nsw i64 -1, %i.bk
  %i.bo = and i64 %i.bj, %i.bn                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i
end_hunk_14
begin_hunk_15_@_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i4.i.i = phi i32 [ %i.hi, %bb.z ], [ %i.hs, %bb.aa ]
  %i.ht = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.ht, label %bb.ab, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit.i, !prof !394

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #22
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit.i

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.x, %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 48) #32
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit.i, %bb.o
  store ptr null, ptr %i.gc, align 8, !tbaa !367
  store atomic i32 0, ptr %i.gh seq_cst, align 8
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.m
  %i.hu = load ptr, ptr %i.gc, align 8, !tbaa !367
  %.not.i.i.i2.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i2.i, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = load atomic i32, ptr %i.gh seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not3.i.i.i.i, label %bb.af, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.hw = load ptr, ptr %i.gc, align 8, !tbaa !367 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.hw) #32
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i: ; preds = %bb.ac, %bb.n, %bb.ag, %bb.af, %bb.ae, %bb.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 96) #32
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE18makeChildNodeEmptyEjRKd.exit

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE18makeChildNodeEmptyEjRKd.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE14unsetChildNodeEjRKd.exit.thread.i, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE14unsetChildNodeEjRKd.exit.i, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i
  br i1 %3, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE18makeChildNodeEmptyEjRKd.exit
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !402
  %i.ia = or i64 %i.hz, %i.bp
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !402
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKNS0_4math9CoordBBoxERKdb.exit

bb.ai:                                            ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE18makeChildNodeEmptyEjRKd.exit
  %i.ib = xor i64 %i.bp, -1
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !402
  %i.ie = and i64 %i.id, %i.ib
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !402
  br label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKNS0_4math9CoordBBoxERKdb.exit

_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE4fillERKNS0_4math9CoordBBoxERKdb.exit: ; preds = %._crit_edge48.split.split.i, %._crit_edge48.split.split.us.us.i, %bb.ai, %bb.ah, %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE8allocateEv.exit.i, %bb.e
  %i.if = add nsw i32 %i.az, 8                    ; 2 uses
  %.not39 = icmp sgt i32 %i.if, %i.z
  br i1 %.not39, label %._crit_edge, label %bb.b, !llvm.loop !6647

_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread: ; preds = %._crit_edge151.split, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE4fillERKNS0_4math9CoordBBoxERKdb(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 270336 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !340, !noalias !6660 ; 2 uses
  %i.c = add nsw i32 %i.b, 4095
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 270340 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !340, !noalias !6660 ; 2 uses
  %i.f = add nsw i32 %i.e, 4095
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 270344 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !340, !noalias !6660 ; 2 uses
  %i.i = add nsw i32 %i.h, 4095
  %i.j = load i32, ptr %1, align 4, !tbaa !340
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !340
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !340
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !340
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.c) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !340
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.f) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !340
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.i) ; 4 uses
  %i.aa = icmp sle i32 %i.k, %i.t
  %i.ab = icmp sle i32 %i.n, %i.w
  %or.cond.not121 = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = icmp sle i32 %i.q, %i.z
  %or.cond113 = select i1 %or.cond.not121, i1 %i.ac, i1 false
  br i1 %or.cond113, label %.preheader129, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread

.preheader129:                                    ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader129, %._crit_edge137.split
  %.0139 = phi i32 [ %i.ao, %._crit_edge137.split ], [ %i.k, %.preheader129 ] ; 4 uses
  %i.ag = shl i32 %.0139, 3
  %i.ah = and i32 %i.ag, 31744                    ; 2 uses
  %i.ai = lshr exact i32 %i.ah, 3
  %i.aj = and i32 %.0139, -128
  br label %.preheader

.preheader:                                       ; preds = %.preheader128, %._crit_edge
  %.035136 = phi i32 [ %i.n, %.preheader128 ], [ %i.ap, %._crit_edge ] ; 4 uses
  %i.ak = lshr i32 %.035136, 2
  %i.al = and i32 %i.ak, 992                      ; 2 uses
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = and i32 %.035136, -128
  br label %bb.b

._crit_edge137.split:                             ; preds = %._crit_edge
  %i.ao = add nsw i32 %i.aw, 128                  ; 2 uses
  %.not = icmp sgt i32 %i.ao, %i.t
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread, label %.preheader128, !llvm.loop !6654

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit
  %i.ap = add nsw i32 %i.ay, 128                  ; 2 uses
  %.not38 = icmp sgt i32 %i.ap, %i.w
  br i1 %.not38, label %._crit_edge137.split, label %.preheader, !llvm.loop !6655

bb.b:                                             ; preds = %.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit
  %.036131 = phi i32 [ %i.q, %.preheader ], [ %i.gc, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit ] ; 4 uses
  %i.aq = lshr i32 %.036131, 7
  %i.ar = and i32 %i.aq, 31                       ; 2 uses
  %i.as = or disjoint i32 %i.ar, %i.al            ; 2 uses
  %i.at = or disjoint i32 %i.as, %i.ah            ; 4 uses
  %i.au = shl nuw nsw i32 %i.ar, 7
  %i.av = load i32, ptr %i.a, align 8, !tbaa !340
  %i.aw = add nsw i32 %i.av, %i.ai                ; 3 uses
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !340
  %i.ay = add nsw i32 %i.ax, %i.am                ; 3 uses
  %i.az = load i32, ptr %i.g, align 8, !tbaa !340
  %i.ba = add nsw i32 %i.az, %i.au                ; 3 uses
  %i.bb = add nsw i32 %i.aw, 127                  ; 2 uses
  %i.bc = add nsw i32 %i.ay, 127                  ; 2 uses
  %i.bd = add nsw i32 %i.ba, 127                  ; 2 uses
  %i.be = icmp ne i32 %.0139, %i.aw
  %i.bf = icmp ne i32 %.035136, %i.ay
  %or.cond114.not124 = or i1 %i.be, %i.bf
  %i.bg = icmp ne i32 %.036131, %i.ba
  %or.cond115 = select i1 %or.cond114.not124, i1 true, i1 %i.bg
  %i.bh = icmp slt i32 %i.t, %i.bb
  %or.cond116 = select i1 %or.cond115, i1 true, i1 %i.bh
  %i.bi = icmp slt i32 %i.w, %i.bc
  %or.cond117 = select i1 %or.cond116, i1 true, i1 %i.bi
  %i.bj = icmp slt i32 %i.z, %i.bd
  %or.cond118 = select i1 %or.cond117, i1 true, i1 %i.bj
  %i.bk = lshr i32 %i.at, 6
  %i.bl = zext nneg i32 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bl ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !402 ; 2 uses
  %i.bo = and i32 %i.as, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp                    ; 7 uses
  %i.br = and i64 %i.bn, %i.bq
  %.not.i.i = icmp eq i64 %i.br, 0                ; 2 uses
  br i1 %or.cond118, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.g

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.b
  br i1 %.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.bs = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 12 uses
  %i.bt = zext nneg i32 %i.at to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bl ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !402 ; 2 uses
  %i.bx = and i64 %i.bw, %i.bq
  %.not126 = icmp eq i64 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.bs, i8 0, i64 33792, i1 false)
  %i.bz = and i32 %.036131, -128
  store i32 %i.aj, ptr %i.by, align 8, !tbaa !340
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 33796
  store i32 %i.an, ptr %i.ca, align 4, !tbaa !340
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 33800
  store i32 %i.bz, ptr %i.cb, align 8, !tbaa !340
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 33804
  store i32 0, ptr %i.cc, align 4, !tbaa !2671
  br i1 %.not126, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 33280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.cd, i8 -1, i64 512, i1 false), !tbaa !402
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.d
  %.pre.i = load double, ptr %i.bu, align 8, !tbaa !535
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ce, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.cf, align 8, !tbaa !367
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ch, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.ci, align 8, !tbaa !367
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store <2 x double> %broadcast.splat, ptr %i.ck, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.cl, align 8, !tbaa !367
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.co, align 8, !tbaa !367
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cp = icmp eq i64 %index.next.3, 4096
  br i1 %i.cp, label %.thread, label %vector.body, !llvm.loop !6656

.thread:                                          ; preds = %vector.body
  %i.cq = load i64, ptr %i.bm, align 8, !tbaa !402
  %i.cr = or i64 %i.cq, %i.bq
  store i64 %i.cr, ptr %i.bm, align 8, !tbaa !402
  %i.cs = xor i64 %i.bq, -1
  %i.ct = and i64 %i.bw, %i.cs
  store i64 %i.ct, ptr %i.bv, align 8, !tbaa !402
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !367
  br label %bb.f

bb.e:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cu = zext nneg i32 %i.at to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !367 ; 2 uses
  %.not40 = icmp eq ptr %i.cw, null
  br i1 %.not40, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.037112 = phi ptr [ %i.bs, %.thread ], [ %i.cw, %bb.e ]
  %.sroa.speculated16.i = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.t)
  %.sroa.speculated11.i = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.w)
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.z)
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.speculated11.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.speculated16.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %.0139, ptr %4, align 4
  store i32 %.035136, ptr %.sroa.9.0..sroa_idx, align 4
  store i32 %.036131, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !367
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.af, align 4
  store i32 %.sroa.speculated.i, ptr %.sroa.4.0..sroa_idx50, align 4, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKdb(ptr noundef nonnull align 8 dereferenceable(33808) %.037112, ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit

bb.g:                                             ; preds = %bb.b
  %i.cx = zext nneg i32 %i.at to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx ; 3 uses
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE14unsetChildNodeEjRKd.exit.thread.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE14unsetChildNodeEjRKd.exit.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE14unsetChildNodeEjRKd.exit.thread.i: ; preds = %bb.g
  %i.cz = load double, ptr %2, align 8, !tbaa !535
  store double %i.cz, ptr %i.cy, align 8, !tbaa !367
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKd.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE14unsetChildNodeEjRKd.exit.i: ; preds = %bb.g
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !367 ; 4 uses
  %i.db = xor i64 %i.bq, -1
  %i.dc = and i64 %i.bn, %i.db
  store i64 %i.dc, ptr %i.bm, align 8, !tbaa !402
  %i.dd = load double, ptr %2, align 8, !tbaa !535
  store double %i.dd, ptr %i.cy, align 8, !tbaa !367
  %i.de = icmp eq ptr %i.da, null
  br i1 %i.de, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE18makeChildNodeEmptyEjRKd.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE14unsetChildNodeEjRKd.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32768 ; 3 uses
  %i.dg = call noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %i.df), !noalias !6661 ; 2 uses
  %.not4.i = icmp eq i32 %i.dg, 4096
  br i1 %.not4.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i
  %.sroa.3.05.i = phi i32 [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i ], [ %i.dg, %bb.h ] ; 2 uses
  %i.dh = zext i32 %.sroa.3.05.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !367 ; 7 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dm = load atomic i32, ptr %i.dl seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dn = load atomic i32, ptr %i.dl seq_cst, align 4
  %.not125 = icmp eq i32 %i.dn, 0
  br i1 %.not125, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !367 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !393 ; 8 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ds, align 8, !tbaa !385
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !386
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !342
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22, !inline_history !252
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !342
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22, !inline_history !252
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !367
  %.not.i.i.i.i.i49 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !340
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.dv, %bb.p ], [ %i.ef, %bb.q ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eg, label %bb.r, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !394

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !393 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i1.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ej, align 8, !tbaa !385
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !386
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !342
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #22, !inline_history !253
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !342
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #22, !inline_history !253
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit.i
end_hunk_15
begin_hunk_16_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIdLj3EEELj4EEELj5EE8DeepCopyISI_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.be = load ptr, ptr %i.p, align 32, !tbaa !2758
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !426, !noundef !670
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.bi = add i8 %i.t, 1
  store i8 %i.bi, ptr %i.i, align 4, !tbaa !882
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1486
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.bj = add i8 %i.t, 1                          ; 2 uses
  store i8 %i.bj, ptr %i.i, align 4, !tbaa !882
  %i.bk = icmp ugt i8 %.pr, 1
  br i1 %i.bk, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6852 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE8DeepCopyISC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bt, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !2756
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  store ptr null, ptr %i.bu, align 32, !tbaa !2758
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store i32 2, ptr %i.by, align 16, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6852 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 32, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 32, !tbaa !2758
  store ptr %i.ce, ptr %i.bu, align 32, !tbaa !2758
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !6852
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE8DeepCopyIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !6853

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE8DeepCopyIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>::DeepCopy", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not12 = icmp eq i32 %i.b, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.013 = phi i32 [ %i.b, %.lr.ph ], [ %i.an, %bb.g ] ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2754   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 262144
  %i.j = lshr i32 %.013, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !402
  %i.n = and i32 %.013, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.m, %i.p
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !2755 ; 2 uses
  %i.s = zext i32 %.013 to i64                    ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !535
  store double %i.v, ptr %i.t, align 8, !tbaa !367
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.w = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 8 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !2754
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.s
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !367  ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.w, i8 0, i64 32768, i1 false), !tbaa !367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32768
  %i.ac = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, ptr noundef nonnull align 8 dereferenceable(512) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 33280
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 33280
  %i.af = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ad, ptr noundef nonnull align 8 dereferenceable(512) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 33792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 33792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !963
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 33804
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 33804
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !2671
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.z, ptr %4, align 8, !tbaa !2760
  store ptr %i.w, ptr %i.e, align 8, !tbaa !2761
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.f, align 4, !tbaa !433
  store i64 1, ptr %i.g, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store ptr %i.w, ptr %i.al, align 8, !tbaa !367
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 33808) #32
  resume { ptr, i32 } %i.am

bb.g:                                             ; preds = %bb.c, %bb.e
  %i.an = add i32 %.013, 1                        ; 2 uses
  %.not = icmp eq i32 %i.an, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6854
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !590
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !591
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !367
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !433
  %i.g = load i32, ptr %0, align 8, !tbaa !432
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !870
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !342
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1479
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2762
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !2764
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.p, align 16, !tbaa !881
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.q, align 4, !tbaa !882
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !883
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.u = load i64, ptr %3, align 8, !tbaa !884
  store i64 %i.u, ptr %i.t, align 8, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !888
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !889
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !416
  store ptr %4, ptr %i.l, align 32, !tbaa !2764
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !895  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !883
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE8DeepCopyISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !883
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !896
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE8DeepCopyISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !2764
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE8DeepCopyISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 32, !tbaa !2764
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !882
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !882
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE8DeepCopyISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE8DeepCopyISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSB_8LeafNodeIdLj3EEELj4EE8DeepCopyISF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !2764 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !884
  %i.aa = load ptr, ptr %0, align 64, !tbaa !342
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #22, !inline_history !311
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
end_hunk_16
begin_hunk_17_@_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesclERKN3tbb6detail2d113blocked_rangeIjEE:bb.a
  %i.af = getelementptr i8, ptr %i.t, i64 32848   ; 2 uses
  %wide.load43.2 = load <2 x i64>, ptr %next.gep40.2, align 8, !tbaa !402
  %wide.load44.2 = load <2 x i64>, ptr %i.af, align 8, !tbaa !402
  %i.ag = or <2 x i64> %wide.load43.2, %wide.load41.2
  %i.ah = or <2 x i64> %wide.load44.2, %wide.load42.2
  store <2 x i64> %i.ag, ptr %next.gep40.2, align 8, !tbaa !402
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !402
  %next.gep39.3 = getelementptr i8, ptr %i.t, i64 33376
  %next.gep40.3 = getelementptr i8, ptr %i.t, i64 32864 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 33392
  %wide.load41.3 = load <2 x i64>, ptr %next.gep39.3, align 8, !tbaa !402
  %wide.load42.3 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !402
  %i.aj = getelementptr i8, ptr %i.t, i64 32880   ; 2 uses
  %wide.load43.3 = load <2 x i64>, ptr %next.gep40.3, align 8, !tbaa !402
  %wide.load44.3 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !402
  %i.ak = or <2 x i64> %wide.load43.3, %wide.load41.3
  %i.al = or <2 x i64> %wide.load44.3, %wide.load42.3
  store <2 x i64> %i.ak, ptr %next.gep40.3, align 8, !tbaa !402
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !402
  %next.gep39.4 = getelementptr i8, ptr %i.t, i64 33408
  %next.gep40.4 = getelementptr i8, ptr %i.t, i64 32896 ; 2 uses
  %i.am = getelementptr i8, ptr %i.t, i64 33424
  %wide.load41.4 = load <2 x i64>, ptr %next.gep39.4, align 8, !tbaa !402
  %wide.load42.4 = load <2 x i64>, ptr %i.am, align 8, !tbaa !402
  %i.an = getelementptr i8, ptr %i.t, i64 32912   ; 2 uses
  %wide.load43.4 = load <2 x i64>, ptr %next.gep40.4, align 8, !tbaa !402
  %wide.load44.4 = load <2 x i64>, ptr %i.an, align 8, !tbaa !402
  %i.ao = or <2 x i64> %wide.load43.4, %wide.load41.4
  %i.ap = or <2 x i64> %wide.load44.4, %wide.load42.4
  store <2 x i64> %i.ao, ptr %next.gep40.4, align 8, !tbaa !402
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !402
  %next.gep39.5 = getelementptr i8, ptr %i.t, i64 33440
  %next.gep40.5 = getelementptr i8, ptr %i.t, i64 32928 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 33456
  %wide.load41.5 = load <2 x i64>, ptr %next.gep39.5, align 8, !tbaa !402
  %wide.load42.5 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !402
  %i.ar = getelementptr i8, ptr %i.t, i64 32944   ; 2 uses
  %wide.load43.5 = load <2 x i64>, ptr %next.gep40.5, align 8, !tbaa !402
  %wide.load44.5 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !402
  %i.as = or <2 x i64> %wide.load43.5, %wide.load41.5
  %i.at = or <2 x i64> %wide.load44.5, %wide.load42.5
  store <2 x i64> %i.as, ptr %next.gep40.5, align 8, !tbaa !402
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !402
  %next.gep39.6 = getelementptr i8, ptr %i.t, i64 33472
  %next.gep40.6 = getelementptr i8, ptr %i.t, i64 32960 ; 2 uses
  %i.au = getelementptr i8, ptr %i.t, i64 33488
  %wide.load41.6 = load <2 x i64>, ptr %next.gep39.6, align 8, !tbaa !402
  %wide.load42.6 = load <2 x i64>, ptr %i.au, align 8, !tbaa !402
  %i.av = getelementptr i8, ptr %i.t, i64 32976   ; 2 uses
  %wide.load43.6 = load <2 x i64>, ptr %next.gep40.6, align 8, !tbaa !402
  %wide.load44.6 = load <2 x i64>, ptr %i.av, align 8, !tbaa !402
  %i.aw = or <2 x i64> %wide.load43.6, %wide.load41.6
  %i.ax = or <2 x i64> %wide.load44.6, %wide.load42.6
  store <2 x i64> %i.aw, ptr %next.gep40.6, align 8, !tbaa !402
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !402
  %next.gep39.7 = getelementptr i8, ptr %i.t, i64 33504
  %next.gep40.7 = getelementptr i8, ptr %i.t, i64 32992 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.t, i64 33520
  %wide.load41.7 = load <2 x i64>, ptr %next.gep39.7, align 8, !tbaa !402
  %wide.load42.7 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !402
  %i.az = getelementptr i8, ptr %i.t, i64 33008   ; 2 uses
  %wide.load43.7 = load <2 x i64>, ptr %next.gep40.7, align 8, !tbaa !402
  %wide.load44.7 = load <2 x i64>, ptr %i.az, align 8, !tbaa !402
  %i.ba = or <2 x i64> %wide.load43.7, %wide.load41.7
  %i.bb = or <2 x i64> %wide.load44.7, %wide.load42.7
  store <2 x i64> %i.ba, ptr %next.gep40.7, align 8, !tbaa !402
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !402
  %next.gep39.8 = getelementptr i8, ptr %i.t, i64 33536
  %next.gep40.8 = getelementptr i8, ptr %i.t, i64 33024 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.t, i64 33552
  %wide.load41.8 = load <2 x i64>, ptr %next.gep39.8, align 8, !tbaa !402
  %wide.load42.8 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !402
  %i.bd = getelementptr i8, ptr %i.t, i64 33040   ; 2 uses
  %wide.load43.8 = load <2 x i64>, ptr %next.gep40.8, align 8, !tbaa !402
  %wide.load44.8 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !402
  %i.be = or <2 x i64> %wide.load43.8, %wide.load41.8
  %i.bf = or <2 x i64> %wide.load44.8, %wide.load42.8
  store <2 x i64> %i.be, ptr %next.gep40.8, align 8, !tbaa !402
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !402
  %next.gep39.9 = getelementptr i8, ptr %i.t, i64 33568
  %next.gep40.9 = getelementptr i8, ptr %i.t, i64 33056 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.t, i64 33584
  %wide.load41.9 = load <2 x i64>, ptr %next.gep39.9, align 8, !tbaa !402
  %wide.load42.9 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !402
  %i.bh = getelementptr i8, ptr %i.t, i64 33072   ; 2 uses
  %wide.load43.9 = load <2 x i64>, ptr %next.gep40.9, align 8, !tbaa !402
  %wide.load44.9 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !402
  %i.bi = or <2 x i64> %wide.load43.9, %wide.load41.9
  %i.bj = or <2 x i64> %wide.load44.9, %wide.load42.9
  store <2 x i64> %i.bi, ptr %next.gep40.9, align 8, !tbaa !402
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !402
  %next.gep39.10 = getelementptr i8, ptr %i.t, i64 33600
  %next.gep40.10 = getelementptr i8, ptr %i.t, i64 33088 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.t, i64 33616
  %wide.load41.10 = load <2 x i64>, ptr %next.gep39.10, align 8, !tbaa !402
  %wide.load42.10 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !402
  %i.bl = getelementptr i8, ptr %i.t, i64 33104   ; 2 uses
  %wide.load43.10 = load <2 x i64>, ptr %next.gep40.10, align 8, !tbaa !402
  %wide.load44.10 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !402
  %i.bm = or <2 x i64> %wide.load43.10, %wide.load41.10
  %i.bn = or <2 x i64> %wide.load44.10, %wide.load42.10
  store <2 x i64> %i.bm, ptr %next.gep40.10, align 8, !tbaa !402
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !402
  %next.gep39.11 = getelementptr i8, ptr %i.t, i64 33632
  %next.gep40.11 = getelementptr i8, ptr %i.t, i64 33120 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.t, i64 33648
  %wide.load41.11 = load <2 x i64>, ptr %next.gep39.11, align 8, !tbaa !402
  %wide.load42.11 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !402
  %i.bp = getelementptr i8, ptr %i.t, i64 33136   ; 2 uses
  %wide.load43.11 = load <2 x i64>, ptr %next.gep40.11, align 8, !tbaa !402
  %wide.load44.11 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !402
  %i.bq = or <2 x i64> %wide.load43.11, %wide.load41.11
  %i.br = or <2 x i64> %wide.load44.11, %wide.load42.11
  store <2 x i64> %i.bq, ptr %next.gep40.11, align 8, !tbaa !402
  store <2 x i64> %i.br, ptr %i.bp, align 8, !tbaa !402
  %next.gep39.12 = getelementptr i8, ptr %i.t, i64 33664
  %next.gep40.12 = getelementptr i8, ptr %i.t, i64 33152 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.t, i64 33680
  %wide.load41.12 = load <2 x i64>, ptr %next.gep39.12, align 8, !tbaa !402
  %wide.load42.12 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !402
  %i.bt = getelementptr i8, ptr %i.t, i64 33168   ; 2 uses
  %wide.load43.12 = load <2 x i64>, ptr %next.gep40.12, align 8, !tbaa !402
  %wide.load44.12 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !402
  %i.bu = or <2 x i64> %wide.load43.12, %wide.load41.12
  %i.bv = or <2 x i64> %wide.load44.12, %wide.load42.12
  store <2 x i64> %i.bu, ptr %next.gep40.12, align 8, !tbaa !402
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !402
  %next.gep39.13 = getelementptr i8, ptr %i.t, i64 33696
  %next.gep40.13 = getelementptr i8, ptr %i.t, i64 33184 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.t, i64 33712
  %wide.load41.13 = load <2 x i64>, ptr %next.gep39.13, align 8, !tbaa !402
  %wide.load42.13 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !402
  %i.bx = getelementptr i8, ptr %i.t, i64 33200   ; 2 uses
  %wide.load43.13 = load <2 x i64>, ptr %next.gep40.13, align 8, !tbaa !402
  %wide.load44.13 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !402
  %i.by = or <2 x i64> %wide.load43.13, %wide.load41.13
  %i.bz = or <2 x i64> %wide.load44.13, %wide.load42.13
  store <2 x i64> %i.by, ptr %next.gep40.13, align 8, !tbaa !402
  store <2 x i64> %i.bz, ptr %i.bx, align 8, !tbaa !402
  %next.gep39.14 = getelementptr i8, ptr %i.t, i64 33728
  %next.gep40.14 = getelementptr i8, ptr %i.t, i64 33216 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.t, i64 33744
  %wide.load41.14 = load <2 x i64>, ptr %next.gep39.14, align 8, !tbaa !402
  %wide.load42.14 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !402
  %i.cb = getelementptr i8, ptr %i.t, i64 33232   ; 2 uses
  %wide.load43.14 = load <2 x i64>, ptr %next.gep40.14, align 8, !tbaa !402
  %wide.load44.14 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !402
  %i.cc = or <2 x i64> %wide.load43.14, %wide.load41.14
  %i.cd = or <2 x i64> %wide.load44.14, %wide.load42.14
  store <2 x i64> %i.cc, ptr %next.gep40.14, align 8, !tbaa !402
  store <2 x i64> %i.cd, ptr %i.cb, align 8, !tbaa !402
  %next.gep39.15 = getelementptr i8, ptr %i.t, i64 33760
  %next.gep40.15 = getelementptr i8, ptr %i.t, i64 33248 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.t, i64 33776
  %wide.load41.15 = load <2 x i64>, ptr %next.gep39.15, align 8, !tbaa !402
  %wide.load42.15 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !402
  %i.cf = getelementptr i8, ptr %i.t, i64 33264   ; 2 uses
  %wide.load43.15 = load <2 x i64>, ptr %next.gep40.15, align 8, !tbaa !402
  %wide.load44.15 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !402
  %i.cg = or <2 x i64> %wide.load43.15, %wide.load41.15
  %i.ch = or <2 x i64> %wide.load44.15, %wide.load42.15
  store <2 x i64> %i.cg, ptr %next.gep40.15, align 8, !tbaa !402
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.v, i8 0, i64 512, i1 false), !tbaa !402
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 266240
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.k
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !402
  %i.cl = and i64 %i.ck, %i.p
  %.not22 = icmp eq i64 %i.cl, 0
  br i1 %.not22, label %bb.d, label %vector.ph31

vector.ph31:                                      ; preds = %bb.c
  %i.cm = lshr i32 %.024, 3
  %i.cn = shl i32 %.024, 2
  %i.co = shl i32 %.024, 7
  %i.cp = and i32 %i.co, 3968
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 270336
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 270344
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !340
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = zext i32 %.024 to i64                   ; 2 uses
  %i.cv = and i32 %i.ct, -128
  %i.cw = insertelement <2 x i32> poison, i32 %i.cm, i64 0
  %i.cx = insertelement <2 x i32> %i.cw, i32 %i.cn, i64 1
  %i.cy = and <2 x i32> %i.cx, <i32 536870784, i32 3968>
  %i.cz = load <2 x i32>, ptr %i.cq, align 4, !tbaa !340
  %i.da = add nsw <2 x i32> %i.cz, %i.cy
  %i.db = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 74 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !700
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 33792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.db, i8 0, i64 33280, i1 false)
  %i.de = and <2 x i32> %i.da, splat (i32 -128)
  store <2 x i32> %i.de, ptr %i.dd, align 8, !tbaa !340
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 33800
  store i32 %i.cv, ptr %i.df, align 8, !tbaa !340
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 33804
  store i32 0, ptr %i.dg, align 4, !tbaa !2671
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 33280 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.dh, i8 -1, i64 512, i1 false), !tbaa !402
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cu
  %.pre.i = load double, ptr %i.di, align 8, !tbaa !535
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph31
  %index33 = phi i64 [ 0, %vector.ph31 ], [ %index.next34.3, %vector.body32 ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index33 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dj, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.dk, align 8, !tbaa !367
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index33 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.dn, align 8, !tbaa !367
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index33 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.dq, align 8, !tbaa !367
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index33 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !367
  store <2 x double> %broadcast.splat, ptr %i.dt, align 8, !tbaa !367
  %index.next34.3 = add nuw nsw i64 %index33, 16  ; 2 uses
  %i.du = icmp eq i64 %index.next34.3, 4096
  br i1 %i.du, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body32, !llvm.loop !6868

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.db, ptr %4, align 8, !tbaa !2768
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.f, align 4, !tbaa !433
  store i64 1, ptr %i.g, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEE3runERKS4_RKSC_RSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 32768 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 33296
  %wide.load = load <2 x i64>, ptr %i.dh, align 8, !tbaa !402
  %wide.load28 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !402
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 32784 ; 2 uses
  %wide.load29 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !402
  %wide.load30 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !402
  %i.dy = or <2 x i64> %wide.load29, %wide.load
  %i.dz = or <2 x i64> %wide.load30, %wide.load28
  store <2 x i64> %i.dy, ptr %i.dv, align 8, !tbaa !402
  store <2 x i64> %i.dz, ptr %i.dx, align 8, !tbaa !402
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 33312
  %next.gep27.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 32800 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 33328
  %wide.load.1 = load <2 x i64>, ptr %next.gep.1, align 8, !tbaa !402
  %wide.load28.1 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !402
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 32816 ; 2 uses
  %wide.load29.1 = load <2 x i64>, ptr %next.gep27.1, align 8, !tbaa !402
  %wide.load30.1 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !402
  %i.ec = or <2 x i64> %wide.load29.1, %wide.load.1
  %i.ed = or <2 x i64> %wide.load30.1, %wide.load28.1
  store <2 x i64> %i.ec, ptr %next.gep27.1, align 8, !tbaa !402
  store <2 x i64> %i.ed, ptr %i.eb, align 8, !tbaa !402
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.db, i64 33344
  %next.gep27.2 = getelementptr inbounds nuw i8, ptr %i.db, i64 32832 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.db, i64 33360
  %wide.load.2 = load <2 x i64>, ptr %next.gep.2, align 8, !tbaa !402
  %wide.load28.2 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !402
  %i.ef = getelementptr inbounds nuw i8, ptr %i.db, i64 32848 ; 2 uses
  %wide.load29.2 = load <2 x i64>, ptr %next.gep27.2, align 8, !tbaa !402
  %wide.load30.2 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !402
  %i.eg = or <2 x i64> %wide.load29.2, %wide.load.2
  %i.eh = or <2 x i64> %wide.load30.2, %wide.load28.2
  store <2 x i64> %i.eg, ptr %next.gep27.2, align 8, !tbaa !402
  store <2 x i64> %i.eh, ptr %i.ef, align 8, !tbaa !402
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.db, i64 33376
  %next.gep27.3 = getelementptr inbounds nuw i8, ptr %i.db, i64 32864 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.db, i64 33392
  %wide.load.3 = load <2 x i64>, ptr %next.gep.3, align 8, !tbaa !402
  %wide.load28.3 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !402
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 32880 ; 2 uses
  %wide.load29.3 = load <2 x i64>, ptr %next.gep27.3, align 8, !tbaa !402
  %wide.load30.3 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !402
  %i.ek = or <2 x i64> %wide.load29.3, %wide.load.3
  %i.el = or <2 x i64> %wide.load30.3, %wide.load28.3
  store <2 x i64> %i.ek, ptr %next.gep27.3, align 8, !tbaa !402
  store <2 x i64> %i.el, ptr %i.ej, align 8, !tbaa !402
  %next.gep.4 = getelementptr inbounds nuw i8, ptr %i.db, i64 33408
  %next.gep27.4 = getelementptr inbounds nuw i8, ptr %i.db, i64 32896 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.db, i64 33424
  %wide.load.4 = load <2 x i64>, ptr %next.gep.4, align 8, !tbaa !402
  %wide.load28.4 = load <2 x i64>, ptr %i.em, align 8, !tbaa !402
  %i.en = getelementptr inbounds nuw i8, ptr %i.db, i64 32912 ; 2 uses
  %wide.load29.4 = load <2 x i64>, ptr %next.gep27.4, align 8, !tbaa !402
  %wide.load30.4 = load <2 x i64>, ptr %i.en, align 8, !tbaa !402
  %i.eo = or <2 x i64> %wide.load29.4, %wide.load.4
  %i.ep = or <2 x i64> %wide.load30.4, %wide.load28.4
  store <2 x i64> %i.eo, ptr %next.gep27.4, align 8, !tbaa !402
  store <2 x i64> %i.ep, ptr %i.en, align 8, !tbaa !402
  %next.gep.5 = getelementptr inbounds nuw i8, ptr %i.db, i64 33440
  %next.gep27.5 = getelementptr inbounds nuw i8, ptr %i.db, i64 32928 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 33456
  %wide.load.5 = load <2 x i64>, ptr %next.gep.5, align 8, !tbaa !402
  %wide.load28.5 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !402
  %i.er = getelementptr inbounds nuw i8, ptr %i.db, i64 32944 ; 2 uses
  %wide.load29.5 = load <2 x i64>, ptr %next.gep27.5, align 8, !tbaa !402
  %wide.load30.5 = load <2 x i64>, ptr %i.er, align 8, !tbaa !402
  %i.es = or <2 x i64> %wide.load29.5, %wide.load.5
  %i.et = or <2 x i64> %wide.load30.5, %wide.load28.5
  store <2 x i64> %i.es, ptr %next.gep27.5, align 8, !tbaa !402
  store <2 x i64> %i.et, ptr %i.er, align 8, !tbaa !402
  %next.gep.6 = getelementptr inbounds nuw i8, ptr %i.db, i64 33472
  %next.gep27.6 = getelementptr inbounds nuw i8, ptr %i.db, i64 32960 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.db, i64 33488
  %wide.load.6 = load <2 x i64>, ptr %next.gep.6, align 8, !tbaa !402
  %wide.load28.6 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !402
  %i.ev = getelementptr inbounds nuw i8, ptr %i.db, i64 32976 ; 2 uses
  %wide.load29.6 = load <2 x i64>, ptr %next.gep27.6, align 8, !tbaa !402
  %wide.load30.6 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !402
  %i.ew = or <2 x i64> %wide.load29.6, %wide.load.6
  %i.ex = or <2 x i64> %wide.load30.6, %wide.load28.6
  store <2 x i64> %i.ew, ptr %next.gep27.6, align 8, !tbaa !402
  store <2 x i64> %i.ex, ptr %i.ev, align 8, !tbaa !402
  %next.gep.7 = getelementptr inbounds nuw i8, ptr %i.db, i64 33504
  %next.gep27.7 = getelementptr inbounds nuw i8, ptr %i.db, i64 32992 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 33520
  %wide.load.7 = load <2 x i64>, ptr %next.gep.7, align 8, !tbaa !402
  %wide.load28.7 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !402
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 33008 ; 2 uses
  %wide.load29.7 = load <2 x i64>, ptr %next.gep27.7, align 8, !tbaa !402
  %wide.load30.7 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !402
  %i.fa = or <2 x i64> %wide.load29.7, %wide.load.7
  %i.fb = or <2 x i64> %wide.load30.7, %wide.load28.7
  store <2 x i64> %i.fa, ptr %next.gep27.7, align 8, !tbaa !402
  store <2 x i64> %i.fb, ptr %i.ez, align 8, !tbaa !402
  %next.gep.8 = getelementptr inbounds nuw i8, ptr %i.db, i64 33536
  %next.gep27.8 = getelementptr inbounds nuw i8, ptr %i.db, i64 33024 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.db, i64 33552
  %wide.load.8 = load <2 x i64>, ptr %next.gep.8, align 8, !tbaa !402
  %wide.load28.8 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !402
  %i.fd = getelementptr inbounds nuw i8, ptr %i.db, i64 33040 ; 2 uses
  %wide.load29.8 = load <2 x i64>, ptr %next.gep27.8, align 8, !tbaa !402
  %wide.load30.8 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !402
  %i.fe = or <2 x i64> %wide.load29.8, %wide.load.8
  %i.ff = or <2 x i64> %wide.load30.8, %wide.load28.8
  store <2 x i64> %i.fe, ptr %next.gep27.8, align 8, !tbaa !402
  store <2 x i64> %i.ff, ptr %i.fd, align 8, !tbaa !402
  %next.gep.9 = getelementptr inbounds nuw i8, ptr %i.db, i64 33568
  %next.gep27.9 = getelementptr inbounds nuw i8, ptr %i.db, i64 33056 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.db, i64 33584
  %wide.load.9 = load <2 x i64>, ptr %next.gep.9, align 8, !tbaa !402
  %wide.load28.9 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !402
  %i.fh = getelementptr inbounds nuw i8, ptr %i.db, i64 33072 ; 2 uses
  %wide.load29.9 = load <2 x i64>, ptr %next.gep27.9, align 8, !tbaa !402
  %wide.load30.9 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !402
  %i.fi = or <2 x i64> %wide.load29.9, %wide.load.9
  %i.fj = or <2 x i64> %wide.load30.9, %wide.load28.9
  store <2 x i64> %i.fi, ptr %next.gep27.9, align 8, !tbaa !402
  store <2 x i64> %i.fj, ptr %i.fh, align 8, !tbaa !402
  %next.gep.10 = getelementptr inbounds nuw i8, ptr %i.db, i64 33600
  %next.gep27.10 = getelementptr inbounds nuw i8, ptr %i.db, i64 33088 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.db, i64 33616
  %wide.load.10 = load <2 x i64>, ptr %next.gep.10, align 8, !tbaa !402
  %wide.load28.10 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !402
  %i.fl = getelementptr inbounds nuw i8, ptr %i.db, i64 33104 ; 2 uses
  %wide.load29.10 = load <2 x i64>, ptr %next.gep27.10, align 8, !tbaa !402
  %wide.load30.10 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !402
  %i.fm = or <2 x i64> %wide.load29.10, %wide.load.10
  %i.fn = or <2 x i64> %wide.load30.10, %wide.load28.10
  store <2 x i64> %i.fm, ptr %next.gep27.10, align 8, !tbaa !402
  store <2 x i64> %i.fn, ptr %i.fl, align 8, !tbaa !402
  %next.gep.11 = getelementptr inbounds nuw i8, ptr %i.db, i64 33632
  %next.gep27.11 = getelementptr inbounds nuw i8, ptr %i.db, i64 33120 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.db, i64 33648
  %wide.load.11 = load <2 x i64>, ptr %next.gep.11, align 8, !tbaa !402
  %wide.load28.11 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !402
  %i.fp = getelementptr inbounds nuw i8, ptr %i.db, i64 33136 ; 2 uses
  %wide.load29.11 = load <2 x i64>, ptr %next.gep27.11, align 8, !tbaa !402
  %wide.load30.11 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !402
  %i.fq = or <2 x i64> %wide.load29.11, %wide.load.11
  %i.fr = or <2 x i64> %wide.load30.11, %wide.load28.11
  store <2 x i64> %i.fq, ptr %next.gep27.11, align 8, !tbaa !402
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !402
  %next.gep.12 = getelementptr inbounds nuw i8, ptr %i.db, i64 33664
  %next.gep27.12 = getelementptr inbounds nuw i8, ptr %i.db, i64 33152 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.db, i64 33680
  %wide.load.12 = load <2 x i64>, ptr %next.gep.12, align 8, !tbaa !402
  %wide.load28.12 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !402
  %i.ft = getelementptr inbounds nuw i8, ptr %i.db, i64 33168 ; 2 uses
  %wide.load29.12 = load <2 x i64>, ptr %next.gep27.12, align 8, !tbaa !402
  %wide.load30.12 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !402
  %i.fu = or <2 x i64> %wide.load29.12, %wide.load.12
  %i.fv = or <2 x i64> %wide.load30.12, %wide.load28.12
  store <2 x i64> %i.fu, ptr %next.gep27.12, align 8, !tbaa !402
  store <2 x i64> %i.fv, ptr %i.ft, align 8, !tbaa !402
  %next.gep.13 = getelementptr inbounds nuw i8, ptr %i.db, i64 33696
end_hunk_17
begin_hunk_18_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INSE_INSE_INSF_IdLj3EEELj4EEELj5EEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !426, !noundef !670
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.be = load ptr, ptr %i.p, align 16, !tbaa !2845
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !426, !noundef !670
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.bi = add i8 %i.t, 1
  store i8 %i.bi, ptr %i.i, align 4, !tbaa !882
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1486
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.bj = add i8 %i.t, 1                          ; 2 uses
  store i8 %i.bj, ptr %i.i, align 4, !tbaa !882
  %i.bk = icmp ugt i8 %.pr, 1
  br i1 %i.bk, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7103 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS8_INS8_INS9_IdLj3EEELj4EEELj5EEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bt, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false), !tbaa.struct !2843
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  store ptr null, ptr %i.bu, align 16, !tbaa !2845
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  store i32 2, ptr %i.by, align 64, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 132
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7103 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 16, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 16, !tbaa !2845
  store ptr %i.ce, ptr %i.bu, align 16, !tbaa !2845
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !7103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS2_INS2_INS3_IdLj3EEELj4EEELj5EEEEclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !7104

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS2_INS2_INS3_IdLj3EEELj4EEELj5EEEEclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<openvdb::v13_0::ValueMask, 3>, 4>::TopologyCopy2.1975", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not14 = icmp eq i32 %i.b, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.015 = phi i32 [ %i.b, %.lr.ph ], [ %i.au, %bb.g ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2841   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144
  %i.l = lshr i32 %.015, 6
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !402
  %i.p = and i32 %.015, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = and i64 %i.o, %i.r
  %.not12 = icmp eq i64 %i.s, 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !2842 ; 2 uses
  %i.u = zext i32 %.015 to i64                    ; 3 uses
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !2841
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.v, i8 0, i64 32768, i1 false), !tbaa !367
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32768
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 33280
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 33280
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 33792
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 33792
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 33804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 33804
  %i.ah = load <2 x ptr>, ptr %i.e, align 8, !tbaa !1104
  %i.ai = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.z, ptr noundef nonnull align 8 dereferenceable(512) %i.aa) ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ab, ptr noundef nonnull align 8 dereferenceable(512) %i.ac) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !963
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !2671
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !1622
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.y, ptr %4, align 8, !tbaa !2847
  store ptr %i.v, ptr %i.f, align 8, !tbaa !2848
  store <2 x ptr> %i.ah, ptr %i.g, align 8, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.h, align 4, !tbaa !433
  store i64 1, ptr %i.i, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %i.al, align 8, !tbaa !367
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 33808) #32
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 266240
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.m
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !402
  %i.ar = and i64 %i.aq, %i.r
  %.not13 = icmp eq i64 %i.ar, 0
  %.in.v = select i1 %.not13, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.as = load ptr, ptr %.in, align 8, !tbaa !1104, !nonnull !670
  %i.at = load i8, ptr %i.as, align 1, !tbaa !625, !range !426, !noundef !670
  store i8 %i.at, ptr %i.an, align 8, !tbaa !367
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.au = add i32 %.015, 1                        ; 2 uses
  %.not = icmp eq i32 %i.au, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7105
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !590
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !591
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !367
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !433
  %i.g = load i32, ptr %0, align 8, !tbaa !432
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !870
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !342
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1479
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !2849
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !2851
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !881
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !882
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !883
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !884
  store i64 %i.u, ptr %i.t, align 8, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !888
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !889
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !416
  store ptr %4, ptr %i.l, align 16, !tbaa !2851
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSG_RSI_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !895  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !883
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EE13TopologyCopy2INSE_INSF_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !883
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !896
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EE13TopologyCopy2INSE_INSF_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !2851
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeINSC_9ValueMaskELj3EEELj4EE13TopologyCopy2INSE_INSF_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !2851
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !882
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
end_hunk_18
begin_hunk_19_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyCopy1ISI_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !426, !noundef !670
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !2861
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load atomic i8, ptr %i.bf monotonic, align 1, !range !426, !noundef !670
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread
  %i.bi = add i8 %i.t, 1
  store i8 %i.bi, ptr %i.i, align 4, !tbaa !882
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1486
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit
  %i.bj = add i8 %i.t, 1                          ; 2 uses
  store i8 %i.bj, ptr %i.i, align 4, !tbaa !882
  %i.bk = icmp ugt i8 %.pr, 1
  br i1 %i.bk, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bl = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7148 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyCopy1ISC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !2859
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !2861
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bw = load i64, ptr %i.r, align 16, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 16, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 16, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  store i32 2, ptr %i.by, align 8, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 64, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7148 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 8, !tbaa !2861
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !2861
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !7148
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyCopy1IS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !7149

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyCopy1IS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>::TopologyCopy1", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not12 = icmp eq i32 %i.b, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.013 = phi i32 [ %i.b, %.lr.ph ], [ %i.aq, %bb.g ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2856
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144
  %i.l = lshr i32 %.013, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !402
  %i.p = and i32 %.013, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.o, %i.r
  %.not11 = icmp eq i64 %i.s, 0
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !2857 ; 2 uses
  %i.u = zext i32 %.013 to i64                    ; 3 uses
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !2856
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367  ; 5 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !7151, !nonnull !670, !align !671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.v, i8 0, i64 32768, i1 false), !tbaa !367
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32768
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32768
  %i.ac = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, ptr noundef nonnull align 8 dereferenceable(512) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 33280
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 33280
  %i.af = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ad, ptr noundef nonnull align 8 dereferenceable(512) %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 33792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 33792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !963
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 33804
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 33804
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !2671
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.y, ptr %4, align 8, !tbaa !2863
  store ptr %i.v, ptr %i.f, align 8, !tbaa !2864
  store ptr %i.z, ptr %i.g, align 8, !tbaa !2858
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.h, align 4, !tbaa !433
  store i64 1, ptr %i.i, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %i.al, align 8, !tbaa !367
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 33808) #32
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !7151, !nonnull !670, !align !671
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !535
  store double %i.ap, ptr %i.an, align 8, !tbaa !367
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.aq = add i32 %.013, 1                        ; 2 uses
  %.not = icmp eq i32 %i.aq, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !590
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !591
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !367
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !433
  %i.g = load i32, ptr %0, align 8, !tbaa !432
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !870
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !342
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1479
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !2865
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !2867
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !881
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.q, align 4, !tbaa !882
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !883
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.u = load i64, ptr %3, align 8, !tbaa !884
  store i64 %i.u, ptr %i.t, align 64, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !888
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !889
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !416
  store ptr %4, ptr %i.l, align 8, !tbaa !2867
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !895  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !883
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !883
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !896
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2867
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !2867
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !882
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !882
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSD_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSB_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_19
begin_hunk_20_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINSE_INSD_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyUnionISI_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !870
  %i.bp = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7186 ; 10 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyUnionISC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bp, align 64, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !1479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !2872
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !2874
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bw = load i64, ptr %i.r, align 16, !tbaa !883
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  store i64 %i.bx, ptr %i.r, align 16, !tbaa !883
  store i64 %i.bx, ptr %i.bv, align 16, !tbaa !883
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  store i32 2, ptr %i.by, align 8, !tbaa !881
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  %i.ca = load i8, ptr %i.s, align 4, !tbaa !882
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.cc = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.cc, ptr %i.cb, align 64, !tbaa !884
  %i.cd = sub i8 %i.ca, %i.bo
  store i8 %i.cd, ptr %i.bz, align 4, !tbaa !882
  %i.ce = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7186 ; 6 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !897
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !888
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %4, align 8, !tbaa !884
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !898
  store ptr %i.ce, ptr %i.p, align 8, !tbaa !2874
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !2874
  %i.ck = load ptr, ptr %3, align 8, !tbaa !899
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bp, ptr noundef nonnull align 8 dereferenceable(128) %i.ck), !inline_history !7186
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cl = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.cm = add i8 %i.cl, -1                        ; 2 uses
  store i8 %i.cm, ptr %i.m, align 2, !tbaa !1485
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !1487
  %i.co = add i8 %i.cn, 1
  %i.cp = and i8 %i.co, 7
  store i8 %i.cp, ptr %i.l, align 1, !tbaa !1487
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.cq = load i8, ptr %5, align 8, !tbaa !1486
  %i.cr = zext i8 %i.cq to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !367
  %i.cu = icmp ult i8 %i.ct, %i.bj
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !434
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !433
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp ult i64 %i.cx, %i.dc
  br i1 %i.dd, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cr, %bb.i ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyUnionIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(17) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
  %i.df = load i8, ptr %i.m, align 2, !tbaa !1485
  %i.dg = add i8 %i.df, -1                        ; 2 uses
  store i8 %i.dg, ptr %i.m, align 2, !tbaa !1485
  %i.dh = load i8, ptr %5, align 8, !tbaa !1486
  %i.di = add i8 %i.dh, 7
  %i.dj = and i8 %i.di, 7
  store i8 %i.dj, ptr %5, align 8, !tbaa !1486
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dk = phi i8 [ %i.cm, %.noexc ], [ %i.dg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EE12is_divisibleEh.exit ]
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dm = load ptr, ptr %3, align 8, !tbaa !899   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  %i.do = load atomic i8, ptr %i.dn monotonic, align 1
  %i.dp = icmp eq i8 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %.0.i.i = select i1 %i.dp, ptr %i.dr, ptr %i.dm
  %i.ds = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.ds, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !7187

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyUnionIS6_EclERKN3tbb6detail2d113blocked_rangeIjEE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::blocked_range.811", align 8 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>::TopologyCopy1", align 8 ; 6 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>::TopologyUnion", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !433  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !432    ; 2 uses
  %.not27 = icmp eq i32 %i.b, %i.c
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.028 = phi i32 [ %i.b, %.lr.ph ], [ %i.bt, %bb.o ] ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2869   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144
  %i.l = lshr i32 %.028, 6
  %i.m = zext nneg i32 %i.l to i64                ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !402
  %i.p = and i32 %.028, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 1, %i.q                      ; 6 uses
  %i.s = and i64 %i.o, %i.r
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = zext i32 %.028 to i64                    ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !367  ; 6 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !2870 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 262144
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.m
  %i.z = load i64, ptr %i.y, align 8, !tbaa !402
  %i.aa = and i64 %i.z, %i.r
  %.not25 = icmp eq i64 %i.aa, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !367
  %i.ad = load i8, ptr %i.e, align 8, !tbaa !2871, !range !426, !noundef !670
  %i.ae = trunc nuw i8 %i.ad to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13TopologyUnionIS5_EC2EPKS5_PS5_b(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(33808) %i.v, ptr noundef nonnull align 8 dereferenceable(33808) %i.ac, i1 noundef zeroext %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.e, align 8, !tbaa !2871, !range !426, !noundef !670
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 266240
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.m
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !402
  %i.ak = and i64 %i.aj, %i.r
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = call noalias noundef nonnull dereferenceable(33808) ptr @_Znwm(i64 noundef 33808) #30 ; 9 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !2870
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33808) %i.al, i8 0, i64 32768, i1 false), !tbaa !367
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32768
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 32768
  %i.aq = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ao, ptr noundef nonnull align 8 dereferenceable(512) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 33280
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 33280
  %i.at = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN7openvdb5v13_04util8NodeMaskILj4EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(512) %i.ar, ptr noundef nonnull align 8 dereferenceable(512) %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 33792
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 33792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !963
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 33804
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 33804
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !2671
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.v, ptr %4, align 8, !tbaa !2863
  store ptr %i.al, ptr %i.f, align 8, !tbaa !2864
  store ptr %i.an, ptr %i.g, align 8, !tbaa !2858
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 4096, ptr %3, align 8, !tbaa !432
  store i32 0, ptr %i.h, align 4, !tbaa !433
  store i64 1, ptr %i.i, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !2870 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 266240
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.m
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !402
  %i.bd = and i64 %i.bc, %i.r
  %.not26 = icmp eq i64 %i.bd, 0
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11setValuesOnEv(ptr noundef nonnull align 8 dereferenceable(33808) %i.al)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !2870
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 33808) #32
  resume { ptr, i32 } %i.be

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bf = phi ptr [ %.pre, %bb.i ], [ %i.az, %bb.h ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.t
  store ptr %i.al, ptr %i.bg, align 8, !tbaa !367
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 266240
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.m
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !402
  %i.bk = and i64 %i.bj, %i.r
  %.not23 = icmp eq i64 %i.bk, 0
  br i1 %.not23, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !2870 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 262144
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.m
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !402
  %i.bp = and i64 %i.bo, %i.r
  %.not24 = icmp eq i64 %i.bp, 0
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = zext i32 %.028 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !367
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11setValuesOnEv(ptr noundef nonnull align 8 dereferenceable(33808) %i.bs)
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.k, %bb.f, %bb.n, %bb.m, %bb.l
  %i.bt = add i32 %.028, 1                        ; 2 uses
  %.not = icmp eq i32 %i.bt, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7188
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE11setValuesOnEv(ptr noundef nonnull align 8 dereferenceable(33808) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32768 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32784
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32800
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32816
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32848
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32864
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32896
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32912
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32944
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32960
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32976
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 33008
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 33024
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 33040
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33056
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 33072
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 33088
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 33136
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 33152
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 33168
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 33184
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33200
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 33216
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33232
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 33248
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33264
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.ah = load <2 x i64>, ptr %i.a, align 8, !tbaa !402
  %i.ai = xor <2 x i64> %i.ah, splat (i64 -1)
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !402
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 33296
  %i.ak = load <2 x i64>, ptr %i.b, align 8, !tbaa !402
  %i.al = xor <2 x i64> %i.ak, splat (i64 -1)
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !402
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 33312
  %i.an = load <2 x i64>, ptr %i.c, align 8, !tbaa !402
  %i.ao = xor <2 x i64> %i.an, splat (i64 -1)
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !402
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 33328
  %i.aq = load <2 x i64>, ptr %i.d, align 8, !tbaa !402
  %i.ar = xor <2 x i64> %i.aq, splat (i64 -1)
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !402
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 33344
  %i.at = load <2 x i64>, ptr %i.e, align 8, !tbaa !402
  %i.au = xor <2 x i64> %i.at, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !402
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 33360
  %i.aw = load <2 x i64>, ptr %i.f, align 8, !tbaa !402
  %i.ax = xor <2 x i64> %i.aw, splat (i64 -1)
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !402
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 33376
  %i.az = load <2 x i64>, ptr %i.g, align 8, !tbaa !402
  %i.ba = xor <2 x i64> %i.az, splat (i64 -1)
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !402
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 33392
  %i.bc = load <2 x i64>, ptr %i.h, align 8, !tbaa !402
  %i.bd = xor <2 x i64> %i.bc, splat (i64 -1)
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !402
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 33408
  %i.bf = load <2 x i64>, ptr %i.i, align 8, !tbaa !402
  %i.bg = xor <2 x i64> %i.bf, splat (i64 -1)
  store <2 x i64> %i.bg, ptr %i.be, align 8, !tbaa !402
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 33424
  %i.bi = load <2 x i64>, ptr %i.j, align 8, !tbaa !402
  %i.bj = xor <2 x i64> %i.bi, splat (i64 -1)
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !402
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 33440
  %i.bl = load <2 x i64>, ptr %i.k, align 8, !tbaa !402
  %i.bm = xor <2 x i64> %i.bl, splat (i64 -1)
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !402
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 33456
  %i.bo = load <2 x i64>, ptr %i.l, align 8, !tbaa !402
  %i.bp = xor <2 x i64> %i.bo, splat (i64 -1)
  store <2 x i64> %i.bp, ptr %i.bn, align 8, !tbaa !402
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 33472
  %i.br = load <2 x i64>, ptr %i.m, align 8, !tbaa !402
  %i.bs = xor <2 x i64> %i.br, splat (i64 -1)
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !tbaa !402
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 33488
  %i.bu = load <2 x i64>, ptr %i.n, align 8, !tbaa !402
  %i.bv = xor <2 x i64> %i.bu, splat (i64 -1)
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !402
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 33504
  %i.bx = load <2 x i64>, ptr %i.o, align 8, !tbaa !402
  %i.by = xor <2 x i64> %i.bx, splat (i64 -1)
  store <2 x i64> %i.by, ptr %i.bw, align 8, !tbaa !402
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 33520
  %i.ca = load <2 x i64>, ptr %i.p, align 8, !tbaa !402
  %i.cb = xor <2 x i64> %i.ca, splat (i64 -1)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !402
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 33536
  %i.cd = load <2 x i64>, ptr %i.q, align 8, !tbaa !402
  %i.ce = xor <2 x i64> %i.cd, splat (i64 -1)
  store <2 x i64> %i.ce, ptr %i.cc, align 8, !tbaa !402
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 33552
  %i.cg = load <2 x i64>, ptr %i.r, align 8, !tbaa !402
  %i.ch = xor <2 x i64> %i.cg, splat (i64 -1)
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !402
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 33568
  %i.cj = load <2 x i64>, ptr %i.s, align 8, !tbaa !402
  %i.ck = xor <2 x i64> %i.cj, splat (i64 -1)
  store <2 x i64> %i.ck, ptr %i.ci, align 8, !tbaa !402
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 33584
  %i.cm = load <2 x i64>, ptr %i.t, align 8, !tbaa !402
  %i.cn = xor <2 x i64> %i.cm, splat (i64 -1)
  store <2 x i64> %i.cn, ptr %i.cl, align 8, !tbaa !402
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 33600
  %i.cp = load <2 x i64>, ptr %i.u, align 8, !tbaa !402
  %i.cq = xor <2 x i64> %i.cp, splat (i64 -1)
  store <2 x i64> %i.cq, ptr %i.co, align 8, !tbaa !402
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 33616
  %i.cs = load <2 x i64>, ptr %i.v, align 8, !tbaa !402
  %i.ct = xor <2 x i64> %i.cs, splat (i64 -1)
  store <2 x i64> %i.ct, ptr %i.cr, align 8, !tbaa !402
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 33632
  %i.cv = load <2 x i64>, ptr %i.w, align 8, !tbaa !402
  %i.cw = xor <2 x i64> %i.cv, splat (i64 -1)
  store <2 x i64> %i.cw, ptr %i.cu, align 8, !tbaa !402
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 33648
  %i.cy = load <2 x i64>, ptr %i.x, align 8, !tbaa !402
end_hunk_20
begin_hunk_21_@llvm.vector.reduce.and.v2i64
!1185 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!1186 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1142, i64 64, !1185, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1187 = !{!1186, !1185, i64 96}
!1188 = !{!1186, !874, i64 104}
!1189 = !{!1186, !354, i64 136}
!1190 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!1191 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !1190, i64 32, !1185, i64 48, !354, i64 56}
!1192 = !{!1191, !354, i64 56}
!1193 = !{!1185, !1185, i64 0}
!1194 = !{!1142, !1137, i64 24}
!1195 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !1064, i64 0, !1057, i64 8, !1101, i64 16, !1095, i64 24}
!1196 = !{!1195, !1057, i64 8}
!1197 = !{!1195, !1095, i64 24}
!1198 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!1199 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !1198, i64 0}
!1200 = !{!1199, !1198, i64 0}
!1201 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1199, i64 0}
!1202 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1201, i64 0}
!1203 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1202, i64 0}
!1204 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !1203, i64 0}
!1205 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1204, i64 0}
!1206 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !1205, i64 0, !1198, i64 8}
!1207 = !{!1206, !1198, i64 8}
!1208 = !{!1198, !1198, i64 0}
!1209 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1125, i64 0, !1017, i64 8, !1198, i64 16, !1115, i64 24}
!1210 = !{!1209, !1125, i64 0}
!1211 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !1205, i64 0, !1198, i64 8}
!1212 = !{!1211, !1198, i64 8}
!1213 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1137, i64 0, !1017, i64 8, !1198, i64 16, !1125, i64 24}
!1214 = !{!1213, !1137, i64 0}
!1215 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !1064, i64 0, !1057, i64 8}
!1216 = !{!1215, !1057, i64 8}
!1217 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!1218 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1116, i64 64, !1217, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1219 = !{!1218, !1217, i64 96}
!1220 = !{!1218, !874, i64 104}
!1221 = !{!1218, !354, i64 136}
!1222 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!1223 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !1222, i64 32, !1217, i64 48, !354, i64 56}
!1224 = !{!1223, !354, i64 56}
!1225 = !{!1217, !1217, i64 0}
!1226 = !{i64 0, i64 8, !1208, i64 8, i64 8, !1018, i64 16, i64 8, !1120}
!1227 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1198, i64 0, !1017, i64 8, !1115, i64 16}
!1228 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1227, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1229 = !{!1228, !874, i64 112}
!1230 = !{i64 0, i64 8, !1130, i64 8, i64 8, !1018, i64 16, i64 8, !1208, i64 24, i64 8, !1120}
!1231 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1209, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1232 = !{!1231, !874, i64 120}
!1233 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!1234 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1126, i64 64, !1233, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1235 = !{!1234, !1233, i64 96}
!1236 = !{!1234, !874, i64 104}
!1237 = !{!1234, !354, i64 136}
!1238 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!1239 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !1238, i64 32, !1233, i64 48, !354, i64 56}
!1240 = !{!1239, !354, i64 56}
!1241 = !{!1233, !1233, i64 0}
!1242 = !{i64 0, i64 8, !1208, i64 8, i64 8, !1018, i64 16, i64 8, !1130}
!1243 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1198, i64 0, !1017, i64 8, !1125, i64 16}
!1244 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIfLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1243, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1245 = !{!1244, !874, i64 112}
!1246 = !{i64 0, i64 8, !1146, i64 8, i64 8, !1018, i64 16, i64 8, !1208, i64 24, i64 8, !1130}
!1247 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIfLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1213, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1248 = !{!1247, !874, i64 120}
!1249 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!1250 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1142, i64 64, !1249, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1251 = !{!1250, !1249, i64 96}
!1252 = !{!1250, !874, i64 104}
!1253 = !{!1250, !354, i64 136}
!1254 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!1255 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !1254, i64 32, !1249, i64 48, !354, i64 56}
!1256 = !{!1255, !354, i64 56}
!1257 = !{!1249, !1249, i64 0}
!1258 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!1259 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE", !1258, i64 0}
!1260 = !{!1259, !1258, i64 0}
!1261 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !1259, i64 0}
!1262 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !1261, i64 0}
!1263 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !1262, i64 0}
!1264 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_ELb1ELb1EE", !1263, i64 0}
!1265 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !1264, i64 0}
!1266 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !1265, i64 0, !1258, i64 8, !1101, i64 16, !1095, i64 24}
!1267 = !{!1266, !1258, i64 8}
!1268 = !{!1266, !1095, i64 24}
!1269 = !{!1258, !1258, i64 0}
!1270 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!1271 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !1270, i64 0}
!1272 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1271, i64 0}
!1273 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1272, i64 0}
!1274 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1273, i64 0}
!1275 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !1274, i64 0}
!1276 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1275, i64 0}
!1277 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !1276, i64 0, !1270, i64 8}
!1278 = !{!1277, !1270, i64 8}
!1279 = !{!1270, !1270, i64 0}
!1280 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1125, i64 0, !1017, i64 8, !1270, i64 16, !1115, i64 24}
!1281 = !{!1280, !1125, i64 0}
!1282 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEENS8_11OpWithIndexEEE", !1265, i64 0, !1258, i64 8}
!1283 = !{!1282, !1258, i64 8}
!1284 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!1285 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1116, i64 64, !1284, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1286 = !{!1285, !1284, i64 96}
!1287 = !{!1285, !874, i64 104}
!1288 = !{!1285, !354, i64 136}
!1289 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!1290 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !1289, i64 32, !1284, i64 48, !354, i64 56}
!1291 = !{!1290, !354, i64 56}
!1292 = !{!1284, !1284, i64 0}
!1293 = !{i64 0, i64 8, !1279, i64 8, i64 8, !1018, i64 16, i64 8, !1120}
!1294 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1270, i64 0, !1017, i64 8, !1115, i64 16}
!1295 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal17ActiveTileCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1294, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1296 = !{!1295, !874, i64 112}
!1297 = !{i64 0, i64 8, !1130, i64 8, i64 8, !1018, i64 16, i64 8, !1279, i64 24, i64 8, !1120}
!1298 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal17ActiveTileCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1280, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1299 = !{!1298, !874, i64 120}
!1300 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!1301 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1126, i64 64, !1300, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1302 = !{!1301, !1300, i64 96}
!1303 = !{!1301, !874, i64 104}
!1304 = !{!1301, !354, i64 136}
!1305 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!1306 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !1305, i64 32, !1300, i64 48, !354, i64 56}
!1307 = !{!1306, !354, i64 56}
!1308 = !{!1300, !1300, i64 0}
!1309 = !{!"_ZTSN7openvdb5v13_05tools14count_internal10MemUsageOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !343, i64 0, !354, i64 8}
!1310 = !{!1309, !343, i64 0}
!1311 = !{!1309, !354, i64 8}
!1312 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal10MemUsageOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!1313 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE", !1312, i64 0}
!1314 = !{!1313, !1312, i64 0}
!1315 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !1313, i64 0}
!1316 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !1315, i64 0}
!1317 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !1316, i64 0}
!1318 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_ELb1ELb1EE", !1317, i64 0}
!1319 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !1318, i64 0}
!1320 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !1319, i64 0, !1312, i64 8, !1101, i64 16, !1095, i64 24}
!1321 = !{!1320, !1312, i64 8}
!1322 = !{!1320, !1095, i64 24}
!1323 = !{!1312, !1312, i64 0}
!1324 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!1325 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !1324, i64 0}
!1326 = !{!1325, !1324, i64 0}
!1327 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1325, i64 0}
!1328 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1327, i64 0}
!1329 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1328, i64 0}
!1330 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !1329, i64 0}
!1331 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1330, i64 0}
!1332 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !1331, i64 0, !1324, i64 8}
!1333 = !{!1332, !1324, i64 8}
!1334 = !{!1324, !1324, i64 0}
!1335 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1125, i64 0, !1017, i64 8, !1324, i64 16, !1115, i64 24}
!1336 = !{!1335, !1125, i64 0}
!1337 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !1331, i64 0, !1324, i64 8}
!1338 = !{!1337, !1324, i64 8}
!1339 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1137, i64 0, !1017, i64 8, !1324, i64 16, !1125, i64 24}
!1340 = !{!1339, !1137, i64 0}
!1341 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !1319, i64 0, !1312, i64 8}
!1342 = !{!1341, !1312, i64 8}
!1343 = !{!"llvm.loop.unswitch.partial.disable"}
!1344 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!1345 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1116, i64 64, !1344, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1346 = !{!1345, !1344, i64 96}
!1347 = !{!1345, !874, i64 104}
!1348 = !{!1345, !354, i64 136}
!1349 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!1350 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !1349, i64 32, !1344, i64 48, !354, i64 56}
!1351 = !{!1350, !354, i64 56}
!1352 = !{!1344, !1344, i64 0}
!1353 = !{i64 0, i64 8, !1334, i64 8, i64 8, !1018, i64 16, i64 8, !1120}
!1354 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1324, i64 0, !1017, i64 8, !1115, i64 16}
!1355 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1354, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1356 = !{!1355, !874, i64 112}
!1357 = !{i64 0, i64 8, !1130, i64 8, i64 8, !1018, i64 16, i64 8, !1334, i64 24, i64 8, !1120}
!1358 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1335, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1359 = !{!1358, !874, i64 120}
!1360 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!1361 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1126, i64 64, !1360, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1362 = !{!1361, !1360, i64 96}
!1363 = !{!1361, !874, i64 104}
!1364 = !{!1361, !354, i64 136}
!1365 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!1366 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !1365, i64 32, !1360, i64 48, !354, i64 56}
!1367 = !{!1366, !354, i64 56}
!1368 = !{!1360, !1360, i64 0}
!1369 = !{i64 0, i64 8, !1334, i64 8, i64 8, !1018, i64 16, i64 8, !1130}
!1370 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1324, i64 0, !1017, i64 8, !1125, i64 16}
!1371 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIfLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1370, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1372 = !{!1371, !874, i64 112}
!1373 = !{i64 0, i64 8, !1146, i64 8, i64 8, !1018, i64 16, i64 8, !1334, i64 24, i64 8, !1130}
!1374 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIfLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1339, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1375 = !{!1374, !874, i64 120}
!1376 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!1377 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1142, i64 64, !1376, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1378 = !{!1377, !1376, i64 96}
!1379 = !{!1377, !874, i64 104}
!1380 = !{!1377, !354, i64 136}
!1381 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!1382 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !1381, i64 32, !1376, i64 48, !354, i64 56}
!1383 = !{!1382, !354, i64 56}
!1384 = !{!1376, !1376, i64 0}
!1385 = !{!"_ZTSN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj5EEEEE", !336, i64 0, !336, i64 4}
!1386 = !{!1385, !336, i64 0}
!1387 = !{!"_ZTSN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj4EEEEE", !336, i64 0, !336, i64 4}
!1388 = !{!1387, !336, i64 0}
!1389 = !{!"_ZTSN7openvdb5v13_04util8NodeMaskILj4EEE", !336, i64 0}
!1390 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEE", !336, i64 0, !1389, i64 32768, !1389, i64 33280, !412, i64 33792, !337, i64 33804}
!1391 = !{!1390, !337, i64 33804}
!1392 = !{!372, !370, i64 0}
!1393 = !{!372, !371, i64 8}
!1394 = !{!"_ZTSN7openvdb5v13_04util8NodeMaskILj5EEE", !336, i64 0}
!1395 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EEE", !336, i64 0, !1394, i64 262144, !1394, i64 266240, !412, i64 270336, !337, i64 270348}
!1396 = !{!1395, !337, i64 270348}
!1397 = !{!"_ZTSN7openvdb5v13_02io12MaskCompressIfNS0_4util8NodeMaskILj3EEEEE", !336, i64 0, !336, i64 4}
!1398 = !{!1397, !336, i64 0}
!1399 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!1400 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE", !1399, i64 0}
!1401 = !{!1400, !1399, i64 0}
!1402 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !1400, i64 0}
!1403 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !1402, i64 0}
!1404 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !1403, i64 0}
!1405 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_ELb1ELb1EE", !1404, i64 0}
!1406 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !1405, i64 0}
!1407 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !1406, i64 0, !1399, i64 8, !1101, i64 16, !1095, i64 24}
!1408 = !{!1407, !1399, i64 8}
!1409 = !{!1407, !1095, i64 24}
!1410 = !{!1399, !1399, i64 0}
!1411 = !{!"_ZTSN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !368, i64 0, !368, i64 4, !354, i64 8}
!1412 = !{!1411, !354, i64 8}
!1413 = !{!1411, !368, i64 4}
!1414 = !{!1411, !368, i64 0}
!1415 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!1416 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !1415, i64 0}
!1417 = !{!1416, !1415, i64 0}
!1418 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1416, i64 0}
!1419 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !1418, i64 0}
!1420 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1419, i64 0}
!1421 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !1420, i64 0}
!1422 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !1421, i64 0}
!1423 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !1422, i64 0, !1415, i64 8}
!1424 = !{!1423, !1415, i64 8}
!1425 = !{!1415, !1415, i64 0}
!1426 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1125, i64 0, !1017, i64 8, !1415, i64 16, !1115, i64 24}
!1427 = !{!1426, !1125, i64 0}
!1428 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !1422, i64 0, !1415, i64 8}
!1429 = !{!1428, !1415, i64 8}
!1430 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1137, i64 0, !1017, i64 8, !1415, i64 16, !1125, i64 24}
!1431 = !{!1430, !1137, i64 0}
!1432 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !1406, i64 0, !1399, i64 8}
!1433 = !{!1432, !1399, i64 8}
!1434 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!1435 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1116, i64 64, !1434, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1436 = !{!1435, !1434, i64 96}
!1437 = !{!1435, !874, i64 104}
!1438 = !{!1435, !354, i64 136}
!1439 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!1440 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !1439, i64 32, !1434, i64 48, !354, i64 56}
!1441 = !{!1440, !354, i64 56}
!1442 = !{!1434, !1434, i64 0}
!1443 = !{i64 0, i64 8, !1425, i64 8, i64 8, !1018, i64 16, i64 8, !1120}
!1444 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1415, i64 0, !1017, i64 8, !1115, i64 16}
!1445 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1444, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1446 = !{!1445, !874, i64 112}
!1447 = !{i64 0, i64 8, !1130, i64 8, i64 8, !1018, i64 16, i64 8, !1425, i64 24, i64 8, !1120}
!1448 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIfLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1426, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1449 = !{!1448, !874, i64 120}
!1450 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!1451 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1126, i64 64, !1450, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1452 = !{!1451, !1450, i64 96}
!1453 = !{!1451, !874, i64 104}
!1454 = !{!1451, !354, i64 136}
!1455 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!1456 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIfLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !1455, i64 32, !1450, i64 48, !354, i64 56}
!1457 = !{!1456, !354, i64 56}
!1458 = !{!1450, !1450, i64 0}
!1459 = !{i64 0, i64 8, !1425, i64 8, i64 8, !1018, i64 16, i64 8, !1130}
!1460 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1415, i64 0, !1017, i64 8, !1125, i64 16}
!1461 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIfLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1460, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1462 = !{!1461, !874, i64 112}
!1463 = !{i64 0, i64 8, !1146, i64 8, i64 8, !1018, i64 16, i64 8, !1425, i64 24, i64 8, !1130}
!1464 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIfLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1430, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1465 = !{!1464, !874, i64 120}
!1466 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIfLj3EEEE11NodeReducerINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!1467 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1142, i64 64, !1466, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1468 = !{!1467, !1466, i64 96}
!1469 = !{!1467, !874, i64 104}
!1470 = !{!1467, !354, i64 136}
!1471 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!1472 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIfLj3EEEE11NodeReducerINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !1471, i64 32, !1466, i64 48, !354, i64 56}
!1473 = !{!1472, !354, i64 56}
!1474 = !{!1466, !1466, i64 0}
!1475 = !{!413, !337, i64 64}
!1476 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE8DeepCopyIS6_EE", !422, i64 0, !422, i64 8}
!1477 = !{!1476, !422, i64 0}
!1478 = !{!1476, !422, i64 8}
!1479 = !{i64 0, i64 4, !340, i64 4, i64 4, !340, i64 8, i64 8, !402}
!1480 = !{i64 0, i64 8, !544, i64 8, i64 8, !544}
!1481 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE8DeepCopyISC_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1476, i64 80, !874, i64 96, !878, i64 104, !869, i64 120}
!1482 = !{!1481, !874, i64 96}
!1483 = !{!"_ZTSN3tbb6detail2d013aligned_spaceINS0_2d113blocked_rangeIjEELm8EEE", !336, i64 0}
!1484 = !{!"_ZTSN3tbb6detail2d112range_vectorINS1_13blocked_rangeIjEELh8EEE", !336, i64 0, !336, i64 1, !336, i64 2, !336, i64 3, !1483, i64 16}
!1485 = !{!1484, !336, i64 2}
!1486 = !{!1484, !336, i64 0}
!1487 = !{!1484, !336, i64 1}
!1488 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE8DeepCopyIS5_EE", !444, i64 0, !444, i64 8}
!1489 = !{!1488, !444, i64 0}
!1490 = !{!1488, !444, i64 8}
!1491 = !{i64 0, i64 8, !541, i64 8, i64 8, !541}
!1492 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1488, i64 80, !874, i64 96, !878, i64 104, !869, i64 120}
!1493 = !{!1492, !874, i64 96}
!1494 = !{!574, !337, i64 0}
!1495 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIfLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !429, i64 80, !874, i64 88, !878, i64 96, !869, i64 112}
!1496 = !{!1495, !874, i64 88}
!1497 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE19VoxelizeActiveTilesE", !444, i64 0}
!1498 = !{!1497, !444, i64 0}
!1499 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIfLj3EEELj4EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1497, i64 80, !874, i64 88, !878, i64 96, !869, i64 112}
!1500 = !{!1499, !874, i64 88}
!1501 = !{ptr @_ZN7openvdb5v13_08GridBaseD2Ev}
!1502 = !{ptr @_ZN7openvdb5v13_08GridBaseD2Ev, ptr @_ZN7openvdb5v13_07MetaMapD2Ev}
!1503 = !{!"p1 _ZTSN7openvdb5v13_013TypedMetadataIlEE", !346, i64 0}
!1504 = !{!"_ZTSSt15_Sp_counted_ptrIPN7openvdb5v13_013TypedMetadataIlEELN9__gnu_cxx12_Lock_policyE2EE", !384, i64 0, !1503, i64 16}
!1505 = !{!1504, !1503, i64 16}
!1506 = !{!"_ZTSSt15_Sp_counted_ptrIPSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE", !384, i64 0, !513, i64 16}
!1507 = !{!1506, !513, i64 16}
!1508 = !{!517, !516, i64 0}
!1509 = !{!"_ZTSSt15_Sp_counted_ptrIPSt6vectorISt10shared_ptrIKN7openvdb5v13_08GridBaseEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE", !384, i64 0, !523, i64 16}
!1510 = !{!1509, !523, i64 16}
!1511 = !{!529, !528, i64 0}
!1512 = !{!"_ZTSSt15_Deque_iteratorIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEERS7_PS7_E", !828, i64 0, !828, i64 8, !828, i64 16, !1009, i64 24}
!1513 = !{!"_ZTSNSt11_Deque_baseIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEESaIS7_EE16_Deque_impl_dataE", !1009, i64 0, !343, i64 8, !1512, i64 16, !1512, i64 48}
!1514 = !{!1513, !828, i64 48}
!1515 = !{!1512, !1009, i64 24}
!1516 = !{!1512, !828, i64 0}
!1517 = !{!1512, !828, i64 8}
!1518 = !{!1512, !828, i64 16}
!1519 = !{!"p1 _ZTSSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEESaIS7_EE", !346, i64 0}
!1520 = !{!1519, !1519, i64 0}
!1521 = !{!563, !547, i64 40}
!1522 = !{!"_ZTSZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !568, i64 0, !1017, i64 8, !1519, i64 16}
!1523 = !{!1522, !568, i64 0}
!1524 = !{!1513, !1009, i64 0}
!1525 = !{!1513, !1009, i64 40}
!1526 = !{!1513, !1009, i64 72}
!1527 = !{!1513, !343, i64 8}
!1528 = !{!563, !343, i64 24}
!1529 = !{!563, !554, i64 56}
!1530 = !{i64 0, i64 8, !1018, i64 8, i64 8, !1520}
!1531 = !{!"_ZTSZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1017, i64 0, !1519, i64 8}
!1532 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerINS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1531, i64 88, !874, i64 104, !878, i64 112, !869, i64 128}
!1533 = !{!1532, !874, i64 104}
!1534 = !{i64 0, i64 8, !573, i64 8, i64 8, !1018, i64 16, i64 8, !1520}
!1535 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerINS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1522, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1536 = !{!1535, !874, i64 112}
!1537 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_04tree11LeafManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESN_ILi2EEEE", !346, i64 0}
!1538 = !{!1537, !1537, i64 0}
!1539 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree11LeafManagerINS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !563, i64 88, !874, i64 184, !878, i64 192, !869, i64 208}
!1540 = !{!1539, !874, i64 184}
!1541 = !{i64 0, i64 8, !402, i64 8, i64 8, !402, i64 16, i64 8, !402, i64 24, i64 8, !573}
!1542 = !{!"_ZTSSt5arrayIN7openvdb5v13_04math5CoordELm3EE", !336, i64 0}
!1543 = !{!"_ZTSSt10_Head_baseILm3EPN7openvdb5v13_04tree8RootNodeINS2_12InternalNodeINS4_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEELb0EE", !457, i64 0}
!1544 = !{!"_ZTSSt11_Tuple_implILm3EJPN7openvdb5v13_04tree8RootNodeINS2_12InternalNodeINS4_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEE", !1543, i64 0}
!1545 = !{!"_ZTSSt10_Head_baseILm2EPN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEELb0EE", !422, i64 0}
!1546 = !{!"_ZTSSt11_Tuple_implILm2EJPN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEPNS2_8RootNodeIS7_EEEE", !1544, i64 0, !1545, i64 8}
!1547 = !{!"_ZTSSt10_Head_baseILm1EPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEELb0EE", !444, i64 0}
!1548 = !{!"_ZTSSt11_Tuple_implILm1EJPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEPNS3_IS6_Lj5EEEPNS2_8RootNodeIS8_EEEE", !1546, i64 0, !1547, i64 16}
!1549 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree8LeafNodeIfLj3EEELb0EE", !437, i64 0}
!1550 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree8LeafNodeIfLj3EEEPNS2_12InternalNodeIS4_Lj4EEEPNS6_IS7_Lj5EEEPNS2_8RootNodeIS9_EEEE", !1548, i64 0, !1549, i64 24}
!1551 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree8LeafNodeIfLj3EEEPNS2_12InternalNodeIS4_Lj4EEEPNS6_IS7_Lj5EEEPNS2_8RootNodeIS9_EEEE", !1550, i64 0}
!1552 = !{!"_ZTSN7openvdb5v13_09TupleListIJPNS0_4tree8LeafNodeIfLj3EEEPNS2_12InternalNodeIS4_Lj4EEEPNS6_IS7_Lj5EEEPNS2_8RootNodeIS9_EEEEE", !1551, i64 0}
!1553 = !{!"_ZTSN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE", !536, i64 0, !538, i64 16, !1542, i64 24, !1552, i64 64}
!1554 = !{!"_ZTSN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE6CookOpINSD_12ProlongateOpEEE", !1553, i64 0}
!1555 = !{!"_ZTSN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools12MultiResGridISF_E6CookOpINSK_12ProlongateOpEEEKNS1_16auto_partitionerEEE", !873, i64 0, !569, i64 64, !1554, i64 96, !874, i64 192, !878, i64 200, !869, i64 216}
!1556 = !{!1555, !874, i64 192}
!1557 = !{!569, !568, i64 24}
!1558 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9LeafRangeELm8EEE", !336, i64 0}
!1559 = !{!"_ZTSN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EEE", !336, i64 0, !336, i64 1, !336, i64 2, !336, i64 3, !1558, i64 16}
!1560 = !{!1559, !336, i64 2}
!1561 = !{!1559, !336, i64 0}
!1562 = !{!1559, !336, i64 1}
!1563 = !{!"_ZTSN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE6CookOpINSD_10RestrictOpEEE", !1553, i64 0}
!1564 = !{!"_ZTSN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools12MultiResGridISF_E6CookOpINSK_10RestrictOpEEEKNS1_16auto_partitionerEEE", !873, i64 0, !569, i64 64, !1563, i64 96, !874, i64 192, !878, i64 200, !869, i64 216}
!1565 = !{!1564, !874, i64 192}
!1566 = !{!"_ZTSSt15_Sp_counted_ptrIPN7openvdb5v13_013TypedMetadataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELN9__gnu_cxx12_Lock_policyE2EE", !384, i64 0, !595, i64 16}
!1567 = !{!1566, !595, i64 16}
!1568 = !{!476, !457, i64 0}
!1569 = !{!"p1 _ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISJ_EEEE", !346, i64 0}
!1570 = !{!"_ZTSN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISK_EEEESK_EE", !1569, i64 0, !343, i64 8, !610, i64 16}
!1571 = !{!1570, !610, i64 16}
!1572 = !{!1570, !1569, i64 0}
!1573 = !{!1570, !343, i64 8}
!1574 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELm1EEE", !336, i64 0}
!1575 = !{!"_ZTSN3tbb6detail2d111ets_elementIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !1574, i64 0, !354, i64 1232}
!1576 = !{!1575, !354, i64 1232}
!1577 = !{!"_ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE5arrayE", !604, i64 0, !343, i64 8}
!1578 = !{!1577, !604, i64 0}
!1579 = !{!1577, !343, i64 8}
!1580 = !{!612, !612, i64 0}
!1581 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d06paddedINS1_2d111ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEEE", !610, i64 0}
!1582 = !{!1581, !610, i64 0}
!1583 = !{!"p2 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEEE", !546, i64 0}
!1584 = !{!"_ZTSZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISJ_EEE14create_segmentEPSt6atomicIPSJ_EmmEUlvE0_", !1583, i64 0, !1569, i64 8, !819, i64 16}
!1585 = !{!"_ZTSN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIN7openvdb5v13_04tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELm128EEENS3_23cache_aligned_allocatorISK_EEE14create_segmentEPSt6atomicIPSK_EmmEUlvE0_EE", !1584, i64 0, !354, i64 24}
!1586 = !{!1585, !354, i64 24}
!1587 = !{!"_ZTSNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE13_Rb_tree_implISK_Lb1EEE", !407, i64 0, !373, i64 8}
!1588 = !{!"_ZTSSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISG_ESt4lessIS3_ESaISG_EE", !1587, i64 0}
!1589 = !{!"_ZTSSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SD_EEE", !1588, i64 0}
!1590 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEE", !1589, i64 0, !354, i64 48, !412, i64 52, !337, i64 64}
!1591 = !{!1590, !354, i64 48}
!1592 = !{!1590, !337, i64 64}
!1593 = !{!662, !660, i64 0}
!1594 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEE", !336, i64 0, !1394, i64 262144, !1394, i64 266240, !412, i64 270336, !337, i64 270348}
!1595 = !{!1594, !337, i64 270348}
!1596 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS2_INS2_INS3_IfLj3EEELj4EEELj5EEEEE", !422, i64 0, !660, i64 8, !1095, i64 16, !1095, i64 24}
!1597 = !{!1596, !422, i64 0}
!1598 = !{!1596, !660, i64 8}
!1599 = !{!661, !354, i64 0}
!1600 = !{!661, !354, i64 1}
!1601 = !{!"_ZTSSt15_Sp_counted_ptrIPN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EE", !384, i64 0, !626, i64 16}
!1602 = !{!1601, !626, i64 16}
!1603 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEE", !660, i64 0, !453, i64 8}
!1604 = !{!1603, !660, i64 0}
!1605 = !{!"_ZTSN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEE", !343, i64 0}
!1606 = !{!1605, !343, i64 0}
!1607 = !{!"p1 _ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEE", !346, i64 0}
!1608 = !{!1607, !1607, i64 0}
!1609 = !{!"p2 _ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEE", !546, i64 0}
!1610 = !{!1609, !1609, i64 0}
!1611 = !{!"p2 _ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEE", !546, i64 0}
!1612 = !{!1611, !1611, i64 0}
!1613 = !{!"_ZTSN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEE", !343, i64 0}
!1614 = !{!1613, !343, i64 0}
!1615 = !{!"_ZTSN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEE", !343, i64 0}
!1616 = !{!1615, !343, i64 0}
!1617 = !{!660, !660, i64 0}
!1618 = !{i64 0, i64 8, !544, i64 8, i64 8, !1617, i64 16, i64 8, !1104, i64 24, i64 8, !1104}
!1619 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS8_INS8_INS9_IfLj3EEELj4EEELj5EEEEEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1596, i64 80, !874, i64 112, !878, i64 120, !869, i64 136}
!1620 = !{!1619, !874, i64 112}
!1621 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEE", !336, i64 0, !1389, i64 32768, !1389, i64 33280, !412, i64 33792, !337, i64 33804}
!1622 = !{!1621, !337, i64 33804}
!1623 = !{!"p1 _ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEE", !346, i64 0}
!1624 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE13TopologyCopy2INS2_INS3_IfLj3EEELj4EEEEE", !444, i64 0, !1623, i64 8, !1095, i64 16, !1095, i64 24}
!1625 = !{!1624, !444, i64 0}
!1626 = !{!1624, !1623, i64 8}
!1627 = !{!1623, !1623, i64 0}
!1628 = !{i64 0, i64 8, !541, i64 8, i64 8, !1627, i64 16, i64 8, !1104, i64 24, i64 8, !1104}
!1629 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IfLj3EEELj4EEEEEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1624, i64 80, !874, i64 112, !878, i64 120, !869, i64 136}
!1630 = !{!1629, !874, i64 112}
!1631 = !{!"_ZTSN7openvdb5v13_04tree10LeafBufferIbLj3EEE", !966, i64 0}
!1632 = !{!"_ZTSN7openvdb5v13_04tree8LeafNodeINS0_9ValueMaskELj3EEE", !1631, i64 0, !412, i64 64, !337, i64 76}
!1633 = !{!1632, !337, i64 76}
!1634 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE8DeepCopyIS7_EE", !660, i64 0, !660, i64 8}
!1635 = !{!1634, !660, i64 0}
!1636 = !{!1634, !660, i64 8}
!1637 = !{i64 0, i64 8, !1617, i64 8, i64 8, !1617}
!1638 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE8DeepCopyISD_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1634, i64 80, !874, i64 96, !878, i64 104, !869, i64 120}
!1639 = !{!1638, !874, i64 96}
!1640 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE8DeepCopyIS6_EE", !1623, i64 0, !1623, i64 8}
!1641 = !{!1640, !1623, i64 0}
!1642 = !{!1640, !1623, i64 8}
!1643 = !{i64 0, i64 8, !1627, i64 8, i64 8, !1627}
!1644 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE8DeepCopyISC_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !1640, i64 80, !874, i64 96, !878, i64 104, !869, i64 120}
!1645 = !{!1644, !874, i64 96}
!1646 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEE", !1623, i64 0, !447, i64 8}
!1647 = !{!1646, !1623, i64 0}
!1648 = !{!"p1 _ZTSN7openvdb5v13_04tree17ValueAccessorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEE", !346, i64 0}
!1649 = !{!"_ZTSSt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbE", !1648, i64 0, !354, i64 8}
!1650 = !{!1649, !1648, i64 0}
!1651 = !{!"p1 _ZTSN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEE", !346, i64 0}
!1652 = !{!"_ZTSSt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEELb1EEEbE", !1651, i64 0, !354, i64 8}
!1653 = !{!1652, !1651, i64 0}
!1654 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeINS0_9ValueMaskELj3EEEEE", !673, i64 0, !440, i64 8}
!1655 = !{!1654, !673, i64 0}
!1656 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKN7openvdb5v13_04math5CoordENS2_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEEE", !371, i64 0}
!1657 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8BaseIterIS9_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ChildOnPredEEE", !1607, i64 0, !1656, i64 8}
!1658 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ChildIterIS9_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ChildOnPredES8_EE", !1657, i64 0}
!1659 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterISC_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredESB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSR_IJSA_SB_SC_EEELm3ELj1EEENSR_IJSB_SC_EEELm2ELj2EEE", !346, i64 0}
!1660 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterISC_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredESB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSR_IJSA_SB_SC_EEELm3ELj1EEENSR_IJSB_SC_EEELm2ELj2EEENSR_IJSC_EEELm1ELj3EEE", !1658, i64 0, !1659, i64 16}
!1661 = !{!1660, !1659, i64 16}
!1662 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEE", !660, i64 0, !453, i64 8}
!1663 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE9ChildIterISD_SC_S7_NSD_7ChildOnEEESD_SC_EE", !1662, i64 0}
!1664 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE9ChildIterIS7_S6_NS0_4util14OnMaskIteratorINS9_8NodeMaskILj5EEEEENS7_7ChildOnEEE", !1663, i64 0}
!1665 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterISC_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredESB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSR_IJSA_SB_SC_EEELm3ELj1EEE", !346, i64 0}
!1666 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterISC_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredESB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSR_IJSA_SB_SC_EEELm3ELj1EEENSR_IJSB_SC_EEELm2ELj2EEE", !1664, i64 0, !1660, i64 24, !1665, i64 48}
!1667 = !{!1666, !1665, i64 48}
!1668 = !{!"_ZTSN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEE", !1623, i64 0, !447, i64 8}
!1669 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE9ChildIterISC_SB_S7_NSC_7ChildOnEEESC_SB_EE", !1668, i64 0}
!1670 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE9ChildIterIS6_S5_NS0_4util14OnMaskIteratorINS8_8NodeMaskILj4EEEEENS6_7ChildOnEEE", !1669, i64 0}
!1671 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterISC_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredESB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEE", !346, i64 0}
!1672 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterISC_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredESB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSR_IJSA_SB_SC_EEELm3ELj1EEE", !1670, i64 0, !1666, i64 24, !1671, i64 80}
!1673 = !{!1672, !1671, i64 80}
!1674 = !{!1668, !1623, i64 0}
!1675 = !{!1657, !1607, i64 0}
!1676 = !{!1656, !371, i64 0}
!1677 = !{!1662, !660, i64 0}
!1678 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKN7openvdb5v13_04math5CoordENS2_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_9ValueMaskELj3EEELj4EEELj5EEEE10NodeStructEEE", !371, i64 0}
!1679 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE8BaseIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ChildOnPredEEE", !1607, i64 0, !1678, i64 8}
!1680 = !{!"_ZTSN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9ChildIterIKS9_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS9_10NodeStructEEENS9_11ChildOnPredEKS8_EE", !1679, i64 0}
!1681 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterIKSC_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredEKSB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSU_IJSA_SB_SC_EEELm3ELj1EEENSU_IJSB_SC_EEELm2ELj2EEE", !346, i64 0}
!1682 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterIKSC_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredEKSB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSU_IJSA_SB_SC_EEELm3ELj1EEENSU_IJSB_SC_EEELm2ELj2EEENSU_IJSC_EEELm1ELj3EEE", !1680, i64 0, !1681, i64 16}
!1683 = !{!1682, !1681, i64 16}
!1684 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE9ChildIterIKSD_KSC_S7_NSD_7ChildOnEEESF_SG_EE", !1603, i64 0}
!1685 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE9ChildIterIKS7_KS6_NS0_4util14OnMaskIteratorINSB_8NodeMaskILj5EEEEENS7_7ChildOnEEE", !1684, i64 0}
!1686 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_16LeafIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterIKSC_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredEKSB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSU_IJSA_SB_SC_EEELm3ELj1EEE", !346, i64 0}
!1687 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterIKSC_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredEKSB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSU_IJSA_SB_SC_EEELm3ELj1EEENSU_IJSB_SC_EEELm2ELj2EEE", !1685, i64 0, !1682, i64 24, !1686, i64 48}
!1688 = !{!1687, !1686, i64 48}
!1689 = !{!"_ZTSN7openvdb5v13_04tree18SparseIteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE9ChildIterIKSC_KSB_S7_NSC_7ChildOnEEESE_SF_EE", !1646, i64 0}
!1690 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE9ChildIterIKS6_KS5_NS0_4util14OnMaskIteratorINSA_8NodeMaskILj4EEEEENS6_7ChildOnEEE", !1689, i64 0}
!1691 = !{!"p1 _ZTSN7openvdb5v13_04tree12IterListItemINS1_16LeafIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterIKSC_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredEKSB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEE", !346, i64 0}
!1692 = !{!"_ZTSN7openvdb5v13_04tree12IterListItemINS2_INS1_16LeafIteratorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEENSC_9ChildIterIKSC_St23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENSC_10NodeStructEEENSC_11ChildOnPredEKSB_EEE8PrevItemENS0_8TypeListIJS9_SA_SB_SC_EEELm4ELj0EEENSU_IJSA_SB_SC_EEELm3ELj1EEE", !1690, i64 0, !1687, i64 24, !1691, i64 80}
!1693 = !{!1692, !1691, i64 80}
!1694 = !{!1679, !1607, i64 0}
!1695 = !{!1678, !371, i64 0}
!1696 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!1697 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEELb0EE", !1696, i64 0}
!1698 = !{!1697, !1696, i64 0}
!1699 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EEE", !1697, i64 0}
!1700 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EEE", !1699, i64 0}
!1701 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EE", !1700, i64 0}
!1702 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_ELb1ELb1EE", !1701, i64 0}
!1703 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal18ActiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EE", !1702, i64 0}
!1704 = !{!"_ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS0_5tools14count_internal18ActiveVoxelCountOpISC_EEEE", !1703, i64 0, !1696, i64 8}
!1705 = !{!1704, !1696, i64 8}
!1706 = !{!1696, !1696, i64 0}
!1707 = !{i64 0, i64 8, !402, i64 8, i64 8, !402, i64 16, i64 8, !402, i64 24, i64 8, !649}
!1708 = !{!"p1 _ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS0_5tools14count_internal18ActiveVoxelCountOpISC_EEEE", !346, i64 0}
!1709 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal18ActiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEEE", !873, i64 0, !645, i64 64, !1708, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1710 = !{!1709, !1708, i64 96}
!1711 = !{!1709, !874, i64 104}
!1712 = !{!1709, !354, i64 136}
!1713 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal18ActiveVoxelCountOpISG_EEEELm1EEE", !336, i64 0}
!1714 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal18ActiveVoxelCountOpISG_EEEEEE", !1051, i64 0, !1713, i64 32, !1708, i64 48, !354, i64 56}
!1715 = !{!1714, !354, i64 56}
!1716 = !{!1708, !1708, i64 0}
!1717 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!1718 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEELb0EE", !1717, i64 0}
!1719 = !{!1718, !1717, i64 0}
!1720 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EEE", !1718, i64 0}
!1721 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EEE", !1720, i64 0}
!1722 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EE", !1721, i64 0}
!1723 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_ELb1ELb1EE", !1722, i64 0}
!1724 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal20InactiveVoxelCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEESt14default_deleteISG_EE", !1723, i64 0}
!1725 = !{!"_ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS0_5tools14count_internal20InactiveVoxelCountOpISC_EEEE", !1724, i64 0, !1717, i64 8}
!1726 = !{!1725, !1717, i64 8}
!1727 = !{!1717, !1717, i64 0}
!1728 = !{!"p1 _ZTSN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS0_5tools14count_internal20InactiveVoxelCountOpISC_EEEE", !346, i64 0}
!1729 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENSI_11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEKNS1_16auto_partitionerEEE", !873, i64 0, !645, i64 64, !1728, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1730 = !{!1729, !1728, i64 96}
!1731 = !{!1729, !874, i64 104}
!1732 = !{!1729, !354, i64 136}
!1733 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEELm1EEE", !336, i64 0}
!1734 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE11LeafReducerINS4_5tools14count_internal20InactiveVoxelCountOpISG_EEEEEE", !1051, i64 0, !1733, i64 32, !1728, i64 48, !354, i64 56}
!1735 = !{!1734, !354, i64 56}
!1736 = !{!1728, !1728, i64 0}
!1737 = !{!"_ZTSSt10_Head_baseILm0EPPKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEELb0EE", !1611, i64 0}
!1738 = !{!"_ZTSSt11_Tuple_implILm0EJPPKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIA_SA_EEE", !1737, i64 0}
!1739 = !{!"_ZTSSt5tupleIJPPKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIA_SA_EEE", !1738, i64 0}
!1740 = !{!"_ZTSSt15__uniq_ptr_implIPKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIA_SA_EE", !1739, i64 0}
!1741 = !{!"_ZTSSt15__uniq_ptr_dataIPKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteIA_SA_ELb1ELb1EE", !1740, i64 0}
!1742 = !{!"_ZTSSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEESt14default_deleteISB_EE", !1741, i64 0}
!1743 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEE", !343, i64 0, !1742, i64 8, !1611, i64 16}
!1744 = !{!"_ZTSSt10_Head_baseILm0EPPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELb0EE", !1609, i64 0}
!1745 = !{!"_ZTSSt11_Tuple_implILm0EJPPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEESt14default_deleteIA_S9_EEE", !1744, i64 0}
!1746 = !{!"_ZTSSt5tupleIJPPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEESt14default_deleteIA_S9_EEE", !1745, i64 0}
!1747 = !{!"_ZTSSt15__uniq_ptr_implIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEESt14default_deleteIA_S9_EE", !1746, i64 0}
!1748 = !{!"_ZTSSt15__uniq_ptr_dataIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEESt14default_deleteIA_S9_ELb1ELb1EE", !1747, i64 0}
!1749 = !{!"_ZTSSt10unique_ptrIA_PKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEESt14default_deleteISA_EE", !1748, i64 0}
!1750 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEE", !343, i64 0, !1749, i64 8, !1609, i64 16}
!1751 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEEE", !343, i64 0, !633, i64 8, !627, i64 16}
!1752 = !{!"_ZTSN7openvdb5v13_04tree18DynamicNodeManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEELj3EEE", !1607, i64 0, !1743, i64 8, !1750, i64 32, !1751, i64 56}
!1753 = !{!1752, !1607, i64 0}
!1754 = !{!1743, !343, i64 0}
!1755 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEE", !1703, i64 0, !1696, i64 8, !1101, i64 16, !1095, i64 24}
!1756 = !{!1755, !1696, i64 8}
!1757 = !{!1755, !1095, i64 24}
!1758 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!1759 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEELb0EE", !1758, i64 0}
!1760 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EEE", !1759, i64 0}
!1761 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EEE", !1760, i64 0}
!1762 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EE", !1761, i64 0}
!1763 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_ELb1ELb1EE", !1762, i64 0}
!1764 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal18ActiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeINS1_9ValueMaskELj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISI_EE", !1763, i64 0}
!1765 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEE", !1764, i64 0, !1758, i64 8}
!1766 = !{!1765, !1758, i64 8}
!1767 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEE", !346, i64 0}
!1768 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeE", !343, i64 0, !343, i64 8, !343, i64 16, !1767, i64 24}
!1769 = !{!1768, !343, i64 0}
!1770 = !{!1768, !343, i64 8}
!1771 = !{!1768, !343, i64 16}
!1772 = !{!1767, !1767, i64 0}
!1773 = !{!1758, !1758, i64 0}
!1774 = !{!1750, !343, i64 0}
!1775 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS7_Lj5EEEEEEEEEEENS9_11OpWithIndexEEE", !1764, i64 0, !1758, i64 8}
!1776 = !{!1775, !1758, i64 8}
!1777 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEEE", !346, i64 0}
!1778 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE9NodeRangeE", !343, i64 0, !343, i64 8, !343, i64 16, !1777, i64 24}
!1779 = !{!1778, !343, i64 0}
!1780 = !{!1778, !343, i64 8}
!1781 = !{!1778, !343, i64 16}
!1782 = !{!1777, !1777, i64 0}
!1783 = !{!1743, !1611, i64 16}
!1784 = !{!1750, !1609, i64 16}
!1785 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS7_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeISB_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1777, i64 0, !1017, i64 8, !1758, i64 16, !1767, i64 24}
!1786 = !{!1785, !1777, i64 0}
!1787 = !{!1751, !343, i64 0}
!1788 = !{!1751, !627, i64 16}
!1789 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEEE", !346, i64 0}
!1790 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS5_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS9_ISA_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !1789, i64 0, !1017, i64 8, !1758, i64 16, !1777, i64 24}
!1791 = !{!1790, !1789, i64 0}
!1792 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSE_IS5_Lj4EEELj5EEEEEEEEENS7_11OpWithIndexEEE", !1703, i64 0, !1696, i64 8}
!1793 = !{!1792, !1696, i64 8}
!1794 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeINS0_9ValueMaskELj3EEEE9NodeRangeE", !343, i64 0, !343, i64 8, !343, i64 16, !1789, i64 24}
!1795 = !{!1794, !343, i64 0}
!1796 = !{!1794, !343, i64 8}
!1797 = !{!1794, !343, i64 16}
!1798 = !{!1789, !1789, i64 0}
!1799 = !{!1768, !1767, i64 24}
!1800 = !{i64 0, i64 8, !402, i64 8, i64 8, !402, i64 16, i64 8, !402, i64 24, i64 8, !1772}
!1801 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS8_EEEEEEEENSA_11OpWithIndexEEE", !346, i64 0}
!1802 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE9NodeRangeENSE_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1768, i64 64, !1801, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1803 = !{!1802, !1801, i64 96}
!1804 = !{!1802, !874, i64 104}
!1805 = !{!1802, !354, i64 136}
!1806 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEELm1EEE", !336, i64 0}
!1807 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeISC_EEEEEEEENSE_11OpWithIndexEEEEE", !1051, i64 0, !1806, i64 32, !1801, i64 48, !354, i64 56}
!1808 = !{!1807, !354, i64 56}
!1809 = !{!1801, !1801, i64 0}
!1810 = !{i64 0, i64 8, !1773, i64 8, i64 8, !1018, i64 16, i64 8, !1772}
!1811 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS7_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeISB_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1758, i64 0, !1017, i64 8, !1767, i64 16}
!1812 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISD_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal18ActiveVoxelCountOpINS7_4TreeINS7_8RootNodeISH_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1811, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!1813 = !{!1812, !874, i64 112}
!1814 = !{i64 0, i64 8, !1782, i64 8, i64 8, !1018, i64 16, i64 8, !1773, i64 24, i64 8, !1772}
!1815 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISD_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal18ActiveVoxelCountOpINS7_4TreeINS7_8RootNodeISH_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !1785, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!1816 = !{!1815, !874, i64 120}
!1817 = !{!1778, !1777, i64 24}
!1818 = !{i64 0, i64 8, !402, i64 8, i64 8, !402, i64 16, i64 8, !402, i64 24, i64 8, !1782}
!1819 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS7_Lj5EEEEEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!1820 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISB_Lj5EEEEEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !1778, i64 64, !1819, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!1821 = !{!1820, !1819, i64 96}
end_hunk_21
begin_hunk_22_@llvm.vector.reduce.and.v2i64
!2466 = !{i64 0, i64 8, !402, i64 8, i64 8, !402, i64 16, i64 8, !402, i64 24, i64 8, !2429}
!2467 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal18ActiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!2468 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2425, i64 64, !2467, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2469 = !{!2468, !2467, i64 96}
!2470 = !{!2468, !874, i64 104}
!2471 = !{!2468, !354, i64 136}
!2472 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!2473 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal18ActiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !2472, i64 32, !2467, i64 48, !354, i64 56}
!2474 = !{!2473, !354, i64 56}
!2475 = !{!2467, !2467, i64 0}
!2476 = !{!2425, !2420, i64 24}
!2477 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !2355, i64 0, !2348, i64 8, !1101, i64 16, !1095, i64 24}
!2478 = !{!2477, !2348, i64 8}
!2479 = !{!2477, !1095, i64 24}
!2480 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!2481 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !2480, i64 0}
!2482 = !{!2481, !2480, i64 0}
!2483 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2481, i64 0}
!2484 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2483, i64 0}
!2485 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2484, i64 0}
!2486 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !2485, i64 0}
!2487 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal20InactiveVoxelCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2486, i64 0}
!2488 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !2487, i64 0, !2480, i64 8}
!2489 = !{!2488, !2480, i64 8}
!2490 = !{!2480, !2480, i64 0}
!2491 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2408, i64 0, !1017, i64 8, !2480, i64 16, !2398, i64 24}
!2492 = !{!2491, !2408, i64 0}
!2493 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !2487, i64 0, !2480, i64 8}
!2494 = !{!2493, !2480, i64 8}
!2495 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2420, i64 0, !1017, i64 8, !2480, i64 16, !2408, i64 24}
!2496 = !{!2495, !2420, i64 0}
!2497 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !2355, i64 0, !2348, i64 8}
!2498 = !{!2497, !2348, i64 8}
!2499 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!2500 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2399, i64 64, !2499, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2501 = !{!2500, !2499, i64 96}
!2502 = !{!2500, !874, i64 104}
!2503 = !{!2500, !354, i64 136}
!2504 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!2505 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !2504, i64 32, !2499, i64 48, !354, i64 56}
!2506 = !{!2505, !354, i64 56}
!2507 = !{!2499, !2499, i64 0}
!2508 = !{i64 0, i64 8, !2490, i64 8, i64 8, !1018, i64 16, i64 8, !2403}
!2509 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2480, i64 0, !1017, i64 8, !2398, i64 16}
!2510 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2509, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2511 = !{!2510, !874, i64 112}
!2512 = !{i64 0, i64 8, !2413, i64 8, i64 8, !1018, i64 16, i64 8, !2490, i64 24, i64 8, !2403}
!2513 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2491, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2514 = !{!2513, !874, i64 120}
!2515 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!2516 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2409, i64 64, !2515, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2517 = !{!2516, !2515, i64 96}
!2518 = !{!2516, !874, i64 104}
!2519 = !{!2516, !354, i64 136}
!2520 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!2521 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !2520, i64 32, !2515, i64 48, !354, i64 56}
!2522 = !{!2521, !354, i64 56}
!2523 = !{!2515, !2515, i64 0}
!2524 = !{i64 0, i64 8, !2490, i64 8, i64 8, !1018, i64 16, i64 8, !2413}
!2525 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2480, i64 0, !1017, i64 8, !2408, i64 16}
!2526 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIdLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2525, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2527 = !{!2526, !874, i64 112}
!2528 = !{i64 0, i64 8, !2429, i64 8, i64 8, !1018, i64 16, i64 8, !2490, i64 24, i64 8, !2413}
!2529 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIdLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal20InactiveVoxelCountOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2495, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2530 = !{!2529, !874, i64 120}
!2531 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal20InactiveVoxelCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!2532 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2425, i64 64, !2531, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2533 = !{!2532, !2531, i64 96}
!2534 = !{!2532, !874, i64 104}
!2535 = !{!2532, !354, i64 136}
!2536 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!2537 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal20InactiveVoxelCountOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !2536, i64 32, !2531, i64 48, !354, i64 56}
!2538 = !{!2537, !354, i64 56}
!2539 = !{!2531, !2531, i64 0}
!2540 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!2541 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE", !2540, i64 0}
!2542 = !{!2541, !2540, i64 0}
!2543 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !2541, i64 0}
!2544 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !2543, i64 0}
!2545 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !2544, i64 0}
!2546 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_ELb1ELb1EE", !2545, i64 0}
!2547 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal17ActiveTileCountOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !2546, i64 0}
!2548 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !2547, i64 0, !2540, i64 8, !1101, i64 16, !1095, i64 24}
!2549 = !{!2548, !2540, i64 8}
!2550 = !{!2548, !1095, i64 24}
!2551 = !{!2540, !2540, i64 0}
!2552 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!2553 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !2552, i64 0}
!2554 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2553, i64 0}
!2555 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2554, i64 0}
!2556 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2555, i64 0}
!2557 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !2556, i64 0}
!2558 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal17ActiveTileCountOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2557, i64 0}
!2559 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !2558, i64 0, !2552, i64 8}
!2560 = !{!2559, !2552, i64 8}
!2561 = !{!2552, !2552, i64 0}
!2562 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2408, i64 0, !1017, i64 8, !2552, i64 16, !2398, i64 24}
!2563 = !{!2562, !2408, i64 0}
!2564 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEENS8_11OpWithIndexEEE", !2547, i64 0, !2540, i64 8}
!2565 = !{!2564, !2540, i64 8}
!2566 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!2567 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2399, i64 64, !2566, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2568 = !{!2567, !2566, i64 96}
!2569 = !{!2567, !874, i64 104}
!2570 = !{!2567, !354, i64 136}
!2571 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!2572 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !2571, i64 32, !2566, i64 48, !354, i64 56}
!2573 = !{!2572, !354, i64 56}
!2574 = !{!2566, !2566, i64 0}
!2575 = !{i64 0, i64 8, !2561, i64 8, i64 8, !1018, i64 16, i64 8, !2403}
!2576 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2552, i64 0, !1017, i64 8, !2398, i64 16}
!2577 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal17ActiveTileCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2576, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2578 = !{!2577, !874, i64 112}
!2579 = !{i64 0, i64 8, !2413, i64 8, i64 8, !1018, i64 16, i64 8, !2561, i64 24, i64 8, !2403}
!2580 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal17ActiveTileCountOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2562, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2581 = !{!2580, !874, i64 120}
!2582 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS0_5tools14count_internal17ActiveTileCountOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!2583 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2409, i64 64, !2582, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2584 = !{!2583, !2582, i64 96}
!2585 = !{!2583, !874, i64 104}
!2586 = !{!2583, !354, i64 136}
!2587 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!2588 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS4_5tools14count_internal17ActiveTileCountOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !2587, i64 32, !2582, i64 48, !354, i64 56}
!2589 = !{!2588, !354, i64 56}
!2590 = !{!2582, !2582, i64 0}
!2591 = !{!"_ZTSN7openvdb5v13_05tools14count_internal10MemUsageOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !343, i64 0, !354, i64 8}
!2592 = !{!2591, !343, i64 0}
!2593 = !{!2591, !354, i64 8}
!2594 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal10MemUsageOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!2595 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE", !2594, i64 0}
!2596 = !{!2595, !2594, i64 0}
!2597 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !2595, i64 0}
!2598 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !2597, i64 0}
!2599 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !2598, i64 0}
!2600 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_ELb1ELb1EE", !2599, i64 0}
!2601 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !2600, i64 0}
!2602 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !2601, i64 0, !2594, i64 8, !1101, i64 16, !1095, i64 24}
!2603 = !{!2602, !2594, i64 8}
!2604 = !{!2602, !1095, i64 24}
!2605 = !{!2594, !2594, i64 0}
!2606 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!2607 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !2606, i64 0}
!2608 = !{!2607, !2606, i64 0}
!2609 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2607, i64 0}
!2610 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2609, i64 0}
!2611 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2610, i64 0}
!2612 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !2611, i64 0}
!2613 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2612, i64 0}
!2614 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !2613, i64 0, !2606, i64 8}
!2615 = !{!2614, !2606, i64 8}
!2616 = !{!2606, !2606, i64 0}
!2617 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2408, i64 0, !1017, i64 8, !2606, i64 16, !2398, i64 24}
!2618 = !{!2617, !2408, i64 0}
!2619 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !2613, i64 0, !2606, i64 8}
!2620 = !{!2619, !2606, i64 8}
!2621 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2420, i64 0, !1017, i64 8, !2606, i64 16, !2408, i64 24}
!2622 = !{!2621, !2420, i64 0}
!2623 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !2601, i64 0, !2594, i64 8}
!2624 = !{!2623, !2594, i64 8}
!2625 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!2626 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2399, i64 64, !2625, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2627 = !{!2626, !2625, i64 96}
!2628 = !{!2626, !874, i64 104}
!2629 = !{!2626, !354, i64 136}
!2630 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!2631 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !2630, i64 32, !2625, i64 48, !354, i64 56}
!2632 = !{!2631, !354, i64 56}
!2633 = !{!2625, !2625, i64 0}
!2634 = !{i64 0, i64 8, !2616, i64 8, i64 8, !1018, i64 16, i64 8, !2403}
!2635 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2606, i64 0, !1017, i64 8, !2398, i64 16}
!2636 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2635, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2637 = !{!2636, !874, i64 112}
!2638 = !{i64 0, i64 8, !2413, i64 8, i64 8, !1018, i64 16, i64 8, !2616, i64 24, i64 8, !2403}
!2639 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2617, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2640 = !{!2639, !874, i64 120}
!2641 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!2642 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2409, i64 64, !2641, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2643 = !{!2642, !2641, i64 96}
!2644 = !{!2642, !874, i64 104}
!2645 = !{!2642, !354, i64 136}
!2646 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!2647 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !2646, i64 32, !2641, i64 48, !354, i64 56}
!2648 = !{!2647, !354, i64 56}
!2649 = !{!2641, !2641, i64 0}
!2650 = !{i64 0, i64 8, !2616, i64 8, i64 8, !1018, i64 16, i64 8, !2413}
!2651 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2606, i64 0, !1017, i64 8, !2408, i64 16}
!2652 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIdLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2651, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2653 = !{!2652, !874, i64 112}
!2654 = !{i64 0, i64 8, !2429, i64 8, i64 8, !1018, i64 16, i64 8, !2616, i64 24, i64 8, !2413}
!2655 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIdLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal10MemUsageOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2621, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2656 = !{!2655, !874, i64 120}
!2657 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal10MemUsageOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!2658 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2425, i64 64, !2657, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2659 = !{!2658, !2657, i64 96}
!2660 = !{!2658, !874, i64 104}
!2661 = !{!2658, !354, i64 136}
!2662 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!2663 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal10MemUsageOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !2662, i64 32, !2657, i64 48, !354, i64 56}
!2664 = !{!2663, !354, i64 56}
!2665 = !{!2657, !2657, i64 0}
!2666 = !{!"_ZTSN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj5EEEEE", !336, i64 0, !336, i64 8}
!2667 = !{!2666, !336, i64 0}
!2668 = !{!"_ZTSN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj4EEEEE", !336, i64 0, !336, i64 8}
!2669 = !{!2668, !336, i64 0}
!2670 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEE", !336, i64 0, !1389, i64 32768, !1389, i64 33280, !412, i64 33792, !337, i64 33804}
!2671 = !{!2670, !337, i64 33804}
!2672 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEE", !336, i64 0, !1394, i64 262144, !1394, i64 266240, !412, i64 270336, !337, i64 270348}
!2673 = !{!2672, !337, i64 270348}
!2674 = !{!"_ZTSN7openvdb5v13_02io12MaskCompressIdNS0_4util8NodeMaskILj3EEEEE", !336, i64 0, !336, i64 8}
!2675 = !{!2674, !336, i64 0}
!2676 = !{!"p1 _ZTSN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !346, i64 0}
!2677 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE", !2676, i64 0}
!2678 = !{!2677, !2676, i64 0}
!2679 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !2677, i64 0}
!2680 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EEE", !2679, i64 0}
!2681 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !2680, i64 0}
!2682 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_ELb1ELb1EE", !2681, i64 0}
!2683 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE", !2682, i64 0}
!2684 = !{!"_ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !2683, i64 0, !2676, i64 8, !1101, i64 16, !1095, i64 24}
!2685 = !{!2684, !2676, i64 8}
!2686 = !{!2684, !1095, i64 24}
!2687 = !{!2676, !2676, i64 0}
!2688 = !{!"_ZTSN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !534, i64 0, !534, i64 8, !354, i64 16}
!2689 = !{!2688, !354, i64 16}
!2690 = !{!2688, !534, i64 8}
!2691 = !{!2688, !534, i64 0}
!2692 = !{!"p1 _ZTSN7openvdb5v13_04tree14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEE", !346, i64 0}
!2693 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEELb0EE", !2692, i64 0}
!2694 = !{!2693, !2692, i64 0}
!2695 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2693, i64 0}
!2696 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EEE", !2695, i64 0}
!2697 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2696, i64 0}
!2698 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_ELb1ELb1EE", !2697, i64 0}
!2699 = !{!"_ZTSSt10unique_ptrIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEESt14default_deleteISH_EE", !2698, i64 0}
!2700 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !2699, i64 0, !2692, i64 8}
!2701 = !{!2700, !2692, i64 8}
!2702 = !{!2692, !2692, i64 0}
!2703 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2408, i64 0, !1017, i64 8, !2692, i64 16, !2398, i64 24}
!2704 = !{!2703, !2408, i64 0}
!2705 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !2699, i64 0, !2692, i64 8}
!2706 = !{!2705, !2692, i64 8}
!2707 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !2420, i64 0, !1017, i64 8, !2692, i64 16, !2408, i64 24}
!2708 = !{!2707, !2420, i64 0}
!2709 = !{!"_ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !2683, i64 0, !2676, i64 8}
!2710 = !{!2709, !2676, i64 8}
!2711 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeIS7_EEEEEEEENS9_11OpWithIndexEEE", !346, i64 0}
!2712 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSD_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2399, i64 64, !2711, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2713 = !{!2712, !2711, i64 96}
!2714 = !{!2712, !874, i64 104}
!2715 = !{!2712, !354, i64 136}
!2716 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEELm1EEE", !336, i64 0}
!2717 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeISB_EEEEEEEENSD_11OpWithIndexEEEEE", !1051, i64 0, !2716, i64 32, !2711, i64 48, !354, i64 56}
!2718 = !{!2717, !354, i64 56}
!2719 = !{!2711, !2711, i64 0}
!2720 = !{i64 0, i64 8, !2702, i64 8, i64 8, !1018, i64 16, i64 8, !2403}
!2721 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS2_IKNS3_IS6_Lj5EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeISA_EEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2692, i64 0, !1017, i64 8, !2398, i64 16}
!2722 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2721, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2723 = !{!2722, !874, i64 112}
!2724 = !{i64 0, i64 8, !2413, i64 8, i64 8, !1018, i64 16, i64 8, !2702, i64 24, i64 8, !2403}
!2725 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_12InternalNodeINS7_8LeafNodeIdLj3EEELj4EEEE16initNodeChildrenINS8_IKNS9_ISC_Lj5EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeISG_EEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2703, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2726 = !{!2725, !874, i64 120}
!2727 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS3_IS6_Lj5EEEEEEEEEEENS8_11OpWithIndexEEE", !346, i64 0}
!2728 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE9NodeRangeENSC_11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2409, i64 64, !2727, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2729 = !{!2728, !2727, i64 96}
!2730 = !{!2728, !874, i64 104}
!2731 = !{!2728, !354, i64 136}
!2732 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEELm1EEE", !336, i64 0}
!2733 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_12InternalNodeINS5_8LeafNodeIdLj3EEELj4EEEE11NodeReducerINS5_14ReduceFilterOpINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS7_ISA_Lj5EEEEEEEEEEENSC_11OpWithIndexEEEEE", !1051, i64 0, !2732, i64 32, !2727, i64 48, !354, i64 56}
!2734 = !{!2733, !354, i64 56}
!2735 = !{!2727, !2727, i64 0}
!2736 = !{i64 0, i64 8, !2702, i64 8, i64 8, !1018, i64 16, i64 8, !2413}
!2737 = !{!"_ZTSZN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE16initNodeChildrenINS2_IKNS1_12InternalNodeIS4_Lj4EEEEENS1_14ReduceFilterOpINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS8_IS9_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRN3tbb6detail2d113blocked_rangeImEEE_", !2692, i64 0, !1017, i64 8, !2408, i64 16}
!2738 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIdLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2737, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2739 = !{!2738, !874, i64 112}
!2740 = !{i64 0, i64 8, !2429, i64 8, i64 8, !1018, i64 16, i64 8, !2702, i64 24, i64 8, !2413}
!2741 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree8NodeListIKNS7_8LeafNodeIdLj3EEEE16initNodeChildrenINS8_IKNS7_12InternalNodeISA_Lj4EEEEENS7_14ReduceFilterOpINS6_5tools14count_internal14MinMaxValuesOpINS7_4TreeINS7_8RootNodeINSE_ISF_Lj5EEEEEEEEEEEEEbRT_RKT0_bEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2707, i64 88, !874, i64 120, !878, i64 128, !869, i64 144}
!2742 = !{!2741, !874, i64 120}
!2743 = !{!"p1 _ZTSN7openvdb5v13_04tree8NodeListIKNS1_8LeafNodeIdLj3EEEE11NodeReducerINS0_5tools14count_internal14MinMaxValuesOpINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINSD_IS4_Lj4EEELj5EEEEEEEEENS6_11OpWithIndexEEE", !346, i64 0}
!2744 = !{!"_ZTSN3tbb6detail2d112start_reduceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE9NodeRangeENSA_11NodeReducerINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEKNS1_16auto_partitionerEEE", !873, i64 0, !2425, i64 64, !2743, i64 96, !874, i64 104, !878, i64 112, !869, i64 128, !354, i64 136}
!2745 = !{!2744, !2743, i64 96}
!2746 = !{!2744, !874, i64 104}
!2747 = !{!2744, !354, i64 136}
!2748 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEELm1EEE", !336, i64 0}
!2749 = !{!"_ZTSN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS5_8LeafNodeIdLj3EEEE11NodeReducerINS4_5tools14count_internal14MinMaxValuesOpINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINSH_IS8_Lj4EEELj5EEEEEEEEENSA_11OpWithIndexEEEEE", !1051, i64 0, !2748, i64 32, !2743, i64 48, !354, i64 56}
!2750 = !{!2749, !354, i64 56}
!2751 = !{!2743, !2743, i64 0}
!2752 = !{!689, !337, i64 68}
!2753 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE8DeepCopyIS6_EE", !693, i64 0, !693, i64 8}
!2754 = !{!2753, !693, i64 0}
!2755 = !{!2753, !693, i64 8}
!2756 = !{i64 0, i64 8, !761, i64 8, i64 8, !761}
!2757 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE8DeepCopyISC_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2753, i64 80, !874, i64 96, !878, i64 104, !869, i64 120}
!2758 = !{!2757, !874, i64 96}
!2759 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE8DeepCopyIS5_EE", !705, i64 0, !705, i64 8}
!2760 = !{!2759, !705, i64 0}
!2761 = !{!2759, !705, i64 8}
!2762 = !{i64 0, i64 8, !759, i64 8, i64 8, !759}
!2763 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE8DeepCopyISB_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2759, i64 80, !874, i64 96, !878, i64 104, !869, i64 120}
!2764 = !{!2763, !874, i64 96}
!2765 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !699, i64 80, !874, i64 88, !878, i64 96, !869, i64 112}
!2766 = !{!2765, !874, i64 88}
!2767 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE19VoxelizeActiveTilesE", !705, i64 0}
!2768 = !{!2767, !705, i64 0}
!2769 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE19VoxelizeActiveTilesEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2767, i64 80, !874, i64 88, !878, i64 96, !869, i64 112}
!2770 = !{!2769, !874, i64 88}
!2771 = !{!"_ZTSSt15_Deque_iteratorIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEERS7_PS7_E", !2201, i64 0, !2201, i64 8, !2201, i64 16, !2307, i64 24}
!2772 = !{!"_ZTSNSt11_Deque_baseIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEESaIS7_EE16_Deque_impl_dataE", !2307, i64 0, !343, i64 8, !2771, i64 16, !2771, i64 48}
!2773 = !{!2772, !2201, i64 48}
!2774 = !{!2771, !2307, i64 24}
!2775 = !{!2771, !2201, i64 0}
!2776 = !{!2771, !2201, i64 8}
!2777 = !{!2771, !2201, i64 16}
!2778 = !{!"p1 _ZTSSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEESaIS7_EE", !346, i64 0}
!2779 = !{!2778, !2778, i64 0}
!2780 = !{!777, !762, i64 40}
!2781 = !{!"_ZTSZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRN3tbb6detail2d113blocked_rangeImEEE0_", !781, i64 0, !1017, i64 8, !2778, i64 16}
!2782 = !{!2781, !781, i64 0}
!2783 = !{!2772, !2307, i64 0}
!2784 = !{!2772, !2307, i64 40}
!2785 = !{!2772, !2307, i64 72}
!2786 = !{!2772, !343, i64 8}
!2787 = !{!777, !343, i64 24}
!2788 = !{!777, !769, i64 56}
!2789 = !{i64 0, i64 8, !1018, i64 8, i64 8, !2779}
!2790 = !{!"_ZTSZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRN3tbb6detail2d113blocked_rangeImEEE_", !1017, i64 0, !2778, i64 8}
!2791 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerINS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2790, i64 88, !874, i64 104, !878, i64 112, !869, i64 128}
!2792 = !{!2791, !874, i64 104}
!2793 = !{i64 0, i64 8, !786, i64 8, i64 8, !1018, i64 16, i64 8, !2779}
!2794 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerINS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E0_KNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !2781, i64 88, !874, i64 112, !878, i64 120, !869, i64 136}
!2795 = !{!2794, !874, i64 112}
!2796 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_04tree11LeafManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESN_ILi2EEEE", !346, i64 0}
!2797 = !{!2796, !2796, i64 0}
!2798 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree11LeafManagerINS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEE", !873, i64 0, !846, i64 64, !777, i64 88, !874, i64 184, !878, i64 192, !869, i64 208}
!2799 = !{!2798, !874, i64 184}
!2800 = !{i64 0, i64 8, !402, i64 8, i64 8, !402, i64 16, i64 8, !402, i64 24, i64 8, !786}
!2801 = !{!"_ZTSSt10_Head_baseILm3EPN7openvdb5v13_04tree8RootNodeINS2_12InternalNodeINS4_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEELb0EE", !712, i64 0}
!2802 = !{!"_ZTSSt11_Tuple_implILm3EJPN7openvdb5v13_04tree8RootNodeINS2_12InternalNodeINS4_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEE", !2801, i64 0}
!2803 = !{!"_ZTSSt10_Head_baseILm2EPN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEELb0EE", !693, i64 0}
!2804 = !{!"_ZTSSt11_Tuple_implILm2EJPN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEPNS2_8RootNodeIS7_EEEE", !2802, i64 0, !2803, i64 8}
!2805 = !{!"_ZTSSt10_Head_baseILm1EPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEELb0EE", !705, i64 0}
!2806 = !{!"_ZTSSt11_Tuple_implILm1EJPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEPNS3_IS6_Lj5EEEPNS2_8RootNodeIS8_EEEE", !2804, i64 0, !2805, i64 16}
!2807 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree8LeafNodeIdLj3EEELb0EE", !701, i64 0}
!2808 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree8LeafNodeIdLj3EEEPNS2_12InternalNodeIS4_Lj4EEEPNS6_IS7_Lj5EEEPNS2_8RootNodeIS9_EEEE", !2806, i64 0, !2807, i64 24}
!2809 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree8LeafNodeIdLj3EEEPNS2_12InternalNodeIS4_Lj4EEEPNS6_IS7_Lj5EEEPNS2_8RootNodeIS9_EEEE", !2808, i64 0}
!2810 = !{!"_ZTSN7openvdb5v13_09TupleListIJPNS0_4tree8LeafNodeIdLj3EEEPNS2_12InternalNodeIS4_Lj4EEEPNS6_IS7_Lj5EEEPNS2_8RootNodeIS9_EEEEE", !2809, i64 0}
!2811 = !{!"_ZTSN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE", !754, i64 0, !756, i64 16, !1542, i64 24, !2810, i64 64}
!2812 = !{!"_ZTSN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE6CookOpINSD_12ProlongateOpEEE", !2811, i64 0}
!2813 = !{!"_ZTSN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools12MultiResGridISF_E6CookOpINSK_12ProlongateOpEEEKNS1_16auto_partitionerEEE", !873, i64 0, !782, i64 64, !2812, i64 96, !874, i64 192, !878, i64 200, !869, i64 216}
!2814 = !{!2813, !874, i64 192}
!2815 = !{!782, !781, i64 24}
!2816 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRangeELm8EEE", !336, i64 0}
!2817 = !{!"_ZTSN3tbb6detail2d112range_vectorIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRangeELh8EEE", !336, i64 0, !336, i64 1, !336, i64 2, !336, i64 3, !2816, i64 16}
!2818 = !{!2817, !336, i64 2}
!2819 = !{!2817, !336, i64 0}
!2820 = !{!2817, !336, i64 1}
!2821 = !{!"_ZTSN7openvdb5v13_05tools12MultiResGridINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE6CookOpINSD_10RestrictOpEEE", !2811, i64 0}
!2822 = !{!"_ZTSN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools12MultiResGridISF_E6CookOpINSK_10RestrictOpEEEKNS1_16auto_partitionerEEE", !873, i64 0, !782, i64 64, !2821, i64 96, !874, i64 192, !878, i64 200, !869, i64 216}
!2823 = !{!2822, !874, i64 192}
!2824 = !{!731, !712, i64 0}
!2825 = !{!"p1 _ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISJ_EEEE", !346, i64 0}
!2826 = !{!"_ZTSN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISK_EEEESK_EE", !2825, i64 0, !343, i64 8, !792, i64 16}
!2827 = !{!2826, !792, i64 16}
!2828 = !{!2826, !2825, i64 0}
!2829 = !{!2826, !343, i64 8}
!2830 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELm1EEE", !336, i64 0}
!2831 = !{!"_ZTSN3tbb6detail2d111ets_elementIN7openvdb5v13_04tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEE", !2830, i64 0, !354, i64 1232}
!2832 = !{!2831, !354, i64 1232}
!2833 = !{!794, !794, i64 0}
!2834 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d06paddedINS1_2d111ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEEE", !792, i64 0}
!2835 = !{!2834, !792, i64 0}
!2836 = !{!"p2 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEEE", !546, i64 0}
!2837 = !{!"_ZTSZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIN7openvdb5v13_04tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS1_23cache_aligned_allocatorISJ_EEE14create_segmentEPSt6atomicIPSJ_EmmEUlvE0_", !2836, i64 0, !2825, i64 8, !819, i64 16}
!2838 = !{!"_ZTSN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIN7openvdb5v13_04tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELm128EEENS3_23cache_aligned_allocatorISK_EEE14create_segmentEPSt6atomicIPSK_EmmEUlvE0_EE", !2837, i64 0, !354, i64 24}
!2839 = !{!2838, !354, i64 24}
!2840 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS2_INS2_INS3_IdLj3EEELj4EEELj5EEEEE", !693, i64 0, !660, i64 8, !1095, i64 16, !1095, i64 24}
!2841 = !{!2840, !693, i64 0}
!2842 = !{!2840, !660, i64 8}
!2843 = !{i64 0, i64 8, !761, i64 8, i64 8, !1617, i64 16, i64 8, !1104, i64 24, i64 8, !1104}
!2844 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EEELj5EE13TopologyCopy2INS8_INS8_INS9_IdLj3EEELj4EEELj5EEEEEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2840, i64 80, !874, i64 112, !878, i64 120, !869, i64 136}
!2845 = !{!2844, !874, i64 112}
!2846 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EE13TopologyCopy2INS2_INS3_IdLj3EEELj4EEEEE", !705, i64 0, !1623, i64 8, !1095, i64 16, !1095, i64 24}
!2847 = !{!2846, !705, i64 0}
!2848 = !{!2846, !1623, i64 8}
!2849 = !{i64 0, i64 8, !759, i64 8, i64 8, !1627, i64 16, i64 8, !1104, i64 24, i64 8, !1104}
!2850 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeINS6_9ValueMaskELj3EEELj4EE13TopologyCopy2INS8_INS9_IdLj3EEELj4EEEEEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2846, i64 80, !874, i64 112, !878, i64 120, !869, i64 136}
!2851 = !{!2850, !874, i64 112}
!2852 = !{!802, !802, i64 0}
!2853 = !{!"_ZTSN3tbb6detail2d19start_forIN7openvdb5v13_04tree11LeafManagerIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeINS4_9ValueMaskELj3EEELj4EEELj5EEEEEEEE9LeafRangeENS4_5tools12MultiResGridINS7_INS8_INS9_INS9_INSA_IdLj3EEELj4EEELj5EEEEEEEE6MaskOpEKNS1_16auto_partitionerEEE", !873, i64 0, !645, i64 64, !803, i64 96, !874, i64 104, !878, i64 112, !869, i64 128}
!2854 = !{!2853, !874, i64 104}
!2855 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyCopy1IS6_EE", !693, i64 0, !693, i64 8, !725, i64 16}
!2856 = !{!2855, !693, i64 0}
!2857 = !{!2855, !693, i64 8}
!2858 = !{!725, !725, i64 0}
!2859 = !{i64 0, i64 8, !761, i64 8, i64 8, !761, i64 16, i64 8, !2858}
!2860 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS8_INS7_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyCopy1ISC_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2855, i64 80, !874, i64 104, !878, i64 112, !869, i64 128}
!2861 = !{!2860, !874, i64 104}
!2862 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE13TopologyCopy1IS5_EE", !705, i64 0, !705, i64 8, !725, i64 16}
!2863 = !{!2862, !705, i64 0}
!2864 = !{!2862, !705, i64 8}
!2865 = !{i64 0, i64 8, !759, i64 8, i64 8, !759, i64 16, i64 8, !2858}
!2866 = !{!"_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIjEEN7openvdb5v13_04tree12InternalNodeINS7_8LeafNodeIdLj3EEELj4EE13TopologyCopy1ISB_EEKNS1_16auto_partitionerEEE", !873, i64 0, !431, i64 64, !2862, i64 80, !874, i64 104, !878, i64 112, !869, i64 128}
!2867 = !{!2866, !874, i64 104}
!2868 = !{!"_ZTSN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE13TopologyUnionIS6_EE", !693, i64 0, !693, i64 8, !354, i64 16}
!2869 = !{!2868, !693, i64 0}
!2870 = !{!2868, !693, i64 8}
!2871 = !{!2868, !354, i64 16}
end_hunk_22
