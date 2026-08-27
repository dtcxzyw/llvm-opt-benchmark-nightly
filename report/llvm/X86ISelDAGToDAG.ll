Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelDAGToDAG?download=true
inline.NumInlined: 6338
inline.NumDeleted: 1425
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_115X86DAGToDAGISel17PreprocessISelDAGEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.01152.01449, i64 64
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !600
  store i64 %i.ur, ptr %71, align 8, !tbaa !600
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.01152.01449, i64 60
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !601
  store i32 %i.ut, ptr %i.k, align 8, !tbaa !446
  %i.uu = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.01152.01449, i64 32 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !604
  %i.ux = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.uu, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.up, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.uw) #22 ; 2 uses
  %.fca.0.extract237 = extractvalue { ptr, i32 } %i.ux, 0 ; 2 uses
  %.fca.1.extract238 = extractvalue { ptr, i32 } %i.ux, 1 ; 2 uses
  %i.uy = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.uz = load ptr, ptr %i.uv, align 8, !tbaa !604
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 40
  %i.vb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.uy, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.up, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.va) #22 ; 2 uses
  %.fca.0.extract219 = extractvalue { ptr, i32 } %i.vb, 0 ; 2 uses
  %.fca.1.extract220 = extractvalue { ptr, i32 } %i.vb, 1 ; 2 uses
  %i.vc = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 360
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !605
  %i.vf = icmp sgt i32 %i.ve, 1
  br i1 %i.vf, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.vg = zext nneg i16 %i.up to i64              ; 2 uses
  %i.vh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.vg
  %i.vi = getelementptr i8, ptr %i.vh, i64 -2
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !465
  %i.vk = zext i16 %i.vj to i64
  %i.vl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.vk
  %i.vm = getelementptr i8, ptr %i.vl, i64 -16
  %.sroa.0.0.copyload.i.i.i.i806 = load i64, ptr %i.vm, align 16
  %i.vn = trunc i64 %.sroa.0.0.copyload.i.i.i.i806 to i32 ; 2 uses
  %i.vo = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.vn)
  %i.vp = icmp eq i32 %i.vo, 1
  br i1 %i.vp, label %.split.i.i.i, label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

.split.i.i.i:                                     ; preds = %bb.ck
  %i.vq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.vn, i1 true) ; 2 uses
  %i.vr = icmp samesign ult i32 %i.vq, 10
  br i1 %i.vr, label %switch.lookup.i.i.i, label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.vq to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit: ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %bb.ck
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %bb.ck ]
  %i.vs = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.vg
  %i.vt = getelementptr i8, ptr %i.vs, i64 -2
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !608
  %.sroa.0.0.extract.trunc.i.i.i = zext i16 %i.vu to i32
  %i.vv = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i) ; 3 uses
  %i.vw = load ptr, ptr %i.a, align 8, !tbaa !329
  store ptr %.fca.0.extract237, ptr %72, align 8, !tbaa !452
  store i32 %.fca.1.extract238, ptr %.sroa.7245.0..sroa_idx, align 8, !tbaa !453
  %i.vx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.vw, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.vv, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %72) #22 ; 2 uses
  %.fca.0.extract204 = extractvalue { ptr, i32 } %i.vx, 0
  %.fca.1.extract205 = extractvalue { ptr, i32 } %i.vx, 1
  %i.vy = load ptr, ptr %i.a, align 8, !tbaa !329
  store ptr %.fca.0.extract219, ptr %73, align 8, !tbaa !452
  store i32 %.fca.1.extract220, ptr %.sroa.7227.0..sroa_idx, align 8, !tbaa !453
  %i.vz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.vy, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.vv, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %73) #22 ; 2 uses
  %.fca.0.extract194 = extractvalue { ptr, i32 } %i.vz, 0
  %.fca.1.extract195 = extractvalue { ptr, i32 } %i.vz, 1
  %i.wa = load i32, ptr %i.bm, align 8, !tbaa !463
  switch i32 %i.wa, label %bb.cl [
    i32 636, label %bb.cp
    i32 635, label %bb.cm
    i32 676, label %bb.cn
    i32 695, label %bb.co
  ]

bb.cl:                                            ; preds = %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  unreachable

bb.cm:                                            ; preds = %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  br label %bb.cp

bb.cn:                                            ; preds = %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  br label %bb.cp

bb.co:                                            ; preds = %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit, %bb.co, %bb.cn, %bb.cm
  %.0634 = phi i32 [ 195, %bb.co ], [ 193, %bb.cm ], [ 194, %bb.cn ], [ 547, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ]
  %i.wb = load ptr, ptr %i.a, align 8, !tbaa !329
  store ptr %.fca.0.extract204, ptr %74, align 8, !tbaa !452
  store i32 %.fca.1.extract205, ptr %.sroa.7245.0..sroa_idx246, align 8, !tbaa !453
  store ptr %.fca.0.extract194, ptr %75, align 8, !tbaa !452
  store i32 %.fca.1.extract195, ptr %.sroa.7227.0..sroa_idx228, align 8, !tbaa !453
  %i.wc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.wb, i32 noundef %.0634, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.vv, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %74, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %75) #22 ; 2 uses
  %.fca.0.extract183 = extractvalue { ptr, i32 } %i.wc, 0
  %.fca.1.extract184 = extractvalue { ptr, i32 } %i.wc, 1
  %i.wd = load ptr, ptr %i.a, align 8, !tbaa !329
  store ptr %.fca.0.extract183, ptr %76, align 8, !tbaa !452
  store i32 %.fca.1.extract184, ptr %.sroa.10980.0..sroa_idx, align 8, !tbaa !453
  %i.we = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.wd, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.up, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %76) #22
  br label %.critedge20

bb.cq:                                            ; preds = %bb.cj
  %i.wf = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.wg = load i32, ptr %i.bm, align 8, !tbaa !463
  store ptr %.fca.0.extract237, ptr %77, align 8, !tbaa !452
  store i32 %.fca.1.extract238, ptr %.sroa.7245.0..sroa_idx248, align 8, !tbaa !453
  store ptr %.fca.0.extract219, ptr %78, align 8, !tbaa !452
  store i32 %.fca.1.extract220, ptr %.sroa.7227.0..sroa_idx230, align 8, !tbaa !453
  %i.wh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.wf, i32 noundef %i.wg, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %i.up, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %77, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %78) #22
  br label %.critedge20

.critedge20:                                      ; preds = %bb.cp, %bb.cq
  %.pn = phi { ptr, i32 } [ %i.we, %bb.cp ], [ %i.wh, %bb.cq ] ; 2 uses
  %.sroa.10980.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0978.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.wi = load ptr, ptr %i.a, align 8, !tbaa !329 ; 2 uses
  store ptr %.sroa.0978.0, ptr %79, align 8, !tbaa !452
  store i32 %.sroa.10980.0, ptr %.sroa.10980.0..sroa_idx981, align 8, !tbaa !453
  %i.wj = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.wi, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %71, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract159 = extractvalue { ptr, i32 } %i.wj, 0
  %.fca.1.extract160 = extractvalue { ptr, i32 } %i.wj, 1
  store ptr %.fca.0.extract159, ptr %80, align 8
  store i32 %.fca.1.extract160, ptr %.sroa.2162.0..sroa_idx, align 8
  %i.wk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.wi, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %71, i16 %.sroa.0.0.copyload.i.i803, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %79, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %80) #22 ; 2 uses
  %.fca.0.extract155 = extractvalue { ptr, i32 } %i.wk, 0
  %.fca.1.extract156 = extractvalue { ptr, i32 } %i.wk, 1
  %i.wl = load ptr, ptr %.sroa.01152.5, align 8, !tbaa !602
  %i.wm = load ptr, ptr %i.a, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.wm, ptr nonnull %i.bl, i32 0, ptr %.fca.0.extract155, i32 %.fca.1.extract156) #22
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !462
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  br label %.critedge647

_ZL7needBWIN4llvm3MVTE.exit.thread1332:           ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit, %.backedge.i.peel1486, %bb.ae, %.lr.ph.preheader, %.lr.ph.peel.next, %.lr.ph.peel.next1467, %.lr.ph.peel.next1474, %bb.f, %bb.ci, %bb.ac, %._crit_edge, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %.split1354, %.split1353, %.thread1350, %_ZNK4llvm3EVT8isVectorEv.exit783, %_ZNK4llvm3EVT8isVectorEv.exit, %bb.bc, %.critedge
  %.61525 = phi i1 [ %.01452, %.lr.ph.preheader ], [ %.6, %bb.ci ], [ %.6, %bb.ac ], [ %.6, %._crit_edge ], [ %.6, %bb.ad ], [ %.6, %_ZNK4llvm3MVT14is128BitVectorEv.exit ], [ %.6, %bb.z ], [ %.6, %bb.y ], [ %.6, %bb.x ], [ %.6, %bb.w ], [ %.6, %.split1354 ], [ %.6, %.split1353 ], [ %.6, %.thread1350 ], [ %.6, %_ZNK4llvm3EVT8isVectorEv.exit783 ], [ %.6, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.6, %bb.bc ], [ %.6, %.critedge ], [ %.01452, %bb.f ], [ %.6, %bb.ae ], [ %.01452, %.lr.ph.peel.next ], [ %.01452, %.lr.ph.peel.next1467 ], [ %.01452, %.lr.ph.peel.next1474 ], [ %.01452, %.backedge.i.peel1486 ] ; 31 uses
  %.sroa.01152.51524 = phi ptr [ %i.bk, %.lr.ph.preheader ], [ %.sroa.01152.5, %bb.ci ], [ %.sroa.01152.5, %bb.ac ], [ %.sroa.01152.5, %._crit_edge ], [ %.sroa.01152.5, %bb.ad ], [ %.sroa.01152.5, %_ZNK4llvm3MVT14is128BitVectorEv.exit ], [ %.sroa.01152.5, %bb.z ], [ %.sroa.01152.5, %bb.y ], [ %.sroa.01152.5, %bb.x ], [ %.sroa.01152.5, %bb.w ], [ %.sroa.01152.5, %.split1354 ], [ %.sroa.01152.5, %.split1353 ], [ %.sroa.01152.5, %.thread1350 ], [ %.sroa.01152.5, %_ZNK4llvm3EVT8isVectorEv.exit783 ], [ %.sroa.01152.5, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.01152.5, %bb.bc ], [ %.sroa.01152.5, %.critedge ], [ %i.bk, %bb.f ], [ %.sroa.01152.5, %bb.ae ], [ %i.bk, %.lr.ph.peel.next ], [ %i.bk, %.lr.ph.peel.next1467 ], [ %i.bk, %.lr.ph.peel.next1474 ], [ %i.bk, %.backedge.i.peel1486 ] ; 34 uses
  %i.wp = load i32, ptr %i.au, align 8, !tbaa !623
  %.not640 = icmp eq i32 %i.wp, 0
  br i1 %.not640, label %_ZL7needBWIN4llvm3MVTE.exit.thread1332.thread-pre-split_crit_edge, label %bb.cr

_ZL7needBWIN4llvm3MVTE.exit.thread1332.thread-pre-split_crit_edge: ; preds = %_ZL7needBWIN4llvm3MVTE.exit.thread1332
  %.pr1362.pre = load i32, ptr %i.bm, align 8, !tbaa !463
  br label %thread-pre-split

bb.cr:                                            ; preds = %_ZL7needBWIN4llvm3MVTE.exit.thread1332
  %i.wq = load ptr, ptr %i.f, align 8, !tbaa !150 ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 557
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !624, !range !18, !noundef !19
  %i.wt = trunc nuw i8 %i.ws to i1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 552
  %i.wv = load i8, ptr %i.wu, align 8, !range !18
  %i.ww = trunc nuw i8 %i.wv to i1
  %i.wx = select i1 %i.wt, i1 true, i1 %i.ww
  %.pr1362.pre1496 = load i32, ptr %i.bm, align 8, !tbaa !463 ; 3 uses
  br i1 %i.wx, label %thread-pre-split, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  switch i32 %.pr1362.pre1496, label %thread-pre-split [
    i32 563, label %bb.ct
    i32 825, label %bb.cv
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wq, i64 549
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !625, !range !18, !noundef !19
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %.critedge647, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wq, i64 547
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !626, !range !18, !noundef !19
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %.critedge647, label %bb.cx

bb.cv:                                            ; preds = %bb.cs
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wq, i64 522
  %i.xf = load i8, ptr %i.xe, align 2, !tbaa !472, !range !18, !noundef !19
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.val650 = load ptr, ptr %i.av, align 8, !tbaa !627
  %i.xh = call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %.val650) #22
  %.pr1362.pre1497 = load i32, ptr %i.bm, align 8, !tbaa !463 ; 2 uses
  br i1 %i.xh, label %thread-pre-split, label %._crit_edge1493

._crit_edge1493:                                  ; preds = %bb.cw
  %i.xi = icmp eq i32 %.pr1362.pre1497, 563
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge1493, %bb.cv, %bb.cu
  %i.xj = phi i1 [ %i.xi, %._crit_edge1493 ], [ false, %bb.cv ], [ true, %bb.cu ]
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.01152.01449, i64 32 ; 3 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !604 ; 4 uses
  %.sroa.0960.0.copyload = load ptr, ptr %i.xl, align 8, !tbaa !452 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 40
  %.sroa.0148.0.copyload = load ptr, ptr %i.xm, align 8, !tbaa !452 ; 18 uses
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xl, i64 48
  %.sroa.5149.0.copyload = load i32, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !453
  %i.xn = icmp eq ptr %.sroa.0148.0.copyload, %.sroa.0960.0.copyload
  br i1 %i.xn, label %.critedge647, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0148.0.copyload, i64 56 ; 2 uses
  %.sroa.018.022.i.i.i809 = load ptr, ptr %i.xo, align 8, !tbaa !606 ; 3 uses
  %.not23.i.i.i810 = icmp eq ptr %.sroa.018.022.i.i.i809, null
  br i1 %.not23.i.i.i810, label %.critedge647, label %.lr.ph.i.i.i811

bb.cz:                                            ; preds = %.lr.ph.i.i.i811
  %.214.i.i.i814 = select i1 %i.xs, i32 %.01224.i.i.i813, i32 0 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i812, i64 32
  %.sroa.018.0.i.i.i815 = load ptr, ptr %i.xp, align 8, !tbaa !606 ; 2 uses
  %.not.i.i.i816 = icmp eq ptr %.sroa.018.0.i.i.i815, null
  br i1 %.not.i.i.i816, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i811

.lr.ph.i.i.i811:                                  ; preds = %bb.cy, %bb.cz
  %.sroa.018.025.i.i.i812 = phi ptr [ %.sroa.018.0.i.i.i815, %bb.cz ], [ %.sroa.018.022.i.i.i809, %bb.cy ] ; 2 uses
  %.01224.i.i.i813 = phi i32 [ %.214.i.i.i814, %bb.cz ], [ 1, %bb.cy ] ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i812, i64 8
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !443
  %i.xs = icmp ne i32 %i.xr, %.sroa.5149.0.copyload ; 2 uses
  %i.xt = icmp ne i32 %.01224.i.i.i813, 0
  %cond.i.i.i = select i1 %i.xs, i1 true, i1 %i.xt
  br i1 %cond.i.i.i, label %bb.cz, label %.critedge647

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.cz
  %i.xu = icmp eq i32 %.214.i.i.i814, 0
  br i1 %i.xu, label %bb.da, label %.critedge647

bb.da:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0148.0.copyload, i64 24
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !463
  %i.xx = icmp ne i32 %i.xw, 316
  %.not139.i = icmp eq ptr %.sroa.0148.0.copyload, null
  %.not.i817 = or i1 %.not139.i, %i.xx
  br i1 %.not.i817, label %.critedge647, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0148.0.copyload, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xy, align 8
  %i.xz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.ya = inttoptr i64 %i.xz to ptr
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 36
  %i.yc = load i16, ptr %i.yb, align 4
  %i.yd = and i16 %i.yc, 3840
  %.not.i.i818 = icmp eq i16 %i.yd, 0
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0148.0.copyload, i64 32 ; 2 uses
  %i.yf = load i8, ptr %i.ye, align 8
  %i.yg = and i8 %i.yf, 8
  %.not1.i.i = icmp eq i8 %i.yg, 0
  %i.yh = select i1 %.not.i.i818, i1 %.not1.i.i, i1 false
  br i1 %i.yh, label %bb.dc, label %.critedge647

bb.dc:                                            ; preds = %bb.db
  %i.yi = load i16, ptr %i.ye, align 8
  %i.yj = and i16 %i.yi, 3968
  %or.cond.i819 = icmp eq i16 %i.yj, 0
  br i1 %or.cond.i819, label %.lr.ph.i.i47.i, label %.critedge647

bb.dd:                                            ; preds = %.lr.ph.i.i47.i
  %.214.i.i50.i = select i1 %i.yn, i32 %.01224.i.i49.i, i32 0 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i48.i, i64 32
  %.sroa.018.0.i.i54.i = load ptr, ptr %i.yk, align 8, !tbaa !606 ; 2 uses
  %.not.i.i55.i = icmp eq ptr %.sroa.018.0.i.i54.i, null
  br i1 %.not.i.i55.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit56.i, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %bb.dc, %bb.dd
  %.sroa.018.025.i.i48.i = phi ptr [ %.sroa.018.0.i.i54.i, %bb.dd ], [ %.sroa.018.022.i.i.i809, %bb.dc ] ; 2 uses
  %.01224.i.i49.i = phi i32 [ %.214.i.i50.i, %bb.dd ], [ 1, %bb.dc ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i48.i, i64 8
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !443
  %i.yn = icmp ne i32 %i.ym, 1                    ; 2 uses
  %i.yo = icmp ne i32 %.01224.i.i49.i, 0
  %cond.i.i51.i = select i1 %i.yn, i1 true, i1 %i.yo
  br i1 %cond.i.i51.i, label %bb.dd, label %.critedge647

_ZNK4llvm7SDValue9hasOneUseEv.exit56.i:           ; preds = %bb.dd
  %i.yp = icmp eq i32 %.214.i.i50.i, 0
  br i1 %i.yp, label %.preheader.i, label %.critedge647

.preheader.i:                                     ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit56.i
  br i1 %i.xj, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0960.0.copyload, i64 24
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !463
  %.not43.us152.i = icmp eq i32 %i.yr, 333
  br i1 %.not43.us152.i, label %.critedge.i, label %.lr.ph153.i.preheader

.lr.ph153.i.preheader:                            ; preds = %.lr.ph.i
  %97 = trunc i64 %.sroa.10.0.copyload to i32
  br label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.lr.ph153.i.preheader, %bb.df
  %.sroa.10.2 = phi i32 [ %.sroa.10.0.copyload969, %bb.df ], [ %97, %.lr.ph153.i.preheader ]
  %i.ys = phi ptr [ %.sroa.0960.0.copyload965, %bb.df ], [ %.sroa.0960.0.copyload, %.lr.ph153.i.preheader ] ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 56
  %.sroa.018.022.i.i57.us.i = load ptr, ptr %i.yt, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i58.us.i = icmp eq ptr %.sroa.018.022.i.i57.us.i, null
  br i1 %.not23.i.i58.us.i, label %.critedge647, label %.lr.ph.i.i59.us.i

.lr.ph.i.i59.us.i:                                ; preds = %.lr.ph153.i, %bb.de
  %.sroa.018.025.i.i60.us.i = phi ptr [ %.sroa.018.0.i.i66.us.i, %bb.de ], [ %.sroa.018.022.i.i57.us.i, %.lr.ph153.i ] ; 2 uses
  %.01224.i.i61.us.i = phi i32 [ %.214.i.i62.us.i, %bb.de ], [ 1, %.lr.ph153.i ] ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i60.us.i, i64 8
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !443
  %i.yw = icmp ne i32 %i.yv, %.sroa.10.2          ; 2 uses
  %i.yx = icmp ne i32 %.01224.i.i61.us.i, 0
  %cond.i.i63.us.i = select i1 %i.yw, i1 true, i1 %i.yx
  br i1 %cond.i.i63.us.i, label %bb.de, label %.critedge647

bb.de:                                            ; preds = %.lr.ph.i.i59.us.i
  %.214.i.i62.us.i = select i1 %i.yw, i32 %.01224.i.i61.us.i, i32 0 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i60.us.i, i64 32
  %.sroa.018.0.i.i66.us.i = load ptr, ptr %i.yy, align 8, !tbaa !606 ; 2 uses
  %.not.i.i67.us.i = icmp eq ptr %.sroa.018.0.i.i66.us.i, null
  br i1 %.not.i.i67.us.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit68.us.i, label %.lr.ph.i.i59.us.i

_ZNK4llvm7SDValue9hasOneUseEv.exit68.us.i:        ; preds = %bb.de
  %i.yz = icmp eq i32 %.214.i.i62.us.i, 0
  br i1 %i.yz, label %bb.df, label %.critedge647

bb.df:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit68.us.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.ys, i64 40
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !604 ; 2 uses
  %.sroa.0960.0.copyload965 = load ptr, ptr %i.zb, align 8, !tbaa !452 ; 3 uses
  %.sroa.10.0..sroa_idx968 = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.sroa.10.0.copyload969 = load i32, ptr %.sroa.10.0..sroa_idx968, align 8, !tbaa !453
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0960.0.copyload965, i64 24
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !463
  %.not43.us.i = icmp eq i32 %i.zd, 333
  br i1 %.not43.us.i, label %.critedge.i, label %.lr.ph153.i

.critedge.i:                                      ; preds = %bb.df, %.lr.ph.i, %.preheader.i
  %.sroa.0960.0 = phi ptr [ %.sroa.0960.0.copyload, %.lr.ph.i ], [ %.sroa.0960.0.copyload, %.preheader.i ], [ %.sroa.0960.0.copyload965, %bb.df ] ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.0960.0, i64 64
  %i.zf = load i16, ptr %i.ze, align 8, !tbaa !628
  %.not44154.i = icmp eq i16 %i.zf, 0
  br i1 %.not44154.i, label %.critedge647, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0960.0, i64 24
  %.pre1495 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !463
  switch i32 %.pre1495, label %.critedge647 [
    i32 333, label %.lr.ph155.i.jt51.preheader
    i32 51, label %.lr.ph155.i.jt51.preheader
    i32 316, label %.lr.ph155.i.jt51.preheader
  ]

.lr.ph155.i.jt51.preheader:                       ; preds = %.lr.ph155.i, %.lr.ph155.i, %.lr.ph155.i
  br label %.lr.ph155.i.jt51

.lr.ph155.i.jt51:                                 ; preds = %.lr.ph155.i.jt51.preheader, %bb.dp
  %i.zg = phi ptr [ %i.aaf, %bb.dp ], [ %.sroa.0960.0, %.lr.ph155.i.jt51.preheader ] ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 40 ; 4 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !604 ; 3 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !442 ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %.sroa.0148.0.copyload
  br i1 %i.zk, label %_ZL12isCalleeLoadN4llvm7SDValueERS0_b.exit, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph155.i.jt51
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 24
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !463
  %i.zn = icmp eq i32 %i.zm, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  br i1 %i.zn, label %bb.dh, label %.sink.split.i

bb.dh:                                            ; preds = %bb.dg
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !442
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 56
  %.sroa.018.022.i.i71.i = load ptr, ptr %i.zp, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i72.i = icmp eq ptr %.sroa.018.022.i.i71.i, null
  br i1 %.not23.i.i72.i, label %.sink.split.i, label %.lr.ph.i.i73.i

bb.di:                                            ; preds = %.lr.ph.i.i73.i
  %.214.i.i76.i = select i1 %i.zt, i32 %.01224.i.i75.i, i32 0 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i74.i, i64 32
  %.sroa.018.0.i.i80.i = load ptr, ptr %i.zq, align 8, !tbaa !606 ; 2 uses
  %.not.i.i81.i = icmp eq ptr %.sroa.018.0.i.i80.i, null
  br i1 %.not.i.i81.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit82.i, label %.lr.ph.i.i73.i

.lr.ph.i.i73.i:                                   ; preds = %bb.dh, %bb.di
  %.sroa.018.025.i.i74.i = phi ptr [ %.sroa.018.0.i.i80.i, %bb.di ], [ %.sroa.018.022.i.i71.i, %bb.dh ] ; 2 uses
  %.01224.i.i75.i = phi i32 [ %.214.i.i76.i, %bb.di ], [ 1, %bb.dh ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i74.i, i64 8
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !443
  %i.zt = icmp ne i32 %i.zs, 0                    ; 2 uses
  %i.zu = icmp ne i32 %.01224.i.i75.i, 0
  %cond.i.i77.i = select i1 %i.zt, i1 true, i1 %i.zu
  br i1 %cond.i.i77.i, label %bb.di, label %.sink.split.i

_ZNK4llvm7SDValue9hasOneUseEv.exit82.i:           ; preds = %bb.di
  %i.zv = icmp eq i32 %.214.i.i76.i, 0
  br i1 %i.zv, label %bb.dj, label %.sink.split.i

bb.dj:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit82.i
  store ptr %.sroa.0148.0.copyload, ptr %15, align 8
  store i32 1, ptr %.sroa.212.0..sroa_idx.i, align 8
  %i.zw = load ptr, ptr %i.zi, align 8, !tbaa !442
  %i.zx = call noundef zeroext i1 @_ZNK4llvm7SDValue11isOperandOfEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef %i.zw) #22
  br i1 %i.zx, label %bb.dk, label %.sink.split.i

bb.dk:                                            ; preds = %bb.dj
  %.sroa.018.022.i.i87.i = load ptr, ptr %i.xo, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i88.i = icmp eq ptr %.sroa.018.022.i.i87.i, null
  br i1 %.not23.i.i88.i, label %.sink.split.i, label %.lr.ph.i.i89.i

bb.dl:                                            ; preds = %.lr.ph.i.i89.i
  %.214.i.i92.i = select i1 %i.aab, i32 %.01224.i.i91.i, i32 0 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i90.i, i64 32
  %.sroa.018.0.i.i96.i = load ptr, ptr %i.zy, align 8, !tbaa !606 ; 2 uses
  %.not.i.i97.i = icmp eq ptr %.sroa.018.0.i.i96.i, null
  br i1 %.not.i.i97.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit98.i, label %.lr.ph.i.i89.i

.lr.ph.i.i89.i:                                   ; preds = %bb.dk, %bb.dl
  %.sroa.018.025.i.i90.i = phi ptr [ %.sroa.018.0.i.i96.i, %bb.dl ], [ %.sroa.018.022.i.i87.i, %bb.dk ] ; 2 uses
  %.01224.i.i91.i = phi i32 [ %.214.i.i92.i, %bb.dl ], [ 1, %bb.dk ] ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i90.i, i64 8
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !443
  %i.aab = icmp ne i32 %i.aaa, 1                  ; 2 uses
  %i.aac = icmp ne i32 %.01224.i.i91.i, 0
  %cond.i.i93.i = select i1 %i.aab, i1 true, i1 %i.aac
  br i1 %cond.i.i93.i, label %bb.dl, label %.sink.split.i

_ZNK4llvm7SDValue9hasOneUseEv.exit98.i:           ; preds = %bb.dl
  %i.aad = icmp eq i32 %.214.i.i92.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %i.aad, label %_ZL12isCalleeLoadN4llvm7SDValueERS0_b.exit, label %bb.dm

.sink.split.i:                                    ; preds = %.lr.ph.i.i73.i, %.lr.ph.i.i89.i, %bb.dk, %bb.dj, %_ZNK4llvm7SDValue9hasOneUseEv.exit82.i, %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit98.i
  %i.aae = load ptr, ptr %i.zh, align 8, !tbaa !604
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !442 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !463
  %i.aai = icmp eq i32 %i.aah, 51
  br i1 %i.aai, label %bb.dn, label %.critedge647

bb.dn:                                            ; preds = %bb.dm
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 56
  %.sroa.018.022.i.i101.i = load ptr, ptr %i.aaj, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i102.i = icmp eq ptr %.sroa.018.022.i.i101.i, null
  br i1 %.not23.i.i102.i, label %.critedge647, label %.lr.ph.i.i103.i

bb.do:                                            ; preds = %.lr.ph.i.i103.i
  %.214.i.i106.i = select i1 %i.aan, i32 %.01224.i.i105.i, i32 0 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i104.i, i64 32
  %.sroa.018.0.i.i110.i = load ptr, ptr %i.aak, align 8, !tbaa !606 ; 2 uses
  %.not.i.i111.i = icmp eq ptr %.sroa.018.0.i.i110.i, null
  br i1 %.not.i.i111.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit112.i, label %.lr.ph.i.i103.i

.lr.ph.i.i103.i:                                  ; preds = %bb.dn, %bb.do
  %.sroa.018.025.i.i104.i = phi ptr [ %.sroa.018.0.i.i110.i, %bb.do ], [ %.sroa.018.022.i.i101.i, %bb.dn ] ; 2 uses
  %.01224.i.i105.i = phi i32 [ %.214.i.i106.i, %bb.do ], [ 1, %bb.dn ] ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i104.i, i64 8
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !443
  %i.aan = icmp ne i32 %i.aam, 0                  ; 2 uses
  %i.aao = icmp ne i32 %.01224.i.i105.i, 0
  %cond.i.i107.i = select i1 %i.aan, i1 true, i1 %i.aao
  br i1 %cond.i.i107.i, label %bb.do, label %.critedge647

_ZNK4llvm7SDValue9hasOneUseEv.exit112.i:          ; preds = %bb.do
  %i.aap = icmp eq i32 %.214.i.i106.i, 0
  br i1 %i.aap, label %bb.dp, label %.critedge647

bb.dp:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit112.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaf, i64 64
  %i.aar = load i16, ptr %i.aaq, align 8, !tbaa !628
  %.not44.i = icmp eq i16 %i.aar, 0
  br i1 %.not44.i, label %.critedge647, label %.lr.ph155.i.jt51, !llvm.loop !629

_ZL12isCalleeLoadN4llvm7SDValueERS0_b.exit:       ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit98.i, %.lr.ph155.i.jt51
  %i.aas = load i32, ptr %i.bm, align 8, !tbaa !463
  %i.aat = icmp eq i32 %i.aas, 825
  br i1 %i.aat, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZL12isCalleeLoadN4llvm7SDValueERS0_b.exit
  %i.aau = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115X86DAGToDAGISel20checkTCRetEnoughRegsEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %i.bl)
  br i1 %i.aau, label %bb.dr, label %.critedge647, !llvm.loop !631

bb.dr:                                            ; preds = %bb.dq, %_ZL12isCalleeLoadN4llvm7SDValueERS0_b.exit
  %i.aav = load ptr, ptr %i.a, align 8, !tbaa !329 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.aw, ptr %12, align 8, !tbaa !21
  store i32 0, ptr %i.ax, align 8, !tbaa !448
  store i32 8, ptr %i.ay, align 4, !tbaa !449
  %i.aaw = load ptr, ptr %i.zh, align 8, !tbaa !604
  %.sroa.07.0.copyload.i = load ptr, ptr %i.aaw, align 8, !tbaa !452 ; 3 uses
  %i.aax = icmp eq ptr %.sroa.07.0.copyload.i, %.sroa.0148.0.copyload
  br i1 %i.aax, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i, label %bb.ds

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i: ; preds = %bb.dr
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115X86DAGToDAGISel18PostprocessISelDAGEv:bb.a
.lr.ph.i106:                                      ; preds = %bb.aw, %select.unfold.i
  %.sroa.036.066.i = phi ptr [ %.sroa.036.0.i, %select.unfold.i ], [ %.sroa.036.064.i, %bb.aw ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i, i64 8
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !443
  %.not29.i = icmp eq i32 %i.ia, 1
  br i1 %.not29.i, label %bb.ax, label %select.unfold.i

bb.ax:                                            ; preds = %.lr.ph.i106
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !614 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !463 ; 2 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %bb.ay, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !150
  %i.ig = getelementptr i8, ptr %.val.i, i64 768
  %.val.val.i = load ptr, ptr %i.ig, align 8, !tbaa !652
  %i.ih = xor i32 %i.ie, -1
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds [32 x i8], ptr %.val.val.i, i64 %i.ij
  %i.il = call noundef i32 @_ZN4llvm3X8620getCondSrcNoFromDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(32) %i.ik) #22 ; 2 uses
  %i.im = icmp slt i32 %i.il, 0
  br i1 %i.im, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %_ZNK12_GLOBAL__N_115X86DAGToDAGISel15getCondFromNodeEPN4llvm6SDNodeE.exit.i

_ZNK12_GLOBAL__N_115X86DAGToDAGISel15getCondFromNodeEPN4llvm6SDNodeE.exit.i: ; preds = %bb.ay
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !604
  %i.ip = zext nneg i32 %i.il to i64
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !442
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 88
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !467 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !469
  %i.ix = icmp ult i32 %i.iw, 65
  %i.iy = load ptr, ptr %i.iu, align 8
  %spec.select.i.i.i.i.i.i107 = select i1 %i.ix, ptr %i.iu, ptr %i.iy
  %.0.i.i.i.i.i.i108 = load i64, ptr %spec.select.i.i.i.i.i.i107, align 8, !tbaa !471
  %i.iz = and i64 %.0.i.i.i.i.i.i108, 4294967294
  %switch.i = icmp eq i64 %i.iz, 4
  br i1 %switch.i, label %select.unfold.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

select.unfold.i:                                  ; preds = %_ZNK12_GLOBAL__N_115X86DAGToDAGISel15getCondFromNodeEPN4llvm6SDNodeE.exit.i, %.lr.ph.i106
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i, i64 32
  %.sroa.036.0.i = load ptr, ptr %i.ja, align 8, !tbaa !606 ; 2 uses
  %.not60.i = icmp eq ptr %.sroa.036.0.i, null
  br i1 %.not60.i, label %.critedge.i, label %.lr.ph.i106

.critedge.i:                                      ; preds = %select.unfold.i, %bb.aw, %.lr.ph71.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.042.069.i, i64 32
  %.sroa.042.0.i = load ptr, ptr %i.jb, align 8, !tbaa !606 ; 2 uses
  %.not58.i = icmp eq ptr %.sroa.042.0.i, null
  br i1 %.not58.i, label %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit.loopexit, label %.lr.ph71.i

_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit.loopexit: ; preds = %.critedge.i
  %.pre = load i32, ptr %i.hk, align 8, !tbaa !463
  br label %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit

_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit: ; preds = %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit.loopexit, %bb.at
  %i.jc = phi i32 [ %.pre, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit.loopexit ], [ %i.hl, %bb.at ]
  switch i32 %i.jc, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread [
    i32 -2030, label %bb.az
    i32 -2037, label %bb.az
    i32 -2031, label %bb.az
    i32 -2036, label %bb.az
  ], !llvm.loop !642

bb.az:                                            ; preds = %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit
  switch i32 %i.bo, label %.thread [
    i32 2087, label %bb.bb
    i32 2088, label %bb.bc
    i32 2086, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  br label %.thread

bb.bb:                                            ; preds = %bb.az
  br label %.thread

bb.bc:                                            ; preds = %bb.az
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !150
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 411
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !653, !range !18, !noundef !19
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %.thread, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, !llvm.loop !642

.thread:                                          ; preds = %bb.ba, %bb.bb, %bb.az, %bb.bc
  %.083161 = phi i32 [ 2101, %bb.bc ], [ 2099, %bb.ba ], [ 2100, %bb.bb ], [ 2098, %bb.az ]
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !600
  store i64 %i.jj, ptr %11, align 8, !tbaa !600
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !601
  store i32 %i.jl, ptr %i.m, align 8, !tbaa !446
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !604 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.jh, i32 noundef %.083161, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.jn, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.jo) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.jq = load ptr, ptr %i.f, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.jq, ptr noundef nonnull %i.af, ptr noundef %i.jp) #22
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.jp) #22
  br label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.bd:                                            ; preds = %bb.m
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !604 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !442 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 88
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !467 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !469
  %i.ka = icmp ult i32 %i.jz, 65
  %i.kb = load ptr, ptr %i.jx, align 8
  %spec.select.i.i.i.i = select i1 %i.ka, ptr %i.jx, ptr %i.kb
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !471
  %i.kc = trunc i64 %.0.i.i.i.i to i32
  %i.kd = add i32 %i.kc, -11
  %or.cond = icmp ult i32 %i.kd, -2
  br i1 %or.cond, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %bb.be, !llvm.loop !642

bb.be:                                            ; preds = %bb.bd
  %.sroa.0112.0.copyload = load ptr, ptr %i.js, align 8, !tbaa !452 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0112.0.copyload, i64 24
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !463 ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %bb.bf, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, !llvm.loop !642

bb.bf:                                            ; preds = %bb.be
  switch i32 %i.kf, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread [
    i32 -13537, label %bb.bg
    i32 -14051, label %bb.bg
    i32 -13578, label %bb.bg
    i32 -14092, label %bb.bg
    i32 -13680, label %bb.bg
    i32 -13820, label %bb.bg
    i32 -13500, label %bb.bg
    i32 -14014, label %bb.bg
    i32 -13541, label %bb.bg
    i32 -14055, label %bb.bg
    i32 -13676, label %bb.bg
    i32 -13816, label %bb.bg
    i32 -13507, label %bb.bg
    i32 -14021, label %bb.bg
    i32 -13548, label %bb.bg
    i32 -14062, label %bb.bg
    i32 -13613, label %bb.bg
    i32 -13720, label %bb.bg
    i32 -13646, label %bb.bg
    i32 -13753, label %bb.bg
    i32 -13518, label %bb.bg
    i32 -14032, label %bb.bg
    i32 -13559, label %bb.bg
    i32 -14073, label %bb.bg
    i32 -13624, label %bb.bg
    i32 -13731, label %bb.bg
    i32 -13657, label %bb.bg
    i32 -13764, label %bb.bg
  ], !llvm.loop !642

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0.copyload, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !604 ; 2 uses
  %.sroa.0.0.copyload111 = load ptr, ptr %i.ki, align 8, !tbaa !452 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !453
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload111, i64 24
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !463 ; 2 uses
  %or.cond162 = icmp sgt i32 %i.kk, -332
  br i1 %or.cond162, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %bb.bh, !llvm.loop !642

bb.bh:                                            ; preds = %bb.bg
  %i.kl = xor i32 %i.kk, -1
  %.val = load ptr, ptr %i.l, align 8, !tbaa !150
  %i.km = getelementptr inbounds nuw i8, ptr %.val, i64 768
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !652
  %i.ko = zext nneg i32 %i.kl to i64
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds [32 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !654
  %i.kt = and i64 %i.ks, 1610612736
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !453
  %i.kv = call noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, ptr noundef nonnull %i.af, ptr nonnull %.sroa.0.0.copyload111, i32 %.sroa.7.0.copyload, ptr nonnull %i.ju, i32 %.sroa.2.0.copyload) #22 ; 0 uses
  br label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread: ; preds = %bb.av, %bb.au, %.lr.ph.i, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel15getCondFromNodeEPN4llvm6SDNodeE.exit.i, %bb.ax, %bb.ay, %bb.o, %bb.be, %bb.bf, %bb.bh, %bb.bi, %bb.bg, %bb.as, %bb.ar, %bb.aq, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit, %bb.bc, %.thread, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit103, %bb.r, %bb.s, %bb.v, %_ZN12_GLOBAL__N_115X86DAGToDAGISel21tryOptimizeRem8ExtendEPN4llvm6SDNodeE.exit, %bb.m, %bb.n, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit, %bb.q, %bb.bd, %bb.c, %bb.d
  %.10 = phi i1 [ true, %_ZN12_GLOBAL__N_115X86DAGToDAGISel21tryOptimizeRem8ExtendEPN4llvm6SDNodeE.exit ], [ %.0168, %bb.c ], [ %.0168, %bb.d ], [ %.0168, %bb.n ], [ %.0168, %bb.m ], [ %.0168, %bb.v ], [ %.0168, %bb.bh ], [ %.0168, %bb.q ], [ %.0168, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit ], [ %.0168, %bb.bc ], [ %.0168, %bb.bd ], [ true, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit103 ], [ %.0168, %bb.r ], [ true, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit ], [ %.0168, %bb.s ], [ %.0168, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel16onlyUsesZeroFlagEN4llvm7SDValueE.exit ], [ %.0168, %bb.aq ], [ %.0168, %bb.o ], [ %.0168, %bb.as ], [ %.0168, %bb.ar ], [ true, %.thread ], [ %.0168, %bb.be ], [ %.0168, %bb.bf ], [ %.0168, %bb.bg ], [ %.0168, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel15getCondFromNodeEPN4llvm6SDNodeE.exit.i ], [ true, %bb.bi ], [ %.0168, %.lr.ph.i ], [ %.0168, %bb.ay ], [ %.0168, %bb.ax ], [ %.0168, %bb.au ], [ %.0168, %bb.av ] ; 2 uses
  %i.kw = load ptr, ptr %i.f, align 8, !tbaa !329 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 400
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !462
  %.not = icmp eq ptr %i.ae, %i.ky
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread
  br i1 %.10, label %bb.bj, label %.critedge170

bb.bj:                                            ; preds = %._crit_edge
  call void @_ZN4llvm12SelectionDAG15RemoveDeadNodesEv(ptr noundef nonnull align 8 dereferenceable(920) %i.kw) #22
  br label %.critedge170

.critedge170:                                     ; preds = %bb.b, %._crit_edge, %bb.bj, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115X86DAGToDAGISel6SelectEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %3 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 14 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 11 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 12 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %24 = alloca %"class.llvm::SDLoc", align 8      ; 96 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %28 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %31 = alloca [8 x %"class.llvm::SDValue"], align 16 ; 14 uses
  %32 = alloca [2 x %"struct.llvm::EVT"], align 8 ; 4 uses
  %33 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %38 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %41 = alloca [9 x %"class.llvm::SDValue"], align 16 ; 15 uses
  %42 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %45 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 14 uses
  %46 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %47 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 14 uses
  %48 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %55 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %56 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %57 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %58 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 12 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %69 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %70 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %71 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %72 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %73 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %74 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %75 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %76 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 10 uses
  %78 = alloca %"class.llvm::SDValue", align 8    ; 10 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %80 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %81 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %82 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %84 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 13 uses
  %85 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %86 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %87 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %88 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %89 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %90 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %91 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %92 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %93 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %94 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %95 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %97 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %98 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %99 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %100 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %101 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %102 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %103 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %104 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %105 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %106 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %107 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %108 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %109 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %110 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %111 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %112 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %113 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %114 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %115 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %116 = alloca %"class.llvm::ArrayRef", align 8  ; 2 uses
  %117 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %118 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %119 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %120 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %121 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %122 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %123 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %124 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %125 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %126 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %127 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %128 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %129 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %130 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %131 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %132 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %133 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %134 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %135 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %136 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %137 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %138 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %139 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %140 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %141 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %142 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %143 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %144 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %145 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %146 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %147 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %148 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %149 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %150 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %151 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %152 = alloca %"class.llvm::SDValue", align 8   ; 7 uses
  %153 = alloca %"class.llvm::SDValue", align 8   ; 7 uses
  %154 = alloca %"class.llvm::SDValue", align 8   ; 7 uses
  %155 = alloca %"class.llvm::SDValue", align 8   ; 7 uses
  %156 = alloca %"class.llvm::SDValue", align 8   ; 7 uses
  %157 = alloca %"struct.llvm::EVT", align 8      ; 5 uses
  %158 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %159 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %160 = alloca %"class.llvm::ArrayRef", align 8  ; 3 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %161 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %162 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %163 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %164 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %165 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %166 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %167 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %168 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %169 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %170 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %171 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
  %172 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
  %173 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
  %174 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
  %175 = alloca %"class.llvm::SDValue", align 8   ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_115X86DAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
bb.dg:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.yt = load i64, ptr %i.yo, align 8, !tbaa !471
  store i64 %i.yt, ptr %9, align 8, !tbaa !471
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.dh:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.yo) #22
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.dh, %bb.dg
  call void @_ZN4llvmcoENS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr nofree noundef nonnull align 8 dereferenceable(16) %9)
  %i.yu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !469
  %i.yw = icmp ult i32 %i.yv, 65
  br i1 %i.yw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.yx = load i64, ptr %8, align 8, !tbaa !471
  %i.yy = load i64, ptr %7, align 8, !tbaa !471
  %i.yz = and i64 %i.yy, %i.yx
  store i64 %i.yz, ptr %7, align 8, !tbaa !471
  br label %_ZN4llvm5APIntaNERKS0_.exit.i

bb.dj:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8) #22
  br label %_ZN4llvm5APIntaNERKS0_.exit.i

_ZN4llvm5APIntaNERKS0_.exit.i:                    ; preds = %bb.dj, %bb.di
  %i.za = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !469
  %i.zc = icmp ugt i32 %i.zb, 64
  br i1 %i.zc, label %bb.dk, label %_ZN4llvm5APIntD2Ev.exit.i

bb.dk:                                            ; preds = %_ZN4llvm5APIntaNERKS0_.exit.i
  %i.zd = load ptr, ptr %8, align 8, !tbaa !471   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZdaPv(ptr noundef nonnull %i.zd) #25
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.dl, %bb.dk, %_ZN4llvm5APIntaNERKS0_.exit.i
  %i.zf = load i32, ptr %i.yp, align 8, !tbaa !469
  %i.zg = icmp ugt i32 %i.zf, 64
  br i1 %i.zg, label %bb.dm, label %_ZN4llvm5APIntD2Ev.exit95.i

bb.dm:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.zh = load ptr, ptr %9, align 8, !tbaa !471   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %_ZN4llvm5APIntD2Ev.exit95.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.zh) #25
  br label %_ZN4llvm5APIntD2Ev.exit95.i

_ZN4llvm5APIntD2Ev.exit95.i:                      ; preds = %bb.dn, %bb.dm, %_ZN4llvm5APIntD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !329
  %i.zl = load ptr, ptr %i.uv, align 8, !tbaa !604 ; 2 uses
  %.sroa.046.0.copyload.i = load ptr, ptr %i.zl, align 8, !tbaa !452
  %.sroa.247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %.sroa.247.0.copyload.i = load i32, ptr %.sroa.247.0..sroa_idx.i, align 8, !tbaa !453
  %i.zm = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %i.zk, ptr %.sroa.046.0.copyload.i, i32 %.sroa.247.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 0) #22
  %i.zn = load i32, ptr %i.yu, align 8, !tbaa !469
  %i.zo = icmp ugt i32 %i.zn, 64
  br i1 %i.zo, label %bb.do, label %_ZN4llvm5APIntD2Ev.exit96.i

bb.do:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit95.i
  %i.zp = load ptr, ptr %7, align 8, !tbaa !471   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, null
  br i1 %i.zq, label %_ZN4llvm5APIntD2Ev.exit96.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_ZdaPv(ptr noundef nonnull %i.zp) #25
  br label %_ZN4llvm5APIntD2Ev.exit96.i

_ZN4llvm5APIntD2Ev.exit96.i:                      ; preds = %bb.dp, %bb.do, %_ZN4llvm5APIntD2Ev.exit95.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.zm, label %.loopexit, label %_ZN4llvm5APIntD2Ev.exit96..thread178_crit_edge.i

_ZN4llvm5APIntD2Ev.exit96..thread178_crit_edge.i: ; preds = %_ZN4llvm5APIntD2Ev.exit96.i
  %.pre184.i = load ptr, ptr %i.wt, align 8, !tbaa !604
  br label %.thread178.i

.thread178.i:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit96..thread178_crit_edge.i, %bb.dc, %bb.db
  %i.zr = phi ptr [ %.pre184.i, %_ZN4llvm5APIntD2Ev.exit96..thread178_crit_edge.i ], [ %i.wu, %bb.dc ], [ %i.wu, %bb.db ] ; 3 uses
  %.1141.ph176.i = phi i64 [ %.1141.ph177.i, %_ZN4llvm5APIntD2Ev.exit96..thread178_crit_edge.i ], [ %i.xm, %bb.dc ], [ %i.xw, %bb.db ]
  %.sroa.034.0.copyload.i = load ptr, ptr %i.zr, align 8, !tbaa !452 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !453 ; 2 uses
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zr, i64 12
  %.sroa.741.0.copyload.i = load i32, ptr %.sroa.741.0..sroa_idx.i, align 4 ; 2 uses
  br i1 %i.vs, label %bb.dq, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel20tryShrinkShlLogicImmEPN4llvm6SDNodeE.exit

bb.dq:                                            ; preds = %.thread178.i
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !329
  store ptr %.sroa.034.0.copyload.i, ptr %10, align 8, !tbaa !452
  %.sroa.6.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx37.i, align 8, !tbaa !453
  %.sroa.741.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.741.0.copyload.i, ptr %.sroa.741.0..sroa_idx42.i, align 4
  %i.zu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.zt, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i1904, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #22 ; 2 uses
  %.fca.0.extract26.i = extractvalue { ptr, i32 } %i.zu, 0 ; 2 uses
  %.fca.1.extract27.i = extractvalue { ptr, i32 } %i.zu, 1
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract26.i)
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel20tryShrinkShlLogicImmEPN4llvm6SDNodeE.exit

_ZN12_GLOBAL__N_115X86DAGToDAGISel20tryShrinkShlLogicImmEPN4llvm6SDNodeE.exit: ; preds = %.thread178.i, %bb.dq
  %.sroa.034.0.i = phi ptr [ %.fca.0.extract26.i, %bb.dq ], [ %.sroa.034.0.copyload.i, %.thread178.i ]
  %.sroa.6.0.i = phi i32 [ %.fca.1.extract27.i, %bb.dq ], [ %.sroa.6.0.copyload.i, %.thread178.i ]
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !329
  %i.zx = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.zw, i64 noundef %.1141.ph176.i, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i1904, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.zx, 0 ; 2 uses
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.zx, 1
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract15.i)
  %i.zy = load ptr, ptr %i.zv, align 8, !tbaa !329
  store ptr %.sroa.034.0.i, ptr %11, align 8, !tbaa !452
  %.sroa.6.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx39.i, align 8, !tbaa !453
  %.sroa.741.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %.sroa.741.0.copyload.i, ptr %.sroa.741.0..sroa_idx44.i, align 4
  store ptr %.fca.0.extract15.i, ptr %12, align 8, !tbaa !452
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract16.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !tbaa !453
  %i.zz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.zy, i32 noundef %i.ur, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i1904, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #22 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.zz, 0 ; 2 uses
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.zz, 1
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract6.i)
  %i.aaa = load ptr, ptr %i.zv, align 8, !tbaa !329
  store ptr %.fca.0.extract6.i, ptr %13, align 8, !tbaa !452
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !453
  %i.aab = load ptr, ptr %i.wt, align 8, !tbaa !604
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 40
  %i.aad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aaa, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i1904, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aac) #22
  %.fca.0.extract.i1910 = extractvalue { ptr, i32 } %i.aad, 0 ; 2 uses
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr noundef %.fca.0.extract.i1910)
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef %.fca.0.extract.i1910, ptr noundef nonnull @_ZZN12_GLOBAL__N_115X86DAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 626914, ptr noundef nonnull @_ZZN12_GLOBAL__N_115X86DAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.critedge1815

.loopexit:                                        ; preds = %.lr.ph.i.i.i1913, %.lr.ph.i.i82.i, %.critedge2.i, %bb.db, %.critedge.i1906, %_ZNK4llvm7SDValue9hasOneUseEv.exit91.i, %bb.cu, %.thread.i.i, %bb.cn, %bb.cw, %_ZN4llvm5APIntD2Ev.exit96.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i1920, %bb.cq, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.aae = icmp eq i32 %i.m, 194
  br i1 %i.aae, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.loopexit
  %i.aaf = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel17tryMatchBitSelectEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1)
  br i1 %i.aaf, label %.critedge1815, label %.thread3075

bb.ds:                                            ; preds = %.loopexit
  %i.aag = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1)
  br i1 %i.aag, label %.critedge1815, label %bb.dt

.thread3075:                                      ; preds = %bb.dr
  %i.aah = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1)
  br i1 %i.aah, label %.critedge1815, label %.thread3076

bb.dt:                                            ; preds = %bb.ds
  %i.aai = icmp eq i32 %i.m, 59
  br i1 %i.aai, label %bb.du, label %.thread3076

bb.du:                                            ; preds = %bb.c, %bb.dt
  %i.aaj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel15matchBitExtractEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1)
  br i1 %i.aaj, label %.critedge1815, label %.thread3076

.thread3076:                                      ; preds = %bb.c, %.thread3075, %bb.dt, %bb.du
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !329
  %i.aam = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG16shouldOptForSizeEv(ptr noundef nonnull align 8 dereferenceable(920) %i.aal) #22
  %.sroa.0.0.copyload.i.i.off = add i16 %.sroa.0.0.copyload.i.i, -5
  %switch = icmp ult i16 %.sroa.0.0.copyload.i.i.off, 4
  %or.cond3321 = select i1 %i.aam, i1 %switch, i1 false
  br i1 %or.cond3321, label %.critedge19, label %.critedge1819

.critedge19:                                      ; preds = %.thread3076
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !604 ; 4 uses
  %.sroa.02918.0.copyload = load ptr, ptr %i.aao, align 8, !tbaa !452 ; 5 uses
  %.sroa.92922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 2 uses
  %i.aap = load <2 x i32>, ptr %.sroa.92922.0..sroa_idx, align 8
  %.sroa.92922.0.copyload = load i32, ptr %.sroa.92922.0..sroa_idx, align 8, !tbaa !453
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 40
  %.sroa.02911.0.copyload = load ptr, ptr %i.aaq, align 8, !tbaa !452 ; 5 uses
  %.sroa.82915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 48
  %i.aar = load i64, ptr %.sroa.82915.0..sroa_idx, align 8 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.02911.0.copyload, i64 24
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !463
  switch i32 %i.aat, label %.critedge1819 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %.critedge19, %.critedge19
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.02911.0.copyload, i64 88
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !467 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 24 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 32
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !469 ; 3 uses
  %i.aaz = icmp ult i32 %i.aay, 65
  br i1 %i.aaz, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.aba = load i64, ptr %i.aaw, align 8, !tbaa !471
  %i.abb = icmp eq i32 %i.aay, 0
  %i.abc = sub nuw nsw i32 64, %i.aay
  %i.abd = zext nneg i32 %i.abc to i64            ; 2 uses
  %i.abe = shl i64 %i.aba, %i.abd
  %i.abf = ashr exact i64 %i.abe, %i.abd
  %.0.i.i.i.i1926 = select i1 %i.abb, i64 0, i64 %i.abf
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.dw:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.abg = load ptr, ptr %i.aaw, align 8, !tbaa !471
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.dv, %bb.dw
  %.0.i.i.i1925 = phi i64 [ %.0.i.i.i.i1926, %bb.dv ], [ %i.abh, %bb.dw ] ; 2 uses
  %i.abi = add i64 %.0.i.i.i1925, 2147483648
  %or.cond3298 = icmp ult i64 %i.abi, 4294967296
  br i1 %or.cond3298, label %bb.dx, label %.critedge1819

bb.dx:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.abj = icmp eq i32 %i.m, 59
  br i1 %i.abj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  switch i64 %.0.i.i.i1925, label %bb.dz [
    i64 -1, label %.critedge1819
    i64 1, label %.critedge1819
  ]

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.val1859 = load ptr, ptr %i.aak, align 8, !tbaa !329
  %i.abk = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115X86DAGToDAGISel36shouldAvoidImmediateInstFormsForSizeEPN4llvm6SDNodeE(ptr %.val1859, ptr noundef nonnull %.sroa.02911.0.copyload)
  br i1 %i.abk, label %bb.ea, label %.critedge1819

bb.ea:                                            ; preds = %bb.dz
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !150 ; 17 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 461
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !702, !range !18, !noundef !19
  %i.abp = trunc nuw i8 %i.abo to i1              ; 20 uses
  switch i16 %.sroa.0.0.copyload.i.i, label %bb.eb [
    i16 5, label %bb.ec
    i16 6, label %bb.en
    i16 7, label %bb.ey
    i16 8, label %bb.fj
  ]

bb.eb:                                            ; preds = %bb.ea
  unreachable

bb.ec:                                            ; preds = %bb.ea
  switch i32 %i.m, label %bb.ed [
    i32 59, label %bb.ee
    i32 60, label %bb.eg
    i32 193, label %bb.eh
    i32 194, label %bb.ej
    i32 195, label %bb.el
  ]

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.ec
  br i1 %i.abp, label %bb.ef, label %bb.fu

bb.ef:                                            ; preds = %bb.ee
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.abr = load i8, ptr %i.abq, align 2, !tbaa !703, !range !18, !noundef !19
  %i.abs = trunc nuw i8 %i.abr to i1
  %i.abt = select i1 %i.abs, i32 714, i32 712
  br label %bb.fu

bb.eg:                                            ; preds = %bb.ec
  %spec.select = select i1 %i.abp, i32 4888, i32 4885
  br label %bb.fw

bb.eh:                                            ; preds = %bb.ec
  br i1 %i.abp, label %bb.ei, label %bb.fu

bb.ei:                                            ; preds = %bb.eh
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.abv = load i8, ptr %i.abu, align 2, !tbaa !703, !range !18, !noundef !19
  %i.abw = trunc nuw i8 %i.abv to i1
  %i.abx = select i1 %i.abw, i32 945, i32 943
  br label %bb.fu

bb.ej:                                            ; preds = %bb.ec
  br i1 %i.abp, label %bb.ek, label %bb.fu

bb.ek:                                            ; preds = %bb.ej
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.abz = load i8, ptr %i.aby, align 2, !tbaa !703, !range !18, !noundef !19
  %i.aca = trunc nuw i8 %i.abz to i1
  %i.acb = select i1 %i.aca, i32 3063, i32 3061
  br label %bb.fu

bb.el:                                            ; preds = %bb.ec
  br i1 %i.abp, label %bb.em, label %bb.fu

bb.em:                                            ; preds = %bb.el
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.acd = load i8, ptr %i.acc, align 2, !tbaa !703, !range !18, !noundef !19
  %i.ace = trunc nuw i8 %i.acd to i1
  %i.acf = select i1 %i.ace, i32 22331, i32 22329
  br label %bb.fu

bb.en:                                            ; preds = %bb.ea
  switch i32 %i.m, label %bb.eo [
    i32 59, label %bb.ep
    i32 60, label %bb.er
    i32 193, label %bb.es
    i32 194, label %bb.eu
    i32 195, label %bb.ew
  ]

bb.eo:                                            ; preds = %bb.en
  unreachable

bb.ep:                                            ; preds = %bb.en
  br i1 %i.abp, label %bb.eq, label %bb.fu

bb.eq:                                            ; preds = %bb.ep
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.ach = load i8, ptr %i.acg, align 2, !tbaa !703, !range !18, !noundef !19
  %i.aci = trunc nuw i8 %i.ach to i1
  %i.acj = select i1 %i.aci, i32 599, i32 597
  br label %bb.fu

bb.er:                                            ; preds = %bb.en
  %spec.select3299 = select i1 %i.abp, i32 4773, i32 4770
  br label %bb.fw

bb.es:                                            ; preds = %bb.en
  br i1 %i.abp, label %bb.et, label %bb.fu

bb.et:                                            ; preds = %bb.es
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.acl = load i8, ptr %i.ack, align 2, !tbaa !703, !range !18, !noundef !19
  %i.acm = trunc nuw i8 %i.acl to i1
  %i.acn = select i1 %i.acm, i32 830, i32 828
  br label %bb.fu

bb.eu:                                            ; preds = %bb.en
  br i1 %i.abp, label %bb.ev, label %bb.fu

bb.ev:                                            ; preds = %bb.eu
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.acp = load i8, ptr %i.aco, align 2, !tbaa !703, !range !18, !noundef !19
  %i.acq = trunc nuw i8 %i.acp to i1
  %i.acr = select i1 %i.acq, i32 2947, i32 2945
  br label %bb.fu

bb.ew:                                            ; preds = %bb.en
  br i1 %i.abp, label %bb.ex, label %bb.fu

bb.ex:                                            ; preds = %bb.ew
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.act = load i8, ptr %i.acs, align 2, !tbaa !703, !range !18, !noundef !19
  %i.acu = trunc nuw i8 %i.act to i1
  %i.acv = select i1 %i.acu, i32 22216, i32 22214
  br label %bb.fu

bb.ey:                                            ; preds = %bb.ea
  switch i32 %i.m, label %bb.ez [
    i32 59, label %bb.fa
    i32 60, label %bb.fc
    i32 193, label %bb.fd
    i32 194, label %bb.ff
    i32 195, label %bb.fh
  ]

bb.ez:                                            ; preds = %bb.ey
  unreachable

bb.fa:                                            ; preds = %bb.ey
  br i1 %i.abp, label %bb.fb, label %bb.fu

bb.fb:                                            ; preds = %bb.fa
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.acx = load i8, ptr %i.acw, align 2, !tbaa !703, !range !18, !noundef !19
  %i.acy = trunc nuw i8 %i.acx to i1
  %i.acz = select i1 %i.acy, i32 640, i32 638
  br label %bb.fu

bb.fc:                                            ; preds = %bb.ey
  %spec.select3300 = select i1 %i.abp, i32 4814, i32 4811
  br label %bb.fw

bb.fd:                                            ; preds = %bb.ey
  br i1 %i.abp, label %bb.fe, label %bb.fu

bb.fe:                                            ; preds = %bb.fd
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adb = load i8, ptr %i.ada, align 2, !tbaa !703, !range !18, !noundef !19
  %i.adc = trunc nuw i8 %i.adb to i1
  %i.add = select i1 %i.adc, i32 871, i32 869
  br label %bb.fu

bb.ff:                                            ; preds = %bb.ey
  br i1 %i.abp, label %bb.fg, label %bb.fu

bb.fg:                                            ; preds = %bb.ff
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adf = load i8, ptr %i.ade, align 2, !tbaa !703, !range !18, !noundef !19
  %i.adg = trunc nuw i8 %i.adf to i1
  %i.adh = select i1 %i.adg, i32 2989, i32 2987
  br label %bb.fu

bb.fh:                                            ; preds = %bb.ey
  br i1 %i.abp, label %bb.fi, label %bb.fu

bb.fi:                                            ; preds = %bb.fh
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adj = load i8, ptr %i.adi, align 2, !tbaa !703, !range !18, !noundef !19
  %i.adk = trunc nuw i8 %i.adj to i1
  %i.adl = select i1 %i.adk, i32 22257, i32 22255
  br label %bb.fu

bb.fj:                                            ; preds = %bb.ea
  switch i32 %i.m, label %bb.fk [
    i32 59, label %bb.fl
    i32 60, label %bb.fn
    i32 193, label %bb.fo
    i32 194, label %bb.fq
    i32 195, label %bb.fs
  ]

bb.fk:                                            ; preds = %bb.fj
  unreachable

bb.fl:                                            ; preds = %bb.fj
  br i1 %i.abp, label %bb.fm, label %bb.fu

bb.fm:                                            ; preds = %bb.fl
  %i.adm = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adn = load i8, ptr %i.adm, align 2, !tbaa !703, !range !18, !noundef !19
  %i.ado = trunc nuw i8 %i.adn to i1
  %i.adp = select i1 %i.ado, i32 681, i32 679
  br label %bb.fu

bb.fn:                                            ; preds = %bb.fj
  %spec.select3301 = select i1 %i.abp, i32 4855, i32 4852
  br label %bb.fw

bb.fo:                                            ; preds = %bb.fj
  br i1 %i.abp, label %bb.fp, label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adr = load i8, ptr %i.adq, align 2, !tbaa !703, !range !18, !noundef !19
  %i.ads = trunc nuw i8 %i.adr to i1
  %i.adt = select i1 %i.ads, i32 912, i32 910
  br label %bb.fu

bb.fq:                                            ; preds = %bb.fj
  br i1 %i.abp, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adv = load i8, ptr %i.adu, align 2, !tbaa !703, !range !18, !noundef !19
  %i.adw = trunc nuw i8 %i.adv to i1
  %i.adx = select i1 %i.adw, i32 3030, i32 3028
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fj
  br i1 %i.abp, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ady = getelementptr inbounds nuw i8, ptr %i.abm, i64 462
  %i.adz = load i8, ptr %i.ady, align 2, !tbaa !703, !range !18, !noundef !19
  %i.aea = trunc nuw i8 %i.adz to i1
  %i.aeb = select i1 %i.aea, i32 22298, i32 22296
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fs, %bb.ft, %bb.fq, %bb.fr, %bb.fo, %bb.fp, %bb.fl, %bb.fm, %bb.fh, %bb.fi, %bb.ff, %bb.fg, %bb.fd, %bb.fe, %bb.fa, %bb.fb, %bb.ew, %bb.ex, %bb.eu, %bb.ev, %bb.es, %bb.et, %bb.ep, %bb.eq, %bb.el, %bb.em, %bb.ej, %bb.ek, %bb.eh, %bb.ei, %bb.ee, %bb.ef
  %.01749.ph = phi i32 [ %i.aeb, %bb.ft ], [ 22296, %bb.fs ], [ 3028, %bb.fq ], [ 910, %bb.fo ], [ 679, %bb.fl ], [ 22255, %bb.fh ], [ 2987, %bb.ff ], [ 869, %bb.fd ], [ 638, %bb.fa ], [ 22214, %bb.ew ], [ 2945, %bb.eu ], [ 828, %bb.es ], [ 597, %bb.ep ], [ 22329, %bb.el ], [ 3061, %bb.ej ], [ 943, %bb.eh ], [ 712, %bb.ee ], [ %i.adt, %bb.fp ], [ %i.adp, %bb.fm ], [ %i.adl, %bb.fi ], [ %i.adh, %bb.fg ], [ %i.add, %bb.fe ], [ %i.acz, %bb.fb ], [ %i.acv, %bb.ex ], [ %i.acr, %bb.ev ], [ %i.acn, %bb.et ], [ %i.acj, %bb.eq ], [ %i.acf, %bb.em ], [ %i.acb, %bb.ek ], [ %i.abx, %bb.ei ], [ %i.abt, %bb.ef ], [ %i.adx, %bb.fr ]
  %.01748.ph = phi i32 [ 22304, %bb.ft ], [ 22301, %bb.fs ], [ 3033, %bb.fq ], [ 915, %bb.fo ], [ 684, %bb.fl ], [ 22260, %bb.fh ], [ 2992, %bb.ff ], [ 874, %bb.fd ], [ 643, %bb.fa ], [ 22219, %bb.ew ], [ 2950, %bb.eu ], [ 833, %bb.es ], [ 602, %bb.ep ], [ 22334, %bb.el ], [ 3066, %bb.ej ], [ 948, %bb.eh ], [ 717, %bb.ee ], [ 918, %bb.fp ], [ 687, %bb.fm ], [ 22263, %bb.fi ], [ 2995, %bb.fg ], [ 877, %bb.fe ], [ 646, %bb.fb ], [ 22222, %bb.ex ], [ 2953, %bb.ev ], [ 836, %bb.et ], [ 605, %bb.eq ], [ 22337, %bb.em ], [ 3069, %bb.ek ], [ 951, %bb.ei ], [ 720, %bb.ef ], [ 3036, %bb.fr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  store ptr null, ptr %50, align 8, !tbaa !442
  %i.aec = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 0, ptr %i.aec, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  store ptr null, ptr %51, align 8, !tbaa !442
  %i.aed = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 0, ptr %i.aed, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  store ptr null, ptr %52, align 8, !tbaa !442
  %i.aee = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i32 0, ptr %i.aee, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  store ptr null, ptr %53, align 8, !tbaa !442
  %i.aef = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 0, ptr %i.aef, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  store ptr null, ptr %54, align 8, !tbaa !442
  %i.aeg = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i32 0, ptr %i.aeg, align 8, !tbaa !443
  %i.aeh = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr %.sroa.02918.0.copyload, i32 %.sroa.92922.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %50, ptr noundef nonnull align 8 dereferenceable(12) %51, ptr noundef nonnull align 8 dereferenceable(12) %52, ptr noundef nonnull align 8 dereferenceable(12) %53, ptr noundef nonnull align 8 dereferenceable(12) %54)
  br i1 %i.aeh, label %bb.fv, label %.critedge1827

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  store ptr %.sroa.02911.0.copyload, ptr %55, align 16, !tbaa !452
  %.sroa.82915.0..sroa_idx2917 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %.sroa.82915.0.extract.trunc = trunc i64 %i.aar to i32
  store i32 %.sroa.82915.0.extract.trunc, ptr %.sroa.82915.0..sroa_idx2917, align 8, !tbaa !453
  %i.aei = getelementptr inbounds nuw i8, ptr %55, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aei, ptr noundef nonnull align 8 dereferenceable(12) %50, i64 12, i1 false), !tbaa.struct !609
  %i.aej = getelementptr inbounds nuw i8, ptr %55, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aej, ptr noundef nonnull align 8 dereferenceable(12) %51, i64 12, i1 false), !tbaa.struct !609
  %i.aek = getelementptr inbounds nuw i8, ptr %55, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aek, ptr noundef nonnull align 8 dereferenceable(12) %52, i64 12, i1 false), !tbaa.struct !609
  %i.ael = getelementptr inbounds nuw i8, ptr %55, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ael, ptr noundef nonnull align 8 dereferenceable(12) %53, i64 12, i1 false), !tbaa.struct !609
  %i.aem = getelementptr inbounds nuw i8, ptr %55, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aem, ptr noundef nonnull align 8 dereferenceable(12) %54, i64 12, i1 false), !tbaa.struct !609
  %i.aen = getelementptr inbounds nuw i8, ptr %55, i64 96
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.02918.0.copyload, i64 40
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aen, ptr noundef nonnull align 8 dereferenceable(12) %i.aep, i64 12, i1 false), !tbaa.struct !609
  %i.aeq = load ptr, ptr %i.aak, align 8, !tbaa !329
  store i16 1, ptr %56, align 8, !tbaa !621
  %i.aer = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr null, ptr %i.aer, align 8, !tbaa !622
  %i.aes = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.aeq, i16 %.sroa.0.0.copyload.i.i, ptr null, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %56) #22 ; 2 uses
  %i.aet = extractvalue { ptr, i32 } %i.aes, 0
  %i.aeu = extractvalue { ptr, i32 } %i.aes, 1
  %i.aev = load ptr, ptr %i.aak, align 8, !tbaa !329
  store ptr %55, ptr %57, align 8, !tbaa !610
  %i.aew = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 7, ptr %i.aew, align 8, !tbaa !613
  %i.aex = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aev, i32 noundef %.01749.ph, ptr noundef nonnull align 8 dereferenceable(12) %24, ptr %i.aet, i32 %i.aeu, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %57) #22 ; 5 uses
  %i.aey = load ptr, ptr %i.aak, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.aey, ptr %.sroa.02918.0.copyload, i32 1, ptr %i.aex, i32 2) #22
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.aex) #22
  %i.aez = load ptr, ptr %i.aak, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.02918.0.copyload, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.afa, align 8
  %i.afb = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.afc = inttoptr i64 %i.afb to ptr
  store ptr %i.afc, ptr %i.a, align 8, !tbaa !704
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aez, ptr noundef %i.aex, ptr nonnull %i.a, i64 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.afd = load ptr, ptr %i.aak, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.afd, ptr nonnull %1, i32 0, ptr %i.aex, i32 0) #22
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.aex) #22
  %i.afe = load ptr, ptr %i.aak, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.afe, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %.critedge1815

.critedge1827:                                    ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fn, %bb.fc, %bb.er, %bb.eg, %.critedge1827
  %.017483086 = phi i32 [ %.01748.ph, %.critedge1827 ], [ %spec.select, %bb.eg ], [ %spec.select3299, %bb.er ], [ %spec.select3301, %bb.fn ], [ %spec.select3300, %bb.fc ]
  %i.aff = load ptr, ptr %i.aak, align 8, !tbaa !329
  store i16 7, ptr %58, align 8, !tbaa !621
  %i.afg = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr null, ptr %i.afg, align 8, !tbaa !622
  store ptr %.sroa.02918.0.copyload, ptr %59, align 8, !tbaa !452
  %.sroa.92922.0..sroa_idx2923 = getelementptr inbounds nuw i8, ptr %59, i64 8
  store <2 x i32> %i.aap, ptr %.sroa.92922.0..sroa_idx2923, align 8
  store ptr %.sroa.02911.0.copyload, ptr %60, align 8, !tbaa !452
  %.sroa.82915.0..sroa_idx2916 = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %i.aar, ptr %.sroa.82915.0..sroa_idx2916, align 8
  %i.afh = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTES3_NS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920) %i.aff, ptr noundef nonnull %1, i32 noundef %.017483086, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %58, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %59, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %60) #22 ; 0 uses
  br label %.critedge1815

bb.fx:                                            ; preds = %bb.c
  %.not3337.a = icmp eq i16 %.sroa.0.0.copyload.i.i, 5
  br i1 %.not3337.a, label %.thread3087, label %.critedge1819

.thread3087:                                      ; preds = %bb.fx
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !604 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %i.afj, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %i.afk, i64 16, i1 false), !tbaa.struct !609
  br label %bb.ga

bb.fy:                                            ; preds = %bb.c
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !604 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %i.afm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %i.afn, i64 16, i1 false), !tbaa.struct !609
  switch i16 %.sroa.0.0.copyload.i.i, label %bb.fz [
    i16 5, label %bb.ga
    i16 6, label %bb.gd
    i16 7, label %bb.gb
    i16 8, label %bb.gc
  ]

bb.fz:                                            ; preds = %bb.fy
  unreachable

bb.ga:                                            ; preds = %.thread3087, %bb.fy
  %i.afo = icmp eq i32 %i.m, 805                  ; 2 uses
  %i.afp = select i1 %i.afo, i32 1879, i32 2798
  %i.afq = select i1 %i.afo, i32 1876, i32 2795
  br label %bb.gd

bb.gb:                                            ; preds = %bb.fy
  br label %bb.gd

bb.gc:                                            ; preds = %bb.fy
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fy, %bb.gc, %bb.gb, %bb.ga
  %.01752 = phi i32 [ %i.afq, %bb.ga ], [ 2789, %bb.gc ], [ 2783, %bb.gb ], [ 2777, %bb.fy ]
  %.01751 = phi i32 [ %i.afp, %bb.ga ], [ 2792, %bb.gc ], [ 2786, %bb.gb ], [ 2780, %bb.fy ]
  %.01750 = phi i32 [ 2, %bb.ga ], [ 51, %bb.gc ], [ 22, %bb.gb ], [ 3, %bb.fy ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  store ptr null, ptr %63, align 8, !tbaa !442
  %i.afr = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 0, ptr %i.afr, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  store ptr null, ptr %64, align 8, !tbaa !442
  %i.afs = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 0, ptr %i.afs, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store ptr null, ptr %65, align 8, !tbaa !442
  %i.aft = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 0, ptr %i.aft, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  store ptr null, ptr %66, align 8, !tbaa !442
  %i.afu = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 0, ptr %i.afu, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store ptr null, ptr %67, align 8, !tbaa !442
  %i.afv = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i32 0, ptr %i.afv, align 8, !tbaa !443
  %.sroa.01237.0.copyload = load ptr, ptr %62, align 8, !tbaa !452
  %.sroa.21238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  %.sroa.21238.0.copyload = load i32, ptr %.sroa.21238.0..sroa_idx, align 8, !tbaa !453
  %i.afw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr %.sroa.01237.0.copyload, i32 %.sroa.21238.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %63, ptr noundef nonnull align 8 dereferenceable(12) %64, ptr noundef nonnull align 8 dereferenceable(12) %65, ptr noundef nonnull align 8 dereferenceable(12) %66, ptr noundef nonnull align 8 dereferenceable(12) %67)
  br i1 %i.afw, label %.thread3089, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %.sroa.01234.0.copyload = load ptr, ptr %61, align 8
  %.sroa.21235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 8
  %.sroa.21235.0.copyload = load i32, ptr %.sroa.21235.0..sroa_idx, align 8
  %i.afx = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr %.sroa.01234.0.copyload, i32 %.sroa.21235.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %63, ptr noundef nonnull align 8 dereferenceable(12) %64, ptr noundef nonnull align 8 dereferenceable(12) %65, ptr noundef nonnull align 8 dereferenceable(12) %66, ptr noundef nonnull align 8 dereferenceable(12) %67)
  br i1 %i.afx, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %61, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %61, ptr noundef nonnull align 8 dereferenceable(12) %62, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !609
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread3089

bb.gg:                                            ; preds = %bb.ge
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !329
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 56
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !330
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 32
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !706
  call fastcc void @_ZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(12) %61, ptr noundef nonnull align 8 dereferenceable(12) %62, i32 noundef %.01750, ptr noundef nonnull align 8 dereferenceable(520) %i.agd)
  br label %.thread3089

.thread3089:                                      ; preds = %bb.gf, %bb.gd, %bb.gg
  %.01753.in3091 = phi i1 [ false, %bb.gg ], [ true, %bb.gf ], [ true, %bb.gd ]
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !329 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  %i.agh = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.agf, ptr nonnull %i.agg, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 %.01750, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %61, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %68)
  %.fca.0.extract1214 = extractvalue { ptr, i32 } %i.agh, 0 ; 2 uses
  %i.agi = icmp eq i16 %.sroa.0.0.copyload.i.i, 5 ; 2 uses
  %i.agj = load ptr, ptr %i.age, align 8, !tbaa !329 ; 4 uses
  br i1 %.01753.in3091, label %bb.gh, label %bb.gl

bb.gh:                                            ; preds = %.thread3089
  br i1 %i.agi, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store i16 1, ptr %69, align 8, !tbaa !621
  %i.agk = getelementptr inbounds nuw i8, ptr %69, i64 8
  store ptr null, ptr %i.agk, align 8, !tbaa !622
  %i.agl = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.agj, i16 5, ptr null, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %69) #22
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  store i16 7, ptr %70, align 8, !tbaa !621
  %i.agm = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr null, ptr %i.agm, align 8, !tbaa !622
  store i16 1, ptr %71, align 8, !tbaa !621
  %i.agn = getelementptr inbounds nuw i8, ptr %71, i64 8
  store ptr null, ptr %i.agn, align 8, !tbaa !622
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_115X86DAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
  %.sroa.02159.0.copyload = load ptr, ptr %i.bsp, align 8, !tbaa !452
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsp, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !453
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsp, i64 40
  %.sroa.0315.0.copyload = load ptr, ptr %i.bsq, align 8, !tbaa !452
  %.sroa.4316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bsp, i64 48
  %.sroa.4316.0.copyload = load i32, ptr %.sroa.4316.0..sroa_idx, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #22
  store ptr null, ptr %199, align 8, !tbaa !442
  %i.bsr = getelementptr inbounds nuw i8, ptr %199, i64 8
  store i32 0, ptr %i.bsr, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #22
  store ptr null, ptr %200, align 8, !tbaa !442
  %i.bss = getelementptr inbounds nuw i8, ptr %200, i64 8
  store i32 0, ptr %i.bss, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #22
  store ptr null, ptr %201, align 8, !tbaa !442
  %i.bst = getelementptr inbounds nuw i8, ptr %201, i64 8
  store i32 0, ptr %i.bst, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #22
  store ptr null, ptr %202, align 8, !tbaa !442
  %i.bsu = getelementptr inbounds nuw i8, ptr %202, i64 8
  store i32 0, ptr %i.bsu, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #22
  store ptr null, ptr %203, align 8, !tbaa !442
  %i.bsv = getelementptr inbounds nuw i8, ptr %203, i64 8
  store i32 0, ptr %i.bsv, align 8, !tbaa !443
  %i.bsw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel10selectAddrEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_b(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr %.sroa.0315.0.copyload, i32 %.sroa.4316.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %199, ptr noundef nonnull align 8 dereferenceable(12) %200, ptr noundef nonnull align 8 dereferenceable(12) %201, ptr noundef nonnull align 8 dereferenceable(12) %202, ptr noundef nonnull align 8 dereferenceable(12) %203, i1 noundef zeroext true)
  br i1 %i.bsw, label %bb.pc, label %.critedge1847

bb.pc:                                            ; preds = %switch.lookup3440
  %switch.ext3443 = zext i16 %switch.load3442 to i32
  %i.bsx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.bsz = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %204, i8 0, i64 16, i1 false)
  %i.btb = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.bsy, ptr %.sroa.02159.0.copyload, i32 %.sroa.22.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 135, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bta, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %204) ; 2 uses
  %.fca.0.extract302 = extractvalue { ptr, i32 } %i.btb, 0 ; 2 uses
  %.fca.1.extract303 = extractvalue { ptr, i32 } %i.btb, 1
  %i.btc = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.btd = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 120
  store ptr %.fca.0.extract302, ptr %205, align 8
  %.sroa.2295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %205, i64 8
  store i32 1, ptr %.sroa.2295.0..sroa_idx, align 8
  %i.btf = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.btc, ptr %.fca.0.extract302, i32 %.fca.1.extract303, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 136, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bte, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %205) ; 2 uses
  %.fca.0.extract288 = extractvalue { ptr, i32 } %i.btf, 0 ; 2 uses
  %.fca.1.extract289 = extractvalue { ptr, i32 } %i.btf, 1
  %i.btg = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.bth = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 160
  store ptr %.fca.0.extract288, ptr %206, align 8
  %.sroa.2281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %206, i64 8
  store i32 1, ptr %.sroa.2281.0..sroa_idx, align 8
  %i.btj = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.btg, ptr %.fca.0.extract288, i32 %.fca.1.extract289, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 137, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bti, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %206) ; 2 uses
  %.fca.0.extract274 = extractvalue { ptr, i32 } %i.btj, 0 ; 2 uses
  %.fca.1.extract275 = extractvalue { ptr, i32 } %i.btj, 1
  %i.btk = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.btl = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 200
  store ptr %.fca.0.extract274, ptr %207, align 8
  %.sroa.2267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %207, i64 8
  store i32 1, ptr %.sroa.2267.0..sroa_idx, align 8
  %i.btn = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.btk, ptr %.fca.0.extract274, i32 %.fca.1.extract275, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 138, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.btm, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %207) ; 2 uses
  %.fca.0.extract260 = extractvalue { ptr, i32 } %i.btn, 0 ; 2 uses
  %.fca.1.extract261 = extractvalue { ptr, i32 } %i.btn, 1
  %i.bto = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.btp = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 240
  store ptr %.fca.0.extract260, ptr %208, align 8
  %.sroa.2253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %208, i64 8
  store i32 1, ptr %.sroa.2253.0..sroa_idx, align 8
  %i.btr = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.bto, ptr %.fca.0.extract260, i32 %.fca.1.extract261, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 139, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.btq, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %208) ; 2 uses
  %.fca.0.extract246 = extractvalue { ptr, i32 } %i.btr, 0 ; 2 uses
  %.fca.1.extract247 = extractvalue { ptr, i32 } %i.btr, 1
  %i.bts = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.btt = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btt, i64 280
  store ptr %.fca.0.extract246, ptr %209, align 8
  %.sroa.2239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %209, i64 8
  store i32 1, ptr %.sroa.2239.0..sroa_idx, align 8
  %i.btv = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.bts, ptr %.fca.0.extract246, i32 %.fca.1.extract247, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 140, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.btu, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %209) ; 2 uses
  %.fca.0.extract232 = extractvalue { ptr, i32 } %i.btv, 0 ; 2 uses
  %.fca.1.extract233 = extractvalue { ptr, i32 } %i.btv, 1
  %i.btw = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.btx = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btx, i64 320
  store ptr %.fca.0.extract232, ptr %210, align 8
  %.sroa.2225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %210, i64 8
  store i32 1, ptr %.sroa.2225.0..sroa_idx, align 8
  %i.btz = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.btw, ptr %.fca.0.extract232, i32 %.fca.1.extract233, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 141, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bty, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %210) ; 2 uses
  %.fca.0.extract218 = extractvalue { ptr, i32 } %i.btz, 0 ; 2 uses
  %.fca.1.extract219 = extractvalue { ptr, i32 } %i.btz, 1
  %i.bua = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.bub = load ptr, ptr %i.bso, align 8, !tbaa !604
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 360
  store ptr %.fca.0.extract218, ptr %211, align 8
  %.sroa.2211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %211, i64 8
  store i32 1, ptr %.sroa.2211.0..sroa_idx, align 8
  %i.bud = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getCopyToRegENS_7SDValueERKNS_5SDLocENS_8RegisterES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.bua, ptr %.fca.0.extract218, i32 %.fca.1.extract219, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 142, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.buc, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %211) ; 2 uses
  %.fca.0.extract204 = extractvalue { ptr, i32 } %i.bud, 0 ; 2 uses
  %.fca.1.extract205 = extractvalue { ptr, i32 } %i.bud, 1
  %i.bue = load ptr, ptr %i.bsx, align 8, !tbaa !329
  %i.buf = load ptr, ptr %i.j, align 8, !tbaa !464
  %i.bug = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.buh = load i16, ptr %i.bug, align 2, !tbaa !658
  %i.bui = zext i16 %i.buh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %213, ptr noundef nonnull align 8 dereferenceable(12) %199, i64 12, i1 false), !tbaa.struct !609
  %i.buj = getelementptr inbounds nuw i8, ptr %213, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.buj, ptr noundef nonnull align 8 dereferenceable(12) %200, i64 12, i1 false), !tbaa.struct !609
  %i.buk = getelementptr inbounds nuw i8, ptr %213, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.buk, ptr noundef nonnull align 8 dereferenceable(12) %201, i64 12, i1 false), !tbaa.struct !609
  %i.bul = getelementptr inbounds nuw i8, ptr %213, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bul, ptr noundef nonnull align 8 dereferenceable(12) %202, i64 12, i1 false), !tbaa.struct !609
  %i.bum = getelementptr inbounds nuw i8, ptr %213, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bum, ptr noundef nonnull align 8 dereferenceable(12) %203, i64 12, i1 false), !tbaa.struct !609
  %i.bun = getelementptr inbounds nuw i8, ptr %213, i64 80
  store ptr %.fca.0.extract204, ptr %i.bun, align 8, !tbaa !452
  %.sroa.22.0..sroa_idx2168 = getelementptr inbounds nuw i8, ptr %213, i64 88
  store i32 %.fca.1.extract205, ptr %.sroa.22.0..sroa_idx2168, align 8, !tbaa !453
  %i.buo = getelementptr inbounds nuw i8, ptr %213, i64 96
  store ptr %.fca.0.extract204, ptr %i.buo, align 8
  %.sroa.2198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %213, i64 104
  store i32 1, ptr %.sroa.2198.0..sroa_idx, align 8
  store ptr %213, ptr %212, align 8, !tbaa !610
  %i.bup = getelementptr inbounds nuw i8, ptr %212, i64 8
  store i64 7, ptr %i.bup, align 8, !tbaa !613
  %i.buq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bue, i32 noundef %switch.ext3443, ptr noundef nonnull align 8 dereferenceable(12) %24, ptr %i.buf, i32 %i.bui, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %212) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #22
  %i.bur = load ptr, ptr %i.bsx, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.bus = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2138 = load i64, ptr %i.bus, align 8
  %i.but = and i64 %.0.copyload.i.i.i.i.i.i2138, -5
  %i.buu = inttoptr i64 %i.but to ptr
  store ptr %i.buu, ptr %i.i, align 8, !tbaa !704
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bur, ptr noundef %i.buq, ptr nonnull %i.i, i64 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.buq)
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #22
  br label %.critedge1815

bb.pd:                                            ; preds = %bb.c
  %i.buv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.buw = load ptr, ptr %i.buv, align 8, !tbaa !604 ; 5 uses
  %.sroa.0194.0.copyload = load ptr, ptr %i.buw, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.buw, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !453
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 40
  %i.buy = load ptr, ptr %i.bux, align 8, !tbaa !442
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 88
  %.sroa.0.0.copyload.i2139 = load i32, ptr %i.buz, align 8, !tbaa !453
  %i.bva = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bvb = load i16, ptr %i.bva, align 2, !tbaa !658
  %i.bvc = icmp eq i16 %i.bvb, 3
  br i1 %i.bvc, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.buw, i64 80
  %.sroa.02145.0.copyload2146 = load ptr, ptr %i.bvd, align 8, !tbaa !452
  %.sroa.52147.0..sroa_idx2148 = getelementptr inbounds nuw i8, ptr %i.buw, i64 88
  %.sroa.52147.0.copyload2149 = load i32, ptr %.sroa.52147.0..sroa_idx2148, align 8, !tbaa !453
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %.sroa.52147.0 = phi i32 [ %.sroa.52147.0.copyload2149, %bb.pe ], [ 0, %bb.pd ]
  %.sroa.02145.0 = phi ptr [ %.sroa.02145.0.copyload2146, %bb.pe ], [ null, %bb.pd ]
  %i.bve = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bvf = load ptr, ptr %i.bve, align 8, !tbaa !329
  %.sroa.21.0..sroa_idx.i2141 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i2142 = load ptr, ptr %.sroa.21.0..sroa_idx.i2141, align 8, !tbaa !603
  store i16 %.sroa.0.0.copyload.i.i, ptr %214, align 8
  %i.bvg = getelementptr inbounds nuw i8, ptr %214, i64 8
  store ptr %.sroa.21.0.copyload.i2142, ptr %i.bvg, align 8
  store ptr %.sroa.02145.0, ptr %215, align 8, !tbaa !452
  %.sroa.52147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %215, i64 8
  store i32 %.sroa.52147.0, ptr %.sroa.52147.0..sroa_idx, align 8, !tbaa !453
  %i.bvh = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getCopyFromRegENS_7SDValueERKNS_5SDLocENS_8RegisterENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.bvf, ptr %.sroa.0194.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 %.sroa.0.0.copyload.i2139, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %214, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %215)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bvh, 0
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %.fca.0.extract)
  br label %.critedge1815

.critedge1831:                                    ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %136)
  br label %.critedge1819

.critedge1847:                                    ; preds = %switch.lookup3440
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #22
  br label %.critedge1819

.critedge1819:                                    ; preds = %.lr.ph.i.i2015, %bb.os, %bb.oq, %bb.nd, %_ZNK4llvm3MVT14is512BitVectorEv.exit, %bb.og, %bb.oe, %bb.ok, %bb.oi, %bb.oo, %.critedge177, %bb.nm, %bb.nk, %bb.no, %bb.nr, %.critedge133, %bb.mt, %bb.mr, %bb.mx, %bb.mv, %bb.nb, %.critedge97, %bb.ke, %_ZNK4llvm7SDValue9hasOneUseEv.exit2024, %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.lp, %bb.ki, %_ZNK4llvm7SDValue9hasOneUseEv.exit2024.thread.thread3373, %.critedge19, %bb.n, %bb.p, %bb.o, %.thread3167, %.critedge39, %.critedge39.thread, %.critedge137, %.critedge105, %bb.kh, %_ZNK4llvm7SDValue9hasOneUseEv.exit2024.thread, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.oa, %bb.mm, %bb.jy, %bb.dz, %bb.dy, %bb.dy, %.thread3296, %.thread3242, %_ZN12_GLOBAL__N_115X86DAGToDAGISel17tryShiftAmountModEPN4llvm6SDNodeE.exit.thread3068, %_ZN12_GLOBAL__N_115X86DAGToDAGISel17tryShiftAmountModEPN4llvm6SDNodeE.exit.thread, %bb.k, %bb.t, %bb.u, %.critedge1847, %.critedge1831, %bb.j, %bb.i, %bb.e, %bb.d, %bb.pb, %bb.mg, %bb.mh, %bb.ma, %bb.ly, %bb.lz, %bb.lu, %bb.lq, %bb.fx, %.thread3076, %bb.cb, %bb.aj, %bb.af
  call void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZZN12_GLOBAL__N_115X86DAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12MatcherTable, i32 noundef 626914, ptr noundef nonnull @_ZZN12_GLOBAL__N_115X86DAGToDAGISel10SelectCodeEPN4llvm6SDNodeEE12OperandLists) #22
  br label %.critedge1815

.critedge1815:                                    ; preds = %bb.kd, %bb.ky, %bb.oy, %bb.nz, %.thread3171, %bb.jx, %bb.fw, %bb.fv, %.thread3075, %_ZN12_GLOBAL__N_115X86DAGToDAGISel20tryShrinkShlLogicImmEPN4llvm6SDNodeE.exit, %bb.cg, %bb.cj, %_ZN12_GLOBAL__N_115X86DAGToDAGISel17tryShiftAmountModEPN4llvm6SDNodeE.exit, %bb.r, %bb.pc, %bb.ck, %switch.lookup, %bb.h, %bb.ma, %bb.lz, %bb.du, %bb.ds, %bb.dr, %bb.cm, %.critedge1825, %bb.cb, %bb.ak, %bb.s, %bb.ae, %bb.ca, %.critedge1819, %bb.pf, %bb.pa, %bb.oz, %bb.ml, %bb.mf, %bb.lx, %bb.lt, %bb.jk, %bb.ic, %bb.gp, %.critedge, %bb.ah, %bb.ag, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel28SelectInlineAsmMemoryOperandERKN4llvm7SDValueENS1_9InlineAsm14ConstraintCodeERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.(anonymous namespace)::X86ISelAddressMode", align 8 ; 20 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !442
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !442
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !442
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr null, ptr %9, align 8, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr null, ptr %10, align 8, !tbaa !442
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !443
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !452 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !453 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 0, ptr %4, align 8, !tbaa !717
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !442
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !443
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.h, align 8, !tbaa !722
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 1, ptr %i.i, align 4, !tbaa !723
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !442
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !443
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.l, align 8, !tbaa !724
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.m, align 8, !tbaa !442
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.n, align 8, !tbaa !443
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.p, align 8, !tbaa !725
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i8 0, ptr %i.q, align 4, !tbaa !726
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 117
  store i8 0, ptr %i.r, align 1, !tbaa !727
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 118
  store i8 0, ptr %i.s, align 2, !tbaa !728
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !600
  store i64 %i.u, ptr %5, align 8, !tbaa !600
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !601
  store i32 %i.x, ptr %i.v, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !464
  %i.aa = zext i32 %.sroa.2.0.copyload to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ab, align 8, !tbaa !465
  %i.ac = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12matchAddressEN4llvm7SDValueERNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %4) ; 2 uses
  br i1 %i.ac, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel10selectAddrEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_b.exit, label %bb.b

_ZN12_GLOBAL__N_115X86DAGToDAGISel10selectAddrEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_b.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit63

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN12_GLOBAL__N_115X86DAGToDAGISel18getAddressOperandsERNS_18X86ISelAddressModeERKN4llvm5SDLocENS3_3MVTERNS3_7SDValueES9_S9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull align 8 dereferenceable(119) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !729 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 15 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !731
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !609
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !729
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !729
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !731
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %3, align 8, !tbaa !732   ; 5 uses
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775792
  br i1 %i.an, label %bb.e, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ao = ashr exact i64 %i.am, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 576460752303423487)
  %i.as = select i1 %i.aq, i64 576460752303423487, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 4
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #24 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !609
  %.not10.i.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.au, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !609, !alias.scope !733
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !737

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.au, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !731
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.bb) #25
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.au, ptr %3, align 8, !tbaa !732
  store ptr %i.ay, ptr %i.ad, align 8, !tbaa !729
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.as ; 2 uses
  store ptr %i.bc, ptr %i.af, align 8, !tbaa !731
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.bd = phi ptr [ %.pre, %bb.c ], [ %i.bc, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.be = phi ptr [ %i.ai, %bb.c ], [ %i.ay, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.not.i8 = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !609
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !729
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bg, ptr %i.ad, align 8, !tbaa !729
  %.pre75 = load ptr, ptr %i.af, align 8, !tbaa !731
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit21

bb.h:                                             ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit
  %i.bh = load ptr, ptr %3, align 8, !tbaa !732   ; 5 uses
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775792
  br i1 %i.bl, label %bb.i, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i9

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i9: ; preds = %bb.h
  %i.bm = ashr exact i64 %i.bk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i10 = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i10, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 576460752303423487)
  %i.bq = select i1 %i.bo, i64 576460752303423487, i64 %i.bp ; 3 uses
  %.not.i.i.i11 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i11)
  %i.br = shl nuw nsw i64 %i.bq, 4
end_hunk_3
begin_hunk_4_@_ZNK12_GLOBAL__N_115X86DAGToDAGISel18IsProfitableToFoldEN4llvm7SDValueEPNS1_6SDNodeES4_:bb.a
bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #25
  br label %_ZN4llvm5APIntD2Ev.exit95

_ZN4llvm5APIntD2Ev.exit95:                        ; preds = %.critedge82, %bb.ag, %bb.ah
  %i.cx = load i32, ptr %i.cl, align 8, !tbaa !469
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.ai, label %.critedge83

bb.ai:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit95
  %i.cz = load ptr, ptr %9, align 8, !tbaa !471   ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.critedge83, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #25
  br label %.critedge83

.critedge83:                                      ; preds = %bb.aj, %bb.ai, %_ZN4llvm5APIntD2Ev.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.ph, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.critedge85thread-pre-split

.critedge85thread-pre-split:                      ; preds = %.critedge80.thread, %.critedge83
  %.pr129 = load i32, ptr %i.at, align 8, !tbaa !463
  br label %.critedge85

.critedge85:                                      ; preds = %bb.o, %.critedge85thread-pre-split
  %i.db = phi i32 [ %.pr129, %.critedge85thread-pre-split ], [ %i.au, %bb.o ]
  %i.dc = icmp eq i32 %i.db, 988
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge85
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0111.0.copyload, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !604
  %.sroa.0109.0.copyload = load ptr, ptr %i.de, align 8, !tbaa !452
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0109.0.copyload, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !463
  %.not77 = icmp eq i32 %i.dg, 40
  br i1 %.not77, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge85
  %i.dh = load i32, ptr %i.ao, align 8, !tbaa !463 ; 2 uses
  %i.di = and i32 %i.dh, -2
  %switch143 = icmp eq i32 %i.di, 194
  br i1 %switch143, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.dj = load ptr, ptr %i.aq, align 8, !tbaa !604 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !442 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !463
  %i.dn = icmp eq i32 %i.dm, 198
  br i1 %i.dn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !604 ; 2 uses
  %.sroa.011.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !452
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.212.0.copyload = load i32, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !453
  %i.dq = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.011.0.copyload, i32 %.sroa.212.0.copyload) #22
  br i1 %i.dq, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.pre145 = load ptr, ptr %i.aq, align 8, !tbaa !604
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.am
  %i.dr = phi ptr [ %.pre145, %._crit_edge ], [ %i.dj, %bb.am ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !442 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !463
  %i.dw = icmp eq i32 %i.dv, 198
  br i1 %i.dw, label %bb.ap, label %thread-pre-split130

bb.ap:                                            ; preds = %bb.ao
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !604 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.dy, align 8, !tbaa !452
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !453
  %i.dz = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.08.0.copyload, i32 %.sroa.29.0.copyload) #22
  br i1 %i.dz, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %thread-pre-split130

thread-pre-split130:                              ; preds = %bb.ap, %bb.ao
  %.pr131 = load i32, ptr %i.ao, align 8, !tbaa !463
  br label %bb.aq

bb.aq:                                            ; preds = %bb.al, %thread-pre-split130
  %i.ea = phi i32 [ %.pr131, %thread-pre-split130 ], [ %i.dh, %bb.al ]
  %i.eb = icmp eq i32 %i.ea, 193
  br i1 %i.eb, label %bb.ar, label %.critedge89

bb.ar:                                            ; preds = %bb.aq
  %i.ec = load ptr, ptr %i.aq, align 8, !tbaa !604 ; 2 uses
  %.sroa.0106.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !452 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %.sroa.0.0.copyload105 = load ptr, ptr %i.ed, align 8, !tbaa !452 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0106.0.copyload, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !463
  %i.eg = icmp eq i32 %i.ef, 201
  br i1 %i.eg, label %bb.as, label %.critedge87

bb.as:                                            ; preds = %bb.ar
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0106.0.copyload, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !604
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !442 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !463
  switch i32 %i.el, label %.critedge87 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.as, %bb.as
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 88
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !467 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !469 ; 3 uses
  %i.er = icmp ult i32 %i.eq, 65
  br i1 %i.er, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.es = load i64, ptr %i.eo, align 8, !tbaa !471
  %i.et = icmp eq i32 %i.eq, 0
  %i.eu = sub nuw nsw i32 64, %i.eq
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = shl i64 %i.es, %i.ev
  %i.ex = ashr exact i64 %i.ew, %i.ev
  br i1 %i.et, label %.critedge87, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.au:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !471
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.at, %bb.au
  %.0.i.i.i98 = phi i64 [ %i.ex, %bb.at ], [ %i.ez, %bb.au ]
  %i.fa = icmp eq i64 %.0.i.i.i98, -2
  br i1 %i.fa, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.critedge87

.critedge87:                                      ; preds = %bb.at, %bb.as, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload105, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !463
  %i.fd = icmp eq i32 %i.fc, 201
  br i1 %i.fd, label %bb.av, label %.critedge89

bb.av:                                            ; preds = %.critedge87
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload105, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !604
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !442 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !463
  switch i32 %i.fi, label %.critedge89 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit100
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit100
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit100: ; preds = %bb.av, %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !467 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !469 ; 3 uses
  %i.fo = icmp ult i32 %i.fn, 65
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit100
  %i.fp = load i64, ptr %i.fl, align 8, !tbaa !471
  %i.fq = icmp eq i32 %i.fn, 0
  %i.fr = sub nuw nsw i32 64, %i.fn
  %i.fs = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.ft = shl i64 %i.fp, %i.fs
  %i.fu = ashr exact i64 %i.ft, %i.fs
  br i1 %i.fq, label %.critedge89, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit103

bb.ax:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit100
  %i.fv = load ptr, ptr %i.fl, align 8, !tbaa !471
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit103

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit103: ; preds = %bb.aw, %bb.ax
  %.0.i.i.i101 = phi i64 [ %i.fu, %bb.aw ], [ %i.fw, %bb.ax ]
  %i.fx = icmp eq i64 %.0.i.i.i101, -2
  br i1 %i.fx, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.critedge89

bb.ay:                                            ; preds = %bb.n, %bb.n, %bb.n
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !442
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !463
  switch i32 %i.gd, label %.critedge89 [
    i32 37, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
    i32 12, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  ]

.critedge89:                                      ; preds = %bb.ay, %bb.aw, %bb.av, %bb.aq, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit103, %.critedge87, %bb.n, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel18useNonTemporalLoadEPN4llvm10LoadSDNodeE.exit.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !463
  %i.gg = icmp eq i32 %i.gf, 166
  br i1 %i.gg, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %.critedge89
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !604 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %.sroa.0.0.copyload = load ptr, ptr %i.gj, align 8, !tbaa !452
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !453
  %i.gk = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload) #22
  br i1 %i.gk, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !604
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !442 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !463
  %i.gp = add i32 %i.go, -53
  %spec.select.i.i = icmp ult i32 %i.gp, 2
  br i1 %spec.select.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef nonnull %i.gm) #22
  br i1 %i.gq, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %.critedge89
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %bb.ay, %bb.ay, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit103, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %_ZNK4llvm5APInt6isIntNEj.exit, %bb.t, %bb.s, %bb.r, %.critedge80, %.critedge83, %bb.ak, %bb.ap, %bb.an, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.b, %bb.ba, %bb.bb, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel18useNonTemporalLoadEPN4llvm10LoadSDNodeE.exit, %bb.d, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.a, %bb.bc
  %.10 = phi i1 [ false, %bb.a ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ true, %bb.d ], [ false, %bb.ay ], [ true, %bb.bc ], [ false, %bb.ay ], [ false, %_ZNK12_GLOBAL__N_115X86DAGToDAGISel18useNonTemporalLoadEPN4llvm10LoadSDNodeE.exit ], [ false, %bb.bb ], [ false, %bb.ba ], [ false, %bb.b ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ false, %bb.an ], [ false, %bb.ap ], [ false, %bb.ak ], [ false, %.critedge83 ], [ false, %.critedge80 ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ], [ false, %_ZNK4llvm5APInt6isIntNEj.exit ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit103 ], [ false, %.lr.ph.i.i ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm16SelectionDAGISel18getPatternForIndexEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm16SelectionDAGISel22getIncludePathForIndexEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_115X86DAGToDAGISel21CheckPatternPredicateEj(ptr nofree noundef nonnull readonly align 8 dereferenceable(968) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.k
    i32 7, label %bb.m
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.r
    i32 11, label %bb.s
    i32 12, label %bb.t
    i32 13, label %bb.u
    i32 14, label %bb.v
    i32 15, label %bb.w
    i32 16, label %bb.y
    i32 17, label %bb.z
    i32 18, label %bb.ab
    i32 19, label %bb.ac
    i32 20, label %bb.ae
    i32 21, label %bb.af
    i32 22, label %bb.ah
    i32 23, label %bb.ai
    i32 24, label %bb.al
    i32 25, label %bb.an
    i32 26, label %bb.aq
    i32 27, label %bb.as
    i32 28, label %bb.at
    i32 29, label %bb.aw
    i32 30, label %bb.ax
    i32 31, label %bb.ay
    i32 32, label %bb.az
    i32 33, label %bb.ba
    i32 34, label %bb.bb
    i32 35, label %bb.bd
    i32 36, label %bb.be
    i32 37, label %bb.bf
    i32 38, label %bb.bh
    i32 39, label %bb.bi
    i32 40, label %bb.bl
    i32 41, label %bb.bn
    i32 42, label %bb.bo
    i32 43, label %bb.bq
    i32 44, label %bb.bs
    i32 45, label %bb.bu
    i32 46, label %bb.bw
    i32 47, label %bb.by
    i32 48, label %bb.ca
    i32 49, label %bb.cc
    i32 50, label %bb.cd
    i32 51, label %bb.cf
    i32 52, label %bb.cg
    i32 53, label %bb.ci
    i32 54, label %bb.ck
    i32 55, label %bb.cn
    i32 56, label %bb.cp
    i32 57, label %bb.cq
    i32 58, label %bb.cs
    i32 59, label %bb.ct
    i32 60, label %bb.cv
    i32 61, label %bb.cx
    i32 62, label %bb.cz
    i32 63, label %bb.da
    i32 64, label %bb.db
    i32 65, label %bb.de
    i32 66, label %bb.dg
    i32 67, label %bb.dh
    i32 68, label %bb.dk
    i32 69, label %bb.dm
    i32 70, label %bb.dn
    i32 71, label %bb.do
    i32 72, label %bb.dp
    i32 73, label %bb.dq
    i32 74, label %bb.ds
    i32 75, label %bb.dt
    i32 76, label %bb.dv
    i32 77, label %bb.dw
    i32 78, label %bb.dz
    i32 79, label %bb.ec
    i32 80, label %bb.ed
    i32 81, label %bb.ee
    i32 82, label %bb.eg
    i32 83, label %bb.eh
    i32 84, label %bb.ej
    i32 85, label %bb.el
    i32 86, label %bb.em
    i32 87, label %bb.en
    i32 88, label %bb.ep
    i32 89, label %bb.eq
    i32 90, label %bb.er
    i32 91, label %bb.et
    i32 92, label %bb.ev
    i32 93, label %bb.ew
    i32 94, label %bb.ey
    i32 95, label %bb.ez
    i32 96, label %bb.fc
    i32 97, label %bb.ff
    i32 98, label %bb.fh
    i32 99, label %bb.fk
    i32 100, label %bb.fn
    i32 101, label %bb.fp
    i32 102, label %bb.fr
    i32 103, label %bb.fs
    i32 104, label %bb.fu
    i32 105, label %bb.fv
    i32 106, label %bb.fw
    i32 107, label %bb.fy
    i32 108, label %bb.ga
    i32 109, label %bb.gc
    i32 110, label %bb.ge
    i32 111, label %bb.gg
    i32 112, label %bb.gj
    i32 113, label %bb.gk
    i32 114, label %bb.go
    i32 115, label %bb.gq
    i32 116, label %bb.gs
    i32 117, label %bb.gu
    i32 118, label %bb.gv
    i32 119, label %bb.gx
    i32 120, label %bb.gz
    i32 121, label %bb.hb
    i32 122, label %bb.hf
    i32 123, label %bb.hh
    i32 124, label %bb.hk
    i32 125, label %bb.hm
    i32 126, label %bb.ho
    i32 127, label %bb.hq
    i32 128, label %bb.hr
    i32 129, label %bb.hu
    i32 130, label %bb.hw
    i32 131, label %bb.hx
    i32 132, label %bb.hz
    i32 133, label %bb.ic
    i32 134, label %bb.id
    i32 135, label %bb.if
    i32 136, label %bb.ig
    i32 137, label %bb.ih
    i32 138, label %bb.ij
    i32 139, label %bb.ik
    i32 140, label %bb.im
    i32 141, label %bb.io
    i32 142, label %bb.iq
    i32 143, label %bb.is
    i32 144, label %bb.it
    i32 145, label %bb.iu
    i32 146, label %bb.iw
    i32 147, label %bb.iy
    i32 148, label %bb.jb
    i32 149, label %bb.jc
    i32 150, label %bb.je
    i32 151, label %bb.jf
    i32 152, label %bb.jh
    i32 153, label %bb.jj
    i32 154, label %bb.jl
    i32 155, label %bb.jo
    i32 156, label %bb.jp
    i32 157, label %bb.jr
    i32 158, label %bb.js
    i32 159, label %bb.jt
    i32 160, label %bb.ju
    i32 161, label %bb.jx
    i32 162, label %bb.ka
    i32 163, label %bb.kc
    i32 164, label %bb.kf
    i32 165, label %bb.kh
    i32 166, label %bb.kj
    i32 167, label %bb.kl
    i32 168, label %bb.kn
    i32 169, label %bb.kq
    i32 170, label %bb.ks
    i32 171, label %bb.ku
    i32 172, label %bb.kv
    i32 173, label %bb.kw
    i32 174, label %bb.kx
    i32 175, label %bb.kz
    i32 176, label %bb.lb
    i32 177, label %bb.lc
    i32 178, label %bb.le
    i32 179, label %bb.lg
    i32 180, label %bb.li
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeE:bb.a

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99": ; preds = %.lr.ph.i.i.i91, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit", %bb.ao, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i98, %bb.aq, %bb.ar
  %.sroa.7143.0 = phi i32 [ %.sroa.7143.0.copyload, %bb.ao ], [ %.sroa.7143.0.copyload147, %bb.ar ], [ %.sroa.7143.0.copyload, %bb.aq ], [ %.sroa.7143.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i98 ], [ %.sroa.7143.0.copyload, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit" ], [ %.sroa.7143.0.copyload, %.lr.ph.i.i.i91 ]
  %.sroa.0139.0 = phi ptr [ %.sroa.0139.0.copyload, %bb.ao ], [ %.sroa.0139.0.copyload142, %bb.ar ], [ %.sroa.0139.0.copyload, %bb.aq ], [ %.sroa.0139.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i98 ], [ %.sroa.0139.0.copyload, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit" ], [ %.sroa.0139.0.copyload, %.lr.ph.i.i.i91 ]
  %.0168 = phi ptr [ %.sroa.0184.0.ph, %bb.ao ], [ %.sroa.0139.0.copyload, %bb.ar ], [ %.sroa.0184.0.ph, %bb.aq ], [ %.sroa.0184.0.ph, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i98 ], [ %.sroa.0184.0.ph, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit" ], [ %.sroa.0184.0.ph, %.lr.ph.i.i.i91 ]
  %.0165 = phi i8 [ -52, %bb.ao ], [ 51, %bb.ar ], [ -52, %bb.aq ], [ -52, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i98 ], [ -52, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit" ], [ -52, %.lr.ph.i.i.i91 ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.copyload, i64 24
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !463
  %i.fz = icmp eq i32 %i.fy, 195
  br i1 %i.fz, label %bb.as, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"

bb.as:                                            ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99"
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.copyload, i64 56
  %.sroa.018.022.i.i.i101 = load ptr, ptr %i.ga, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i.i102 = icmp eq ptr %.sroa.018.022.i.i.i101, null
  br i1 %.not23.i.i.i102, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111", label %.lr.ph.i.i.i103

bb.at:                                            ; preds = %.lr.ph.i.i.i103
  %.214.i.i.i107 = select i1 %i.ge, i32 %.01224.i.i.i105, i32 0 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i104, i64 32
  %.sroa.018.0.i.i.i108 = load ptr, ptr %i.gb, align 8, !tbaa !606 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %.sroa.018.0.i.i.i108, null
  br i1 %.not.i.i.i109, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110, label %.lr.ph.i.i.i103

.lr.ph.i.i.i103:                                  ; preds = %bb.as, %bb.at
  %.sroa.018.025.i.i.i104 = phi ptr [ %.sroa.018.0.i.i.i108, %bb.at ], [ %.sroa.018.022.i.i.i101, %bb.as ] ; 2 uses
  %.01224.i.i.i105 = phi i32 [ %.214.i.i.i107, %bb.at ], [ 1, %bb.as ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i104, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !443
  %i.ge = icmp ne i32 %i.gd, %.sroa.7.0.copyload  ; 2 uses
  %i.gf = icmp ne i32 %.01224.i.i.i105, 0
  %cond.i.i.i106 = select i1 %i.ge, i1 true, i1 %i.gf
  br i1 %cond.i.i.i106, label %bb.at, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"

_ZNK4llvm7SDValue9hasOneUseEv.exit.i110:          ; preds = %bb.at
  %i.gg = icmp eq i32 %.214.i.i.i107, 0
  br i1 %i.gg, label %bb.au, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"

bb.au:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0129.0.copyload, i64 40 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !604
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !442
  %i.gl = tail call noundef zeroext i1 @_ZN4llvm3ISD20isBuildVectorAllOnesEPKNS_6SDNodeE(ptr noundef %i.gk) #22
  br i1 %i.gl, label %bb.av, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"

bb.av:                                            ; preds = %bb.au
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !604 ; 2 uses
  %.sroa.0129.0.copyload132 = load ptr, ptr %i.gm, align 8, !tbaa !452
  %.sroa.7.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.sroa.7.0.copyload136 = load i32, ptr %.sroa.7.0..sroa_idx135, align 8, !tbaa !453
  br label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111": ; preds = %.lr.ph.i.i.i103, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99", %bb.as, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110, %bb.au, %bb.av
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.as ], [ %.sroa.7.0.copyload136, %bb.av ], [ %.sroa.7.0.copyload, %bb.au ], [ %.sroa.7.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110 ], [ %.sroa.7.0.copyload, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99" ], [ %.sroa.7.0.copyload, %.lr.ph.i.i.i103 ]
  %.sroa.0129.0 = phi ptr [ %.sroa.0129.0.copyload, %bb.as ], [ %.sroa.0129.0.copyload132, %bb.av ], [ %.sroa.0129.0.copyload, %bb.au ], [ %.sroa.0129.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110 ], [ %.sroa.0129.0.copyload, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99" ], [ %.sroa.0129.0.copyload, %.lr.ph.i.i.i103 ]
  %.0167 = phi ptr [ %.sroa.0184.0.ph, %bb.as ], [ %.sroa.0129.0.copyload, %bb.av ], [ %.sroa.0184.0.ph, %bb.au ], [ %.sroa.0184.0.ph, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110 ], [ %.sroa.0184.0.ph, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99" ], [ %.sroa.0184.0.ph, %.lr.ph.i.i.i103 ]
  %.0164 = phi i8 [ -86, %bb.as ], [ 85, %bb.av ], [ -86, %bb.au ], [ -86, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i110 ], [ -86, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit99" ], [ -86, %.lr.ph.i.i.i103 ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0184.0.ph, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !463
  switch i32 %i.go, label %bb.aw [
    i32 193, label %bb.ax
    i32 194, label %bb.ay
    i32 195, label %bb.az
    i32 547, label %bb.ba
  ]

bb.aw:                                            ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"
  unreachable

bb.ax:                                            ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"
  %i.gp = and i8 %.0164, %.0165
  br label %bb.bb

bb.ay:                                            ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"
  %i.gq = or i8 %.0164, %.0165
  br label %bb.bb

bb.az:                                            ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"
  %i.gr = xor i8 %.0164, %.0165
  br label %bb.bb

bb.ba:                                            ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel12tryVPTERNLOGEPN4llvm6SDNodeEENK3$_2clERNS1_7SDValueERS3_Rh.exit111"
  %i.gs = xor i8 %.0165, -1
  %i.gt = and i8 %.0164, %i.gs
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.0 = phi i8 [ %i.gp, %bb.ax ], [ %i.gq, %bb.ay ], [ %i.gr, %bb.az ], [ %i.gt, %bb.ba ] ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.139.ph, i64 24
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !463
  switch i32 %i.gv, label %bb.bc [
    i32 547, label %bb.bd
    i32 193, label %bb.bg
    i32 194, label %bb.bh
    i32 195, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.bb
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.gw = icmp eq ptr %.sroa.0.2, %.sroa.0198.0.ph
  %i.gx = icmp eq i32 %.sroa.11.2, %.sroa.10.0
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gz = xor i8 %.0166, -1
  %i.ha = and i8 %.0, %i.gz
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.hb = xor i8 %.0, -1
  %i.hc = and i8 %.0166, %i.hb
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bb
  %i.hd = and i8 %.0, %.0166
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bb
  %i.he = or i8 %.0, %.0166
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bb
  %i.hf = xor i8 %.0, %.0166
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bf, %bb.bi, %bb.bh, %bb.bg
  %.1 = phi i8 [ %i.ha, %bb.be ], [ %i.hc, %bb.bf ], [ %i.hd, %bb.bg ], [ %i.he, %bb.bh ], [ %i.hf, %bb.bi ]
  %spec.select = xor i8 %.1, %.142.ph
  store ptr %.sroa.0.2, ptr %2, align 8, !tbaa !452
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.11.2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !453
  store ptr %.sroa.0139.0, ptr %3, align 8, !tbaa !452
  %.sroa.7143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.7143.0, ptr %.sroa.7143.0..sroa_idx144, align 8, !tbaa !453
  %.sroa.8148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.8148.0.copyload, ptr %.sroa.8148.0..sroa_idx149, align 4
  store ptr %.sroa.0129.0, ptr %4, align 8, !tbaa !452
  %.sroa.7.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx133, align 8, !tbaa !453
  %.sroa.8.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx137, align 4
  tail call fastcc void @_ZN12_GLOBAL__N_115X86DAGToDAGISel14matchVPTERNLOGEPN4llvm6SDNodeES3_S3_S3_NS1_7SDValueES4_S4_h(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr noundef %.0169, ptr noundef %.0168, ptr noundef %.0167, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, i8 noundef zeroext %spec.select)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i11.i51, %bb.bj, %_ZNK4llvm7SDValue9hasOneUseEv.exit20.i62, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i46, %bb.ai, %bb.e, %bb.b, %bb.a, %_ZNK4llvm3MVT14is512BitVectorEv.exit, %bb.c
  %.237 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %_ZNK4llvm3MVT14is512BitVectorEv.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.bj ], [ false, %bb.ai ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit20.i62 ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i46 ], [ false, %.lr.ph.i.i11.i51 ]
  ret i1 %.237
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel10tryVPTESTMEPN4llvm6SDNodeENS1_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %7 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 14 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 15 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.632, align 8           ; 7 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 15 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca [8 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %22 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %23 = alloca [7 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %24 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !604  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !442
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !845  ; 2 uses
  switch i32 %i.h, label %bb.dx [
    i32 22, label %bb.b
    i32 17, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.sroa.0200.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !452 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !453
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.0194.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !452 ; 2 uses
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.6197.0.copyload = load i64, ptr %.sroa.6197.0..sroa_idx, align 8
  %i.j = tail call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.0200.0.copyload) #22 ; 3 uses
  %.sroa.6197.0.extract.trunc = trunc i64 %.sroa.6197.0.copyload to i32
  %.sroa.0194.0 = select i1 %i.j, ptr %.sroa.0200.0.copyload, ptr %.sroa.0194.0.copyload
  %.sroa.0200.0 = select i1 %i.j, ptr %.sroa.0194.0.copyload, ptr %.sroa.0200.0.copyload ; 9 uses
  %.sroa.7.0 = select i1 %i.j, i32 %.sroa.6197.0.extract.trunc, i32 %.sroa.7.0.copyload ; 5 uses
  %i.k = tail call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.0194.0) #22
  br i1 %i.k, label %bb.c, label %bb.dx

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0200.0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !464
  %i.n = zext i32 %.sroa.7.0 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !465 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.p = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 4 uses
  %i.q = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !465
  store i16 %i.s, ptr %7, align 2
  store ptr %.sroa.0200.0, ptr %8, align 8
  %.sroa.10184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 %.sroa.7.0, ptr %.sroa.10184.0..sroa_idx185, align 8
  %.sroa.12189.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.9.0.copyload, ptr %.sroa.12189.0..sroa_idx190, align 4
  store ptr %.sroa.0200.0, ptr %9, align 8
  %.sroa.10184.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %.sroa.7.0, ptr %.sroa.10184.0..sroa_idx187, align 8
  %.sroa.12189.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.9.0.copyload, ptr %.sroa.12189.0..sroa_idx192, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0200.0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !463  ; 2 uses
  %i.v = icmp eq i32 %i.u, 248
  br i1 %i.v, label %bb.d, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0200.0, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.w, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.aa, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.x, align 8, !tbaa !606 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.e ], [ %.sroa.018.022.i.i, %bb.d ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !443
  %i.aa = icmp ne i32 %i.z, %.sroa.7.0            ; 2 uses
  %i.ab = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %cond.i.i, label %bb.e, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.e
  %i.ac = icmp eq i32 %.214.i.i, 0
  br i1 %i.ac, label %bb.f, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread

bb.f:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0200.0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !604 ; 2 uses
  %.sroa.0159.0.copyload165 = load ptr, ptr %i.ae, align 8, !tbaa !452 ; 2 uses
  %.sroa.10.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.10.0.copyload167 = load i32, ptr %.sroa.10.0..sroa_idx166, align 8, !tbaa !453
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0159.0.copyload165, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !463
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %bb.f, %bb.c
  %i.af = phi i32 [ %.pre, %bb.f ], [ %i.u, %bb.c ]
  %.sroa.0159.0 = phi ptr [ %.sroa.0159.0.copyload165, %bb.f ], [ %.sroa.0200.0, %bb.c ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload167, %bb.f ], [ %.sroa.7.0, %bb.c ]
  %i.ag = icmp eq i32 %i.af, 193
  br i1 %i.ag, label %bb.g, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread

bb.g:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0159.0, i64 56
  %.sroa.018.022.i.i102 = load ptr, ptr %i.ah, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i103 = icmp eq ptr %.sroa.018.022.i.i102, null
  br i1 %.not23.i.i103, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread, label %.lr.ph.i.i104

bb.h:                                             ; preds = %.lr.ph.i.i104
  %.214.i.i107 = select i1 %i.al, i32 %.01224.i.i106, i32 0 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i105, i64 32
  %.sroa.018.0.i.i111 = load ptr, ptr %i.ai, align 8, !tbaa !606 ; 2 uses
  %.not.i.i112 = icmp eq ptr %.sroa.018.0.i.i111, null
  br i1 %.not.i.i112, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113, label %.lr.ph.i.i104

.lr.ph.i.i104:                                    ; preds = %bb.g, %bb.h
  %.sroa.018.025.i.i105 = phi ptr [ %.sroa.018.0.i.i111, %bb.h ], [ %.sroa.018.022.i.i102, %bb.g ] ; 2 uses
  %.01224.i.i106 = phi i32 [ %.214.i.i107, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i105, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !443
  %i.al = icmp ne i32 %i.ak, %.sroa.10.0          ; 2 uses
  %i.am = icmp ne i32 %.01224.i.i106, 0
  %cond.i.i108 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %cond.i.i108, label %bb.h, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit113:            ; preds = %bb.h
  %i.an = icmp eq i32 %.214.i.i107, 0
  br i1 %i.an, label %bb.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread

bb.i:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit113
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0159.0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !604 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false)
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread:     ; preds = %.lr.ph.i.i, %.lr.ph.i.i104, %bb.d, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.g, %bb.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit113, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 503
  %i.au = load i8, ptr %i.at, align 1, !tbaa !617, !range !18, !noundef !19
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNK4llvm3MVT14is512BitVectorEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread
  %i.aw = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.aw, 144
  br i1 %spec.select.i.i, label %bb.k, label %_ZNK4llvm3MVT14is512BitVectorEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p
  %i.ay = getelementptr i8, ptr %i.ax, i64 -16
  %.sroa.0.0.copyload.i.i.i114 = load i64, ptr %i.ay, align 16
  %i.az = icmp ne i64 %.sroa.0.0.copyload.i.i.i114, 512
  %i.ba = zext i1 %i.az to i8
  br label %_ZNK4llvm3MVT14is512BitVectorEv.exit

_ZNK4llvm3MVT14is512BitVectorEv.exit:             ; preds = %bb.k, %bb.j, %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread
  %i.bb = phi i8 [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit113.thread ], [ 1, %bb.j ], [ %i.ba, %bb.k ]
  store i8 %i.bb, ptr %i.a, align 1, !tbaa !862
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.a, ptr %10, align 8, !tbaa !858
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.bc, align 8, !tbaa !863
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %7, ptr %i.bd, align 8, !tbaa !866
  %i.be = load ptr, ptr %8, align 8
  %i.bf = load ptr, ptr %9, align 8
  %i.bg = icmp ne ptr %i.be, %i.bf
  %i.bh = load i32, ptr %.sroa.10184.0..sroa_idx185, align 8
  %i.bi = load i32, ptr %.sroa.10184.0..sroa_idx187, align 8
  %i.bj = icmp ne i32 %i.bh, %i.bi
  %.not3.i = select i1 %i.bg, i1 true, i1 %i.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr null, ptr %11, align 8, !tbaa !442
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr null, ptr %12, align 8, !tbaa !442
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr null, ptr %13, align 8, !tbaa !442
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr null, ptr %14, align 8, !tbaa !442
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr null, ptr %15, align 8, !tbaa !442
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %i.bo, align 8, !tbaa !443
  br i1 %.not3.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit
  %i.bp = call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_115X86DAGToDAGISel10tryVPTESTMEPN4llvm6SDNodeENS1_7SDValueES4_ENK3$_0clES3_S3_RS4_S6_S6_S6_S6_S6_"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %1, ptr noundef %.sroa.0200.0, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %15)
  br i1 %i.bp, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_115X86DAGToDAGISel10tryVPTESTMEPN4llvm6SDNodeENS1_7SDValueES4_ENK3$_0clES3_S3_RS4_S6_S6_S6_S6_S6_"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %1, ptr noundef %.sroa.0200.0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %15)
  br i1 %i.bq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %i.br = load ptr, ptr %9, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !463
  %i.bu = icmp eq i32 %i.bt, 849
  br label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit, %bb.m, %bb.o
  %.099.shrunk230 = phi i1 [ true, %bb.o ], [ false, %bb.m ], [ false, %_ZNK4llvm3MVT14is512BitVectorEv.exit ] ; 2 uses
  %i.bv = phi i1 [ %i.bu, %bb.o ], [ false, %bb.m ], [ false, %_ZNK4llvm3MVT14is512BitVectorEv.exit ] ; 2 uses
  %.not = icmp eq ptr %4, null                    ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !600
  store i64 %i.bx, ptr %16, align 8, !tbaa !600
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_115X86DAGToDAGISel17tryMatchBitSelectEPN4llvm6SDNodeE:bb.a
bb.o:                                             ; preds = %bb.m
  %i.az = icmp eq ptr %.sroa.032.0.copyload34, %.sroa.045.0.copyload
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.bb, %.sroa.749.0.copyload
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.p, label %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload39, %bb.n ], [ %i.av, %bb.o ] ; 2 uses
  %.sroa.032.0 = phi ptr [ %.sroa.032.0.copyload34, %bb.n ], [ %i.as, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !600
  store i64 %i.bf, ptr %3, align 8, !tbaa !600
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !601
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !446
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !329
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bk, i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bl, 1
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !329
  store ptr %.sroa.045.0.copyload, ptr %4, align 8, !tbaa !452
  %.sroa.749.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.749.0.copyload, ptr %.sroa.749.0..sroa_idx50, align 8, !tbaa !453
  %.sroa.955.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.955.0.copyload, ptr %.sroa.955.0..sroa_idx56, align 4
  store ptr %.sroa.032.0, ptr %5, align 8, !tbaa !452
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !453
  store ptr %.fca.0.extract2, ptr %6, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !453
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bm, i32 noundef 952, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #22
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bn, 0 ; 5 uses
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %.fca.0.extract)
  store ptr %.sroa.045.0.copyload, ptr %7, align 8, !tbaa !452
  %.sroa.749.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.749.0.copyload, ptr %.sroa.749.0..sroa_idx52, align 8, !tbaa !453
  %.sroa.955.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.955.0.copyload, ptr %.sroa.955.0..sroa_idx58, align 4
  store ptr %.sroa.032.0, ptr %8, align 8, !tbaa !452
  %.sroa.7.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx36, align 8, !tbaa !453
  call fastcc void @_ZN12_GLOBAL__N_115X86DAGToDAGISel14matchVPTERNLOGEPN4llvm6SDNodeES3_S3_S3_NS1_7SDValueES4_S4_h(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef %.fca.0.extract, ptr noundef %.fca.0.extract, ptr noundef %.fca.0.extract, ptr noundef %.fca.0.extract, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %2, i8 noundef zeroext -54)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK4llvm3MVT14is512BitVectorEv.exit.thread

_ZNK4llvm3MVT14is512BitVectorEv.exit.thread:      ; preds = %.lr.ph.i.i, %.lr.ph.i.i16, %bb.p, %bb.o, %bb.k, %bb.i, %bb.d, %_ZNK4llvm7SDValue9hasOneUseEv.exit25, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.h, %bb.g, %_ZNK4llvm3MVT14is512BitVectorEv.exit, %bb.a, %bb.b
  %.2 = phi i1 [ false, %bb.k ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZNK4llvm3MVT14is512BitVectorEv.exit ], [ false, %.lr.ph.i.i16 ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit25 ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.o ], [ true, %bb.p ], [ false, %.lr.ph.i.i ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG16shouldOptForSizeEv(ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115X86DAGToDAGISel36shouldAvoidImmediateInstFormsForSizeEPN4llvm6SDNodeE(ptr nonnull %.72.val, ptr nofree noundef readonly captures(address) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG16shouldOptForSizeEv(ptr noundef nonnull align 8 dereferenceable(920) %.72.val) #22
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.08.022 = load ptr, ptr %i.b, align 8, !tbaa !606 ; 2 uses
  %.not2123 = icmp eq ptr %.sroa.08.022, null
  br i1 %.not2123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.thread
  %.sroa.08.025 = phi ptr [ %.sroa.08.022, %.lr.ph ], [ %.sroa.08.0, %.critedge.thread ] ; 2 uses
  %.03024 = phi i32 [ 0, %.lr.ph ], [ %.232.ph, %.critedge.thread ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = icmp ugt i32 %.03024, 1
  br i1 %i.g, label %._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !463  ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %.03024, 1
  br label %.critedge.thread

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.i, 317
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !604
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !442
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw nsw i32 %.03024, 1
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.t = load i16, ptr %i.s, align 8, !tbaa !628
  %.not = icmp eq i16 %i.t, 2
  br i1 %.not, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %i.c, align 8, !tbaa !463
  switch i32 %i.u, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.j, %bb.j
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !467  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !469  ; 3 uses
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !471
  %i.ab = icmp eq i32 %i.y, 0
  %i.ac = sub nuw nsw i32 64, %i.y
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = shl i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, %i.ad
  %.0.i.i.i.i = select i1 %i.ab, i64 0, i64 %i.af
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.l:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !471
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = add i64 %.0.i.i.i, 128
  %i.aj = icmp ult i64 %i.ai, 256
  br i1 %i.aj, label %.critedge.thread, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread: ; preds = %bb.j, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  switch i32 %i.i, label %.critedge [
    i32 540, label %bb.m
    i32 59, label %bb.m
    i32 823, label %bb.m
    i32 60, label %bb.m
  ]

bb.m:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !604 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !452 ; 2 uses
  %i.am = icmp eq ptr %.sroa.02.0.copyload, %0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.02.0.copyload5 = load ptr, ptr %i.an, align 8, !tbaa !452
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.02.0 = phi ptr [ %.sroa.02.0.copyload5, %bb.n ], [ %.sroa.02.0.copyload, %bb.m ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !463
  %i.aq = icmp eq i32 %i.ap, 52
  br i1 %i.aq, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !604
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !442 ; 3 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !463
  %i.ax = icmp eq i32 %i.aw, 10
  br i1 %i.ax, label %_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit, label %.critedge

_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit: ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.ay, align 8, !tbaa !453
  switch i32 %.sroa.0.0.copyload.i40, label %.critedge [
    i32 33, label %.critedge.thread
    i32 61, label %.critedge.thread
  ]

.critedge:                                        ; preds = %_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %bb.p, %bb.q, %bb.o
  %i.az = add nuw nsw i32 %.03024, 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit, %_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit, %bb.i, %bb.e, %bb.h, %.critedge, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %.232.ph = phi i32 [ %.03024, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ %i.az, %.critedge ], [ %.03024, %bb.i ], [ %i.r, %bb.h ], [ %i.k, %bb.e ], [ %.03024, %_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit ], [ %.03024, %_ZN4llvm16dyn_cast_or_nullINS_14RegisterSDNodeENS_6SDNodeEEEDaPT0_.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 32
  %.sroa.08.0 = load ptr, ptr %i.ba, align 8, !tbaa !606 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.08.0, null
  br i1 %.not21, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c, %.critedge.thread
  %.3.ph = phi i32 [ %.232.ph, %.critedge.thread ], [ 2, %bb.c ]
  %i.bb = icmp samesign ugt i32 %.3.ph, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %bb.a
  %.033 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.bb, %._crit_edge.loopexit ]
  ret i1 %.033
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef %1, ptr %2, i32 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %7, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %8) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !463
  %i.c = icmp ne i32 %i.b, 316
  %.not3.i.i = icmp eq ptr %2, null
  %.not.i.i = or i1 %.not3.i.i, %i.c
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeES3_NS1_7SDValueERS4_S5_S5_S5_S5_.exit, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.i

_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 3072
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeES3_NS1_7SDValueERS4_S5_S5_S5_S5_.exit

bb.b:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.i
  %i.h = tail call noundef zeroext i1 @_ZNK12_GLOBAL__N_115X86DAGToDAGISel18IsProfitableToFoldEN4llvm7SDValueEPNS1_6SDNodeES4_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr nonnull %2, i32 %3, ptr noundef %1, ptr noundef %1)
  br i1 %i.h, label %bb.c, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeES3_NS1_7SDValueERS4_S5_S5_S5_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.j = load i32, ptr %i.i, align 8, !tbaa !623
  %i.k = tail call noundef zeroext i1 @_ZN4llvm16SelectionDAGISel13IsLegalToFoldENS_7SDValueEPNS_6SDNodeES3_NS_15CodeGenOptLevelEb(ptr nonnull %2, i32 %3, ptr noundef %1, ptr noundef %1, i32 noundef %i.j, i1 noundef zeroext false) #22
  br i1 %i.k, label %bb.d, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeES3_NS1_7SDValueERS4_S5_S5_S5_S5_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !604  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !452
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !453
  %i.o = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel10selectAddrEPN4llvm6SDNodeENS1_7SDValueERS4_S5_S5_S5_S5_b(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %2, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i1 noundef zeroext true)
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeES3_NS1_7SDValueERS4_S5_S5_S5_S5_.exit

_ZN12_GLOBAL__N_115X86DAGToDAGISel11tryFoldLoadEPN4llvm6SDNodeES3_NS1_7SDValueERS4_S5_S5_S5_S5_.exit: ; preds = %bb.a, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.i, %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.o, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTES3_NS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i32 noundef, i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1, i32 noundef range(i32 2, 57) %2, ptr noundef nonnull align 8 dereferenceable(520) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !452 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !463
  %.not.i = icmp eq i32 %i.b, 52
  br i1 %.not.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !604
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !442
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 8, !tbaa !453 ; 3 uses
  %i.h = icmp slt i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.h, label %bb.c, label %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @_ZNK4llvm19MachineRegisterInfo16getLiveInPhysRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %3, i32 %.sroa.0.0.copyload.i.i) #22
  br label %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit"

"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit": ; preds = %bb.b, %bb.c
  %.sroa.05.1.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i32 %.sroa.05.1.i, %2
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit"
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !452 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !463
  %.not.i10 = icmp eq i32 %i.l, 52
  br i1 %.not.i10, label %bb.e, label %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13.thread"

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !604
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !442
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.0.0.copyload.i.i12 = load i32, ptr %i.q, align 8, !tbaa !453 ; 3 uses
  %i.r = icmp slt i32 %.sroa.0.0.copyload.i.i12, 0
  br i1 %i.r, label %bb.f, label %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13"

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @_ZNK4llvm19MachineRegisterInfo16getLiveInPhysRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %3, i32 %.sroa.0.0.copyload.i.i12) #22
  br label %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13"

"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13": ; preds = %bb.e, %bb.f
  %.sroa.05.1.i11 = phi i32 [ %.sroa.0.0.copyload.i.i12, %bb.e ], [ %i.s, %bb.f ]
  %.not = icmp eq i32 %.sroa.05.1.i11, %2
  br i1 %.not, label %.critedge, label %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13.thread"

"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13.thread": ; preds = %bb.d, %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13"
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !609
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !609
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit", %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13.thread", %"_ZZL14orderRegForMulRN4llvm7SDValueES1_jRKNS_19MachineRegisterInfoEENK3$_0clES0_.exit13"
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG14getCopyFromRegENS_7SDValueERKNS_5SDLocENS_8RegisterENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 %4, ptr noundef byval(%"struct.llvm::EVT") align 8 %5, ptr noundef byval(%"class.llvm::SDValue") align 8 %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %8 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %9 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %.sroa.011.0.copyload = load i16, ptr %5, align 8, !tbaa !465 ; 2 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.213.0.copyload = load ptr, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !603 ; 2 uses
  store i16 249, ptr %7, align 8, !tbaa !621
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !622
  %i.b = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.011.0.copyload, ptr %.sroa.213.0.copyload, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %7) #22 ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %1, ptr %8, align 16, !tbaa !452
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %.sroa.218.0..sroa_idx, align 8, !tbaa !453
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 %4, i16 %.sroa.011.0.copyload, ptr %.sroa.213.0.copyload) #22 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.f, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.f, 1
  store ptr %.fca.0.extract3, ptr %i.e, align 16
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.fca.1.extract4, ptr %.sroa.26.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !609
  %i.h = load ptr, ptr %6, align 8, !tbaa !442
  %.not = icmp eq ptr %i.h, null
  %i.i = select i1 %.not, i64 2, i64 3
  store ptr %8, ptr %9, align 8, !tbaa !610
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !613
  %i.k = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.c, i32 %i.d, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret { ptr, i32 } %i.k
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG13SignBitIsZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115X86DAGToDAGISel17hasNoSignFlagUsesEN4llvm7SDValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(968) %0, ptr nofree readonly captures(none) %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.042.065 = load ptr, ptr %i.a, align 8, !tbaa !606 ; 2 uses
  %.not5666 = icmp eq ptr %.sroa.042.065, null
  br i1 %.not5666, label %.critedge.thread, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph69, %.critedge
  %.sroa.042.067 = phi ptr [ %.sroa.042.065, %.lr.ph69 ], [ %.sroa.042.0, %.critedge ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.042.067, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !443
  %.not = icmp eq i32 %i.d, %2
  br i1 %.not, label %bb.c, label %.critedge
end_hunk_6
begin_hunk_7_@_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE18growAndEmplaceBackIJEEERS2_DpOT_:bb.a
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !967

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorImLj4EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.ac = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit.loopexit ], [ %i.k, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i ] ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ae = icmp eq ptr %i.ac, %i.b
  br i1 %i.ae, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE21takeAllocationForGrowEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit
  call void @free(ptr noundef %i.ac) #22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE21takeAllocationForGrowEPS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE21takeAllocationForGrowEPS2_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorImLj4EEELb0EE19moveElementsForGrowEPS2_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.af = trunc i64 %i.ad to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !449
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !448
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !448
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.al
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #22
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !453
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !453
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !449
  store i32 0, ptr %i.j, align 8, !tbaa !448
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !448  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !448  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !968

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.t, ptr %i.s, align 8, !tbaa !28
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !448
  store i32 0, ptr %i.m, align 8, !tbaa !448
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !449
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !448
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #22
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !632

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.z, ptr %i.y, align 8, !tbaa !28
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !448
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !448
  store i32 0, ptr %i.m, align 8, !tbaa !448
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12matchAddressEN4llvm7SDValueERNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(119) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef 0)
  br i1 %i.a, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 522
  %i.e = load i8, ptr %i.d, align 2, !tbaa !472, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.h = load i8, ptr %i.g, align 2, !range !18
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %3, align 8, !tbaa !717
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !442  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !442
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = load i64, ptr %.sroa.544.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !463
  %.not48 = icmp eq i32 %i.t, 316
  br i1 %.not48, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !452
  store i32 0, ptr %.sroa.544.0..sroa_idx, align 8, !tbaa !453
  %i.u = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel18matchLoadInAddressEPN4llvm10LoadSDNodeERNS_18X86ISelAddressModeEb(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(119) %3, i1 noundef zeroext true)
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.m, align 8, !tbaa !452
  %.sroa.544.0.extract.trunc = trunc i64 %i.r to i32
  store i32 %.sroa.544.0.extract.trunc, ptr %.sroa.544.0..sroa_idx, align 8, !tbaa !453
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !723
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %3, align 8, !tbaa !717
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !442
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i64 12, i1 false), !tbaa.struct !609
  store i32 1, ptr %i.v, align 4, !tbaa !723
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !627, !nonnull !19, !align !325 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1052
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !795
  %.not38 = icmp eq i32 %i.ah, 4
  br i1 %.not38, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !916 ; 2 uses
  %.not39 = icmp eq ptr %i.aj, null
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine18isLargeGlobalValueEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1728) %i.af, ptr noundef nonnull %i.aj) #22
  br i1 %i.ak, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 522
  %i.an = load i8, ptr %i.am, align 2, !tbaa !472, !range !18, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.v, align 4, !tbaa !723
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ar = load i32, ptr %3, align 8, !tbaa !717
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !442
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !442
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 117
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !727
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bc = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv(ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.bc, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !926 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit: ; preds = %bb.w
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !969
  %i.bf = icmp eq i8 %i.be, 14
  br i1 %i.bf, label %bb.x, label %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit.thread

bb.x:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !724
  %i.bi = icmp slt i32 %i.bh, -16777216
  br i1 %i.bi, label %bb.y, label %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit.thread: ; preds = %bb.w, %bb.x, %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !329
  %i.bl = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bk, i32 58, i16 8, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract, ptr %i.at, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !453
  br label %bb.y

bb.y:                                             ; preds = %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit.thread, %bb.x, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.x ], [ false, %_ZN4llvm15isa_and_nonnullIJNS_8FunctionEEPKNS_11GlobalValueEEEbRKT0_.exit.thread ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef range(i32 0, 7) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::HandleSDNode", align 8 ; 26 uses
  %6 = alloca %"struct.(anonymous namespace)::X86ISelAddressMode", align 8 ; 6 uses
  %7 = alloca %"class.llvm::HandleSDNode", align 8 ; 26 uses
  %.sroa.0500 = alloca <{ i32, [4 x i8], %"class.llvm::SDValue", i32, i32, %"class.llvm::SDValue" }>, align 8 ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 17 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 17 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 10 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = icmp samesign ugt i32 %4, 5
  %i.b = load i32, ptr %3, align 8, !tbaa !717    ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !442
  %.not11.i = icmp eq ptr %i.d, null
  br i1 %.not11.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !442
  %.not12.i = icmp eq ptr %i.f, null
  br i1 %.not12.i, label %bb.e, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.e, align 8, !tbaa !452
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !453
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.g, align 4, !tbaa !723
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.f:                                             ; preds = %bb.c
  store ptr %1, ptr %i.c, align 8, !tbaa !452
  %.sroa.3.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %.sroa.3.0..sroa_idx8.i, align 8, !tbaa !453
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %.val369 = load ptr, ptr %i.h, align 8          ; 3 uses
  %.not.i370 = icmp ne i32 %i.b, 0
  %.not.i.i.i = icmp eq ptr %.val369, null        ; 4 uses
  %or.cond.i = select i1 %.not.i370, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %.val369, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !463
  %i.k = icmp eq i32 %i.j, 10
  br i1 %i.k, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit: ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.val369, i64 88
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 8, !tbaa !453
  %i.m = icmp eq i32 %.sroa.0.0.copyload.i.i, 58
  br i1 %i.m, label %bb.i, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !918
  %.not353 = icmp eq ptr %i.o, null
  br i1 %.not353, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !919
  %.not354 = icmp eq ptr %i.q, null
  br i1 %.not354, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.s = load i32, ptr %i.r, align 8, !tbaa !725
  %.not355 = icmp eq i32 %i.s, -1
  br i1 %.not355, label %bb.l, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !463
  switch i32 %i.u, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.l, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !467  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !469  ; 3 uses
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !471
  %i.ac = icmp eq i32 %i.z, 0
  %i.ad = sub nuw nsw i32 64, %i.z
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.ab, %i.ae
  %i.ag = ashr exact i64 %i.af, %i.ae
  %.0.i.i.i.i = select i1 %i.ac, i64 0, i64 %i.ag
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.n:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !471
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.m, %bb.n
  %.0.i.i.i371 = phi i64 [ %.0.i.i.i.i, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel21foldOffsetIntoAddressEmRNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %.0.i.i.i371, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.aj, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.l, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread: ; preds = %bb.h, %bb.g, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !463
  switch i32 %i.al, label %.thread [
    i32 28, label %bb.o
    i32 12, label %bb.s
    i32 988, label %bb.v
    i32 989, label %bb.v
    i32 316, label %bb.w
    i32 16, label %bb.x
    i32 198, label %bb.ab
    i32 200, label %bb.ae
    i32 66, label %bb.ak
    i32 67, label %bb.ak
    i32 61, label %bb.al
    i32 755, label %bb.al
    i32 60, label %bb.aw
    i32 194, label %bb.bh
    i32 195, label %bb.bh
    i32 59, label %bb.bi
    i32 193, label %bb.br
    i32 228, label %bb.bz
  ]

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ap = load <2 x ptr>, ptr %i.am, align 8
  %i.aq = load <2 x ptr>, ptr %i.an, align 8
  %i.ar = shufflevector <2 x ptr> %i.ap, <2 x ptr> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x ptr> %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.at = load i32, ptr %i.as, align 8
  %.not4.i746 = icmp eq i32 %i.at, -1
  %i.au = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp eq i4 %i.av, 0
  %op.rdx = select i1 %i.aw, i1 %.not4.i746, i1 false
  br i1 %op.rdx, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit747, label %.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit747: ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !920
  %.not748 = icmp eq ptr %i.ay, null
  br i1 %.not748, label %bb.p, label %.thread

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit747
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !724
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !604
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !442 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !463
  %i.bh = icmp ne i32 %i.bg, 46
  %.not352.not713 = icmp eq ptr %i.be, null
  %.not352.not = or i1 %.not352.not713, %i.bh
  br i1 %.not352.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !936
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !919
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.s:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !467 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj:bb.a
  %brmerge700.not = select i1 %or.cond, i1 %.not.i.i.i, i1 false
  br i1 %brmerge700.not, label %bb.am, label %.thread

bb.al:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %.old = icmp eq i32 %i.b, 0
  %brmerge702.not = select i1 %.old, i1 %.not.i.i.i, i1 false
  br i1 %brmerge702.not, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !442
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !604 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !442 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !463
  switch i32 %i.fe, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382: ; preds = %bb.an, %bb.an
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !467 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !469
  %i.fk = icmp ult i32 %i.fj, 65                  ; 2 uses
  %i.fl = load ptr, ptr %i.fh, align 8
  %spec.select.i.i.i383 = select i1 %i.fk, ptr %i.fh, ptr %i.fl
  %.0.i.i.i384 = load i64, ptr %spec.select.i.i.i383, align 8, !tbaa !471 ; 2 uses
  switch i64 %.0.i.i.i384, label %.thread [
    i64 3, label %bb.ao
    i64 5, label %bb.ao
    i64 9, label %bb.ao
  ]

bb.ao:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382
  %i.fm = trunc nuw nsw i64 %.0.i.i.i384 to i32
  %i.fn = add nsw i32 %i.fm, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !723
  %.sroa.0580.0.copyload = load ptr, ptr %i.fa, align 8, !tbaa !452 ; 8 uses
  %.sroa.8585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.8585.0.copyload = load i32, ptr %.sroa.8585.0..sroa_idx, align 8, !tbaa !453 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0580.0.copyload, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !463
  %i.fr = icmp eq i32 %i.fq, 59
  br i1 %i.fr, label %bb.ap, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0580.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.fs, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.fw, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.ft, align 8, !tbaa !606 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %bb.aq
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.aq ], [ %.sroa.018.022.i.i, %bb.ap ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !443
  %i.fw = icmp ne i32 %i.fv, %.sroa.8585.0.copyload ; 2 uses
  %i.fx = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %cond.i.i, label %bb.aq, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.aq
  %i.fy = icmp eq i32 %.214.i.i, 0
  br i1 %i.fy, label %bb.ar, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.ar:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0580.0.copyload, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !604 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !442 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !463
  switch i32 %i.ge, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread [
    i32 37, label %bb.as
    i32 12, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %.sroa.0568.0.copyload = load ptr, ptr %i.ga, align 8, !tbaa !452
  %.sroa.7572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.7572.0.copyload = load i32, ptr %.sroa.7572.0..sroa_idx, align 8, !tbaa !453
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !467 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !469 ; 3 uses
  %i.gk = icmp ult i32 %i.gj, 65
  br i1 %i.gk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gl = load i64, ptr %i.gh, align 8, !tbaa !471
  %i.gm = icmp eq i32 %i.gj, 0
  %i.gn = sub nuw nsw i32 64, %i.gj
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = shl i64 %i.gl, %i.go
  %i.gq = ashr exact i64 %i.gp, %i.go
  %.0.i.i.i.i393 = select i1 %i.gm, i64 0, i64 %i.gq
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394

bb.au:                                            ; preds = %bb.as
  %i.gr = load ptr, ptr %i.gh, align 8, !tbaa !471
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394: ; preds = %bb.at, %bb.au
  %.0.i.i.i392 = phi i64 [ %.0.i.i.i.i393, %bb.at ], [ %i.gs, %bb.au ]
  %i.gt = load ptr, ptr %i.fh, align 8
  %spec.select.i.i.i395 = select i1 %i.fk, ptr %i.fh, ptr %i.gt
  %.0.i.i.i396 = load i64, ptr %spec.select.i.i.i395, align 8, !tbaa !471
  %i.gu = mul i64 %.0.i.i.i396, %.0.i.i.i392
  %i.gv = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel21foldOffsetIntoAddressEmRNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.gv, label %bb.av, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.av:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394
  %i.gw = load ptr, ptr %i.ez, align 8, !tbaa !604 ; 2 uses
  %.sroa.0568.0.copyload569 = load ptr, ptr %i.gw, align 8, !tbaa !452
  %.sroa.7572.0..sroa_idx573 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.sroa.7572.0.copyload574 = load i32, ptr %.sroa.7572.0..sroa_idx573, align 8, !tbaa !453
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %bb.ar, %bb.ap, %bb.av, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.ao
  %.sroa.0568.0 = phi ptr [ %.sroa.0568.0.copyload569, %bb.av ], [ %.sroa.0568.0.copyload, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394 ], [ %.sroa.0580.0.copyload, %bb.ap ], [ %.sroa.0580.0.copyload, %bb.ao ], [ %.sroa.0580.0.copyload, %bb.ar ], [ %.sroa.0580.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.0580.0.copyload, %.lr.ph.i.i ]
  %.sroa.7572.0 = phi i32 [ %.sroa.7572.0.copyload574, %bb.av ], [ %.sroa.7572.0.copyload, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit394 ], [ %.sroa.8585.0.copyload, %bb.ap ], [ %.sroa.8585.0.copyload, %bb.ao ], [ %.sroa.8585.0.copyload, %bb.ar ], [ %.sroa.8585.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.8585.0.copyload, %.lr.ph.i.i ]
  store ptr %.sroa.0568.0, ptr %i.h, align 8, !tbaa !452
  %.sroa.7572.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.7572.0, ptr %.sroa.7572.0..sroa_idx577, align 8, !tbaa !453
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !609
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.aw:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.gx = tail call noundef ptr @_ZN4llvm6SDNode16getValueTypeListENS_3MVTE(i16 1) #22
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 24, i1 false)
  store i32 346, ptr %i.gy, align 8, !tbaa !463
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %i.gz, align 4, !tbaa !922
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 34
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 -1, ptr %i.hb, align 4, !tbaa !656
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.gx, ptr %i.hd, align 8, !tbaa !464
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr null, ptr %i.he, align 8, !tbaa !641
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 66
  store i16 1, ptr %i.hf, align 2, !tbaa !658
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 0, ptr %i.hg, align 4, !tbaa !601
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr null, ptr %i.hh, align 8, !tbaa !600
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i32 -1, ptr %i.hi, align 8, !tbaa !471
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 0, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i32 0, ptr %i.hj, align 4
  store i16 -1, ptr %i.ha, align 2, !tbaa !923
  store ptr %7, ptr %i.hn, align 8, !tbaa !614
  store ptr %1, ptr %i.hl, align 8, !tbaa !452
  store i32 %2, ptr %i.hm, align 8, !tbaa !453
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !606 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !710
  %.not.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !924
  br label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit

_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit:       ; preds = %bb.aw, %bb.ax
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.hp, ptr %i.ho, align 8, !tbaa !924
  store ptr %i.hl, ptr %i.hp, align 8, !tbaa !606
  store i16 1, ptr %i.ht, align 8, !tbaa !628
  store ptr %i.hl, ptr %i.hc, align 8, !tbaa !604
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0500)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0500, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !925
  %.sroa.6500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %21 = load <2 x i32>, ptr %.sroa.6500.0..sroa_idx, align 8
  %.sroa.7507.0.copyload = load i32, ptr %.sroa.6500.0..sroa_idx, align 8, !tbaa !453
  %.sroa.7514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %.sroa.7514.0.copyload = load ptr, ptr %.sroa.7514.0..sroa_idx, align 8, !tbaa !452 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.hu = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %.sroa.8524.0.copyload = load ptr, ptr %.sroa.8524.0..sroa_idx, align 8, !tbaa !926 ; 2 uses
  %.sroa.9531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %.sroa.9531.0.copyload = load ptr, ptr %.sroa.9531.0..sroa_idx, align 8, !tbaa !927 ; 2 uses
  %.sroa.10538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %.sroa.10538.0.copyload = load ptr, ptr %.sroa.10538.0..sroa_idx, align 8, !tbaa !928 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !929 ; 2 uses
  %.sroa.13.0..sroa_idx557 = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %.sroa.13.0.copyload558 = load i32, ptr %.sroa.13.0..sroa_idx557, align 8, !tbaa !453 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  %i.hv = load i32, ptr %.sroa.14.0..sroa_idx, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !604 ; 2 uses
  %.sroa.0167.0.copyload = load ptr, ptr %i.hx, align 8, !tbaa !452
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.2168.0.copyload = load i32, ptr %.sroa.2168.0..sroa_idx, align 8, !tbaa !453
  %i.hy = add nuw nsw i32 %4, 1
  %i.hz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.0167.0.copyload, i32 %.sroa.2168.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.hy)
  %.sroa.0592.0.copyload = load ptr, ptr %i.hl, align 8, !tbaa !452 ; 2 uses
  %.sroa.55.0.copyload = load i32, ptr %i.hm, align 8, !tbaa !453
  br i1 %i.hz, label %.thread673, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !442
  %.not340 = icmp eq ptr %i.ib, null
  br i1 %.not340, label %bb.az, label %.thread673

bb.az:                                            ; preds = %bb.ay
  %.val = load i32, ptr %3, align 8, !tbaa !717   ; 2 uses
  %.val367 = load ptr, ptr %i.h, align 8          ; 4 uses
  %.not.i397 = icmp ne i32 %.val, 0
  %.not.i.i.i398 = icmp eq ptr %.val367, null     ; 2 uses
  %or.cond.i399 = select i1 %.not.i397, i1 true, i1 %.not.i.i.i398
  br i1 %or.cond.i399, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ic = getelementptr inbounds nuw i8, ptr %.val367, i64 24
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !463
  %i.ie = icmp eq i32 %i.id, 10
  br i1 %i.ie, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402: ; preds = %bb.ba
  %i.if = getelementptr inbounds nuw i8, ptr %.val367, i64 88
  %.sroa.0.0.copyload.i.i401 = load i32, ptr %i.if, align 8, !tbaa !453
  %i.ig = icmp eq i32 %.sroa.0.0.copyload.i.i401, 58
  br i1 %i.ig, label %.thread673, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402.thread: ; preds = %bb.ba, %bb.az, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0592.0.copyload, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !604 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %.sroa.0490.0.copyload = load ptr, ptr %i.ij, align 8, !tbaa !452 ; 4 uses
  %.sroa.10497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ik = load i64, ptr %.sroa.10497.0..sroa_idx, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0490.0.copyload, i64 56
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !641 ; 2 uses
  %.not.i.i403 = icmp eq ptr %i.im, null
  br i1 %.not.i.i403, label %.critedge, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402.thread
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !710
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0490.0.copyload, i64 24
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !463
  switch i32 %i.ir, label %.critedge6 [
    i32 52, label %.critedge
    i32 230, label %.critedge
    i32 229, label %.critedge
    i32 228, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0490.0.copyload, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !604 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !442
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !443
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !464
  %i.iz = zext i32 %i.iw to i64
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.iz ; 2 uses
  %.sroa.0.0.copyload.i.i404 = load i16, ptr %i.ja, align 8, !tbaa !465
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !603
  %.not.i.i405 = icmp eq i16 %.sroa.0.0.copyload.i.i404, 7
  %i.jb = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i405, i1 %i.jb, i1 false
  br i1 %.not4.i, label %.critedge, label %.critedge6

.critedge:                                        ; preds = %bb.bb, %bb.bb, %bb.bb, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402.thread, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.bc
  br label %.critedge6

.critedge6:                                       ; preds = %bb.bb, %.critedge, %bb.bc
  %.0322 = phi i32 [ 1, %.critedge ], [ 0, %bb.bc ], [ 0, %bb.bb ] ; 4 uses
  switch i32 %.val, label %.thread671 [
    i32 0, label %bb.bd
    i32 1, label %_ZNK4llvm6SDNode9hasOneUseEv.exit408.thread
  ]

bb.bd:                                            ; preds = %.critedge6
  br i1 %.not.i.i.i398, label %.thread671, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jc = getelementptr inbounds nuw i8, ptr %.val367, i64 56
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !641 ; 2 uses
  %.not.i.i406 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i406, label %_ZNK4llvm6SDNode9hasOneUseEv.exit408.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit408

_ZNK4llvm6SDNode9hasOneUseEv.exit408:             ; preds = %bb.be
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !710
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %.thread671, label %_ZNK4llvm6SDNode9hasOneUseEv.exit408.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit408.thread:      ; preds = %.critedge6, %bb.be, %_ZNK4llvm6SDNode9hasOneUseEv.exit408
  %i.jh = add nsw i32 %.0322, -1
  br label %.thread671

.thread671:                                       ; preds = %.critedge6, %bb.bd, %_ZNK4llvm6SDNode9hasOneUseEv.exit408, %_ZNK4llvm6SDNode9hasOneUseEv.exit408.thread
  %.1323 = phi i32 [ %i.jh, %_ZNK4llvm6SDNode9hasOneUseEv.exit408.thread ], [ %.0322, %.critedge6 ], [ %.0322, %_ZNK4llvm6SDNode9hasOneUseEv.exit408 ], [ %.0322, %bb.bd ]
  %i.ji = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv(ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.ji, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit, label %bb.bf

_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit: ; preds = %.thread671
  %.not.i409 = icmp eq ptr %.sroa.8524.0.copyload, null
  %.not1.i = icmp eq ptr %.sroa.9531.0.copyload, null
  %or.cond.i410.not706.not711 = select i1 %.not.i409, i1 %.not1.i, i1 false
  %.not2.i = icmp eq ptr %.sroa.11.0.copyload, null
  %or.cond7.i.not705.not710 = select i1 %or.cond.i410.not706.not711, i1 %.not2.i, i1 false
  %.not3.i = icmp eq ptr %.sroa.12.0.copyload, null
  %or.cond9.i.not704.not709 = select i1 %or.cond7.i.not705.not710, i1 %.not3.i, i1 false
  %.not4.i411 = icmp eq i32 %.sroa.13.0.copyload558, -1
  %or.cond11.i.not.not708 = select i1 %or.cond9.i.not704.not709, i1 %.not4.i411, i1 false
  %i.jj = icmp eq ptr %.sroa.10538.0.copyload, null
  %spec.select.not = select i1 %or.cond11.i.not.not708, i1 %i.jj, i1 false
  %i.jk = zext i1 %spec.select.not to i32
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit, %.thread671
  %i.jl = phi i32 [ 0, %.thread671 ], [ %i.jk, %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit ]
  %i.jm = load i32, ptr %.sroa.6500.0..sroa_idx, align 8, !tbaa !724
  %i.jn = icmp ne i32 %i.jm, 0
  %i.jo = icmp eq i32 %.sroa.7507.0.copyload, 0
  %i.jp = select i1 %i.jn, i1 %i.jo, i1 false
  %i.jq = zext i1 %i.jp to i32
  %i.jr = add nuw nsw i32 %i.jl, %i.jq
  %i.js = load ptr, ptr %.sroa.7514.0..sroa_idx, align 8, !tbaa !442
  %.not342 = icmp ne ptr %i.js, null
  %.not343 = icmp eq ptr %.sroa.7514.0.copyload, null
  %narrow = select i1 %.not342, i1 %.not343, i1 false
  %i.jt = zext i1 %narrow to i32
  %i.ju = add nuw nsw i32 %i.jr, %i.jt
  %i.jv = icmp samesign ugt i32 %i.ju, 1
  %i.jw = sext i1 %i.jv to i32
  %spec.select360 = add nsw i32 %.1323, %i.jw
  %i.jx = icmp sgt i32 %spec.select360, -1
  br i1 %i.jx, label %.thread673, label %bb.bg

.thread673:                                       ; preds = %bb.bf, %bb.ay, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit402, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0500, i64 48, i1 false)
  store <2 x i32> %21, ptr %.sroa.6500.0..sroa_idx, align 8
  store ptr %.sroa.7514.0.copyload, ptr %.sroa.7514.0..sroa_idx, align 8, !tbaa !452
  store i64 %i.hu, ptr %.sroa.8.0..sroa_idx, align 8
  store ptr %.sroa.8524.0.copyload, ptr %.sroa.8524.0..sroa_idx, align 8, !tbaa !926
  store ptr %.sroa.9531.0.copyload, ptr %.sroa.9531.0..sroa_idx, align 8, !tbaa !927
  store ptr %.sroa.10538.0.copyload, ptr %.sroa.10538.0..sroa_idx, align 8, !tbaa !928
  store ptr %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !26
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !929
  store i32 %.sroa.13.0.copyload558, ptr %.sroa.13.0..sroa_idx557, align 8, !tbaa !453
  %storemerge = trunc i32 %i.hv to i24
  store i24 %storemerge, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0500)
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.thread

bb.bg:                                            ; preds = %bb.bf
  store ptr %.sroa.0490.0.copyload, ptr %i.ia, align 8, !tbaa !452
  %.sroa.10497.0..sroa_idx498 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10498.0.extract.trunc = trunc i64 %i.ik to i32
  store i32 %.sroa.10498.0.extract.trunc, ptr %.sroa.10497.0..sroa_idx498, align 8, !tbaa !453
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 118
  store i8 1, ptr %i.jy, align 2, !tbaa !728
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.jz, align 4, !tbaa !723
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0500)
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.bh:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !329
  %i.kc = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG9isADDLikeENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.kb, ptr nonnull %1, i32 %2, i1 noundef zeroext false) #22
  br i1 %i.kc, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %bb.bh, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.kd = tail call noundef ptr @_ZN4llvm6SDNode16getValueTypeListENS_3MVTE(i16 1) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 24, i1 false)
  store i32 346, ptr %i.ke, align 8, !tbaa !463
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.kf, align 4, !tbaa !922
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 -1, ptr %i.kh, align 4, !tbaa !656
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.kd, ptr %i.kj, align 8, !tbaa !464
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.kk, align 8, !tbaa !641
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 66
  store i16 1, ptr %i.kl, align 2, !tbaa !658
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %i.km, align 4, !tbaa !601
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr null, ptr %i.kn, align 8, !tbaa !600
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 -1, ptr %i.ko, align 8, !tbaa !471
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 0, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 8 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.kp, align 4
  store i16 -1, ptr %i.kg, align 2, !tbaa !923
  store ptr %5, ptr %i.kt, align 8, !tbaa !614
  store ptr %1, ptr %i.kr, align 8, !tbaa !452
  store i32 %2, ptr %i.ks, align 8, !tbaa !453
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !606 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !710
  %.not.i.i.i.i469 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i469, label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit470, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  store ptr %i.kx, ptr %i.ky, align 8, !tbaa !924
  br label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit470

_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit470:    ; preds = %bb.bi, %bb.bj
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.kv, ptr %i.ku, align 8, !tbaa !924
  store ptr %i.kr, ptr %i.kv, align 8, !tbaa !606
  store i16 1, ptr %i.kz, align 8, !tbaa !628
  store ptr %i.kr, ptr %i.ki, align 8, !tbaa !604
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false), !tbaa.struct !925
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !604 ; 2 uses
  %.sroa.07.0.copyload.i = load ptr, ptr %i.lb, align 8, !tbaa !452
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.sroa.28.0.copyload.i = load i32, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !453
  %i.lc = add nuw nsw i32 %4, 1                   ; 4 uses
  %i.ld = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.07.0.copyload.i, i32 %.sroa.28.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.lc), !inline_history !970
  br i1 %i.ld, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit470
  %i.le = load ptr, ptr %i.kr, align 8, !tbaa !442
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !604 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %.sroa.04.0.copyload.i = load ptr, ptr %i.lh, align 8, !tbaa !452
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !453
  %i.li = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.04.0.copyload.i, i32 %.sroa.25.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.lc), !inline_history !970
  br i1 %i.li, label %bb.bl, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit.thread

bb.bl:                                            ; preds = %bb.bk, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %3, ptr noundef nonnull align 8 dereferenceable(119) %6, i64 119, i1 false), !tbaa.struct !925
  %i.lj = load ptr, ptr %i.kr, align 8, !tbaa !442
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !604 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %.sroa.01.0.copyload.i = load ptr, ptr %i.lm, align 8, !tbaa !452
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !453
  %i.ln = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.lc), !inline_history !970
  br i1 %i.ln, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lo = load ptr, ptr %i.kr, align 8, !tbaa !442
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !604 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.lq, align 8, !tbaa !452
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !453
  %i.lr = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.lc), !inline_history !970
  br i1 %i.lr, label %bb.bn, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit.thread

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %3, ptr noundef nonnull align 8 dereferenceable(119) %6, i64 119, i1 false), !tbaa.struct !925
  %i.ls = load i32, ptr %3, align 8, !tbaa !717
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bo, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit

bb.bo:                                            ; preds = %bb.bn
  %i.lu = load ptr, ptr %i.h, align 8, !tbaa !442
  %.not.i413 = icmp eq ptr %i.lu, null
  br i1 %.not.i413, label %bb.bp, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit

bb.bp:                                            ; preds = %bb.bo
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !442
  %.not36.i = icmp eq ptr %i.lw, null
  br i1 %.not36.i, label %bb.bq, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit

bb.bq:                                            ; preds = %bb.bp
  %.sroa.0592.0.copyload623 = load ptr, ptr %i.kr, align 8, !tbaa !452
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0592.0.copyload623, i64 40 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.ly, i64 12, i1 false), !tbaa.struct !609
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !604
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.lv, ptr noundef nonnull align 8 dereferenceable(12) %i.ma, i64 12, i1 false), !tbaa.struct !609
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.mb, align 4, !tbaa !723
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit.thread

_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit.thread: ; preds = %bb.bq, %bb.bk, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22, !inline_history !970
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit: ; preds = %bb.bn, %bb.bo, %bb.bp
  %.sroa.0592.0.copyload622 = load ptr, ptr %i.kr, align 8, !tbaa !452
  %.sroa.55.0.copyload627 = load i32, ptr %i.ks, align 8, !tbaa !453
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22, !inline_history !970
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread

bb.br:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !442
  %.not338 = icmp eq ptr %i.md, null
  br i1 %.not338, label %bb.bs, label %.thread

bb.bs:                                            ; preds = %bb.br
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !723
  %.not339 = icmp eq i32 %i.mf, 1
  br i1 %.not339, label %bb.bt, label %.thread

bb.bt:                                            ; preds = %bb.bs
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !604 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !442 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !463
  switch i32 %i.ml, label %.thread [
    i32 37, label %bb.bu
    i32 12, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  %i.mm = load ptr, ptr %i.mh, align 8, !tbaa !442 ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !463
  %i.mp = icmp eq i32 %i.mo, 200
  br i1 %i.mp, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %.sroa.7485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.sroa.7485.0.copyload = load i32, ptr %.sroa.7485.0..sroa_idx, align 8, !tbaa !453 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !604 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.mr, i64 16, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 88
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !467 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !469
  %i.mx = icmp ult i32 %i.mw, 65
  %i.my = load ptr, ptr %i.mu, align 8
  %spec.select.i.i.i.i.i415 = select i1 %i.mx, ptr %i.mu, ptr %i.my
  %.0.i.i.i.i.i416 = load i64, ptr %spec.select.i.i.i.i.i415, align 8, !tbaa !471 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !329
  %i.nb = tail call fastcc noundef zeroext i1 @_ZL25foldMaskAndShiftToExtractRN4llvm12SelectionDAGENS_7SDValueEmS2_S2_RN12_GLOBAL__N_118X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(920) %i.na, ptr nonnull %1, i32 %2, i64 noundef %.0.i.i.i.i.i416, ptr nonnull %i.mm, i32 %.sroa.7485.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.mr, ptr noundef nonnull align 8 dereferenceable(119) %3)
end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj:bb.a
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !464
  %i.rh = zext i32 %i.re to i64
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.rh
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ri, align 8, !tbaa !465 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !464
  %i.rl = zext i32 %2 to i64
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.rk, i64 %i.rl
  %.sroa.0.0.copyload.i.i.i453 = load i16, ptr %i.rm, align 8, !tbaa !465 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !600
  store i64 %i.ro, ptr %15, align 8, !tbaa !600
  %i.rp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !601
  store i32 %i.rr, ptr %i.rp, align 8, !tbaa !446
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4 ; 2 uses
  %i.rs = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
  br i1 %i.rs, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %.critedge366.thread
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNK4llvm5APInt4lshrEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %16, ptr noundef nonnull align 8 dereferenceable(12) %10, i32 noundef %i.qd)
  %i.rv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ru, ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract85 = extractvalue { ptr, i32 } %i.rv, 0 ; 2 uses
  %.fca.1.extract86 = extractvalue { ptr, i32 } %i.rv, 1
  %i.rw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !469
  %i.ry = icmp ugt i32 %i.rx, 64
  br i1 %i.ry, label %bb.cw, label %_ZN4llvm5APIntD2Ev.exit454

bb.cw:                                            ; preds = %bb.cv
  %i.rz = load ptr, ptr %16, align 8, !tbaa !471  ; 2 uses
  %i.sa = icmp eq ptr %i.rz, null
  br i1 %i.sa, label %_ZN4llvm5APIntD2Ev.exit454, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_ZdaPv(ptr noundef nonnull %i.rz) #25
  br label %_ZN4llvm5APIntD2Ev.exit454

_ZN4llvm5APIntD2Ev.exit454:                       ; preds = %bb.cv, %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract85)
  %i.sb = load ptr, ptr %i.rt, align 8, !tbaa !329
  store ptr %.fca.0.extract85, ptr %17, align 8, !tbaa !452
  %.sroa.996.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract86, ptr %.sroa.996.0..sroa_idx97, align 8, !tbaa !453
  %.sroa.13.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx101, align 4
  %i.sc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.sb, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #22 ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.sc, 0 ; 2 uses
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.sc, 1
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract71)
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit454, %.critedge366.thread
  %.sroa.093.0 = phi ptr [ %i.rc, %.critedge366.thread ], [ %.fca.0.extract71, %_ZN4llvm5APIntD2Ev.exit454 ]
  %.sroa.996.0 = phi i32 [ %i.re, %.critedge366.thread ], [ %.fca.1.extract72, %_ZN4llvm5APIntD2Ev.exit454 ]
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !329
  store ptr %.sroa.093.0, ptr %18, align 8, !tbaa !452
  %.sroa.996.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.996.0, ptr %.sroa.996.0..sroa_idx99, align 8, !tbaa !453
  %.sroa.13.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx103, align 4
  %i.sf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.se, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i453, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #22 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.sf, 0 ; 3 uses
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.sf, 1 ; 2 uses
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract58)
  %i.sg = load ptr, ptr %i.sd, align 8, !tbaa !329
  store ptr %.fca.0.extract58, ptr %19, align 8, !tbaa !452
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract59, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !453
  store ptr %.sroa.0479.0.copyload, ptr %20, align 8, !tbaa !452
  %.sroa.5.0..sroa_idx481 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.pt, ptr %.sroa.5.0..sroa_idx481, align 8
  %i.sh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.sg, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i453, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #22 ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.sh, 0 ; 2 uses
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.sh, 1
  call fastcc void @_ZL13insertDAGNodeRN4llvm12SelectionDAGENS_7SDValueES2_(ptr nonnull %1, ptr %.fca.0.extract43)
  %i.si = load ptr, ptr %i.sd, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.si, ptr nonnull %1, i32 %2, ptr %.fca.0.extract43, i32 %.fca.1.extract44) #22
  %i.sj = load ptr, ptr %i.sd, align 8, !tbaa !329
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.sj, ptr noundef nonnull %1) #22
  %i.sk = shl nuw nsw i32 1, %i.qd
  store i32 %i.sk, ptr %i.nn, align 4, !tbaa !723
  %i.sl = add nuw nsw i32 %4, 1
  %i.sm = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_115X86DAGToDAGISel21matchIndexRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.fca.0.extract58, i32 %.fca.1.extract59, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.sl) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.sm, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.sm, 1
  store ptr %.fca.0.extract, ptr %i.nl, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !453
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.cz

bb.cz:                                            ; preds = %.critedge366, %bb.cy
  %i.sn = phi i1 [ true, %bb.cy ], [ false, %.critedge366 ]
  %i.so = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !469
  %i.sq = icmp ugt i32 %i.sp, 64
  br i1 %i.sq, label %bb.da, label %_ZN4llvm5APIntD2Ev.exit455

bb.da:                                            ; preds = %bb.cz
  %i.sr = load ptr, ptr %12, align 8, !tbaa !471  ; 2 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %_ZN4llvm5APIntD2Ev.exit455, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZdaPv(ptr noundef nonnull %i.sr) #25
  br label %_ZN4llvm5APIntD2Ev.exit455

_ZN4llvm5APIntD2Ev.exit455:                       ; preds = %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit448.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit448.thread: ; preds = %bb.cl, %_ZN4llvm5APIntD2Ev.exit455, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit448
  %.15319 = phi i1 [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit448 ], [ %i.sn, %_ZN4llvm5APIntD2Ev.exit455 ], [ false, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dg

bb.dc:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit429.thread
  %i.st = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
  br i1 %i.st, label %.thread695, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !329
  %i.sw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !469
  %i.sy = icmp ult i32 %i.sx, 65
  %i.sz = load ptr, ptr %10, align 8
  %spec.select.i = select i1 %i.sy, ptr %10, ptr %i.sz
  %.0.i456 = load i64, ptr %spec.select.i, align 8, !tbaa !471
  %.sroa.019.0.copyload = load ptr, ptr %9, align 8, !tbaa !452 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa.220.0.copyload = load i32, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !453
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 40
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !604
  %i.tc = call fastcc noundef zeroext i1 @_ZL25foldMaskAndShiftToExtractRN4llvm12SelectionDAGENS_7SDValueEmS2_S2_RN12_GLOBAL__N_118X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(920) %i.sv, ptr %1, i32 %2, i64 noundef %.0.i456, ptr %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.tb, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.tc, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.td = load ptr, ptr %i.su, align 8, !tbaa !329
  %i.te = load i32, ptr %i.sw, align 8, !tbaa !469
  %i.tf = icmp ult i32 %i.te, 65
  %i.tg = load ptr, ptr %10, align 8
  %spec.select.i457 = select i1 %i.tf, ptr %10, ptr %i.tg
  %.0.i458 = load i64, ptr %spec.select.i457, align 8, !tbaa !471
  %.sroa.013.0.copyload = load ptr, ptr %9, align 8, !tbaa !452 ; 2 uses
  %.sroa.214.0.copyload = load i32, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !453
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 40
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !604
  %i.tj = call fastcc noundef zeroext i1 @_ZL23foldMaskAndShiftToScaleRN4llvm12SelectionDAGENS_7SDValueEmS2_S2_RN12_GLOBAL__N_118X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(920) %i.td, ptr %1, i32 %2, i64 noundef %.0.i458, ptr %.sroa.013.0.copyload, i32 %.sroa.214.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ti, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.tj, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.tk = load ptr, ptr %i.su, align 8, !tbaa !329
  %i.tl = load i32, ptr %i.sw, align 8, !tbaa !469
  %i.tm = icmp ult i32 %i.tl, 65
  %i.tn = load ptr, ptr %10, align 8
  %spec.select.i459 = select i1 %i.tm, ptr %10, ptr %i.tn
  %.0.i460 = load i64, ptr %spec.select.i459, align 8, !tbaa !471
  %.sroa.07.0.copyload = load ptr, ptr %9, align 8, !tbaa !452 ; 2 uses
  %.sroa.28.0.copyload = load i32, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !453
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 40
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !604
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !150
  %i.ts = call fastcc noundef zeroext i1 @_ZL22foldMaskedShiftToBEXTRRN4llvm12SelectionDAGENS_7SDValueEmS2_S2_RN12_GLOBAL__N_118X86ISelAddressModeERKNS_12X86SubtargetE(ptr noundef nonnull align 8 dereferenceable(920) %i.tk, ptr %1, i32 %2, i64 noundef %.0.i460, ptr %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.tp, ptr noundef nonnull align 8 dereferenceable(119) %3, ptr noundef nonnull align 8 dereferenceable(519752) %i.tr)
  br i1 %i.ts, label %.thread695, label %bb.dg

.thread695:                                       ; preds = %.lr.ph.i.i420, %.lr.ph.i.i434, %_ZNK4llvm7SDValue9hasOneUseEv.exit429, %bb.cf, %bb.ch, %_ZNK4llvm7SDValue9hasOneUseEv.exit443, %_ZNK4llvm6SDNode9hasOneUseEv.exit446, %bb.ck, %_ZNK4llvm7SDValue9hasOneUseEv.exit429.thread, %bb.ci, %bb.df, %bb.dc
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %.thread695, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit448.thread
  %.16320 = phi i1 [ %.15319, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit448.thread ], [ false, %.thread695 ], [ true, %bb.de ], [ true, %bb.dd ], [ true, %bb.df ]
  %i.tt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !469
  %i.tv = icmp ugt i32 %i.tu, 64
  br i1 %i.tv, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.tw = load ptr, ptr %10, align 8, !tbaa !471  ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZdaPv(ptr noundef nonnull %i.tw) #25
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.16320, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit, label %.thread

.thread:                                          ; preds = %bb.o, %bb.aj, %bb.ah, %bb.ai, %bb.bt, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382, %bb.al, %bb.ak, %bb.x, %bb.an, %bb.ag, %bb.ad, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.q, %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit, %.thread673, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374, %bb.dj, %bb.bz, %bb.ca, %bb.by, %bb.br, %bb.bs, %bb.bh, %bb.am, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.z, %bb.w, %bb.v, %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit747, %bb.p, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %.sroa.0600.1 = phi ptr [ %1, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread ], [ %1, %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit747 ], [ %1, %bb.ad ], [ %1, %bb.p ], [ %1, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374 ], [ %1, %bb.v ], [ %1, %bb.w ], [ %1, %bb.z ], [ %1, %bb.an ], [ %1, %bb.x ], [ %1, %bb.q ], [ %1, %bb.ac ], [ %1, %bb.ab ], [ %1, %bb.aj ], [ %1, %bb.af ], [ %1, %bb.ae ], [ %1, %bb.ag ], [ %1, %bb.am ], [ %1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382 ], [ %1, %bb.al ], [ %1, %bb.ak ], [ %.sroa.0592.0.copyload, %.thread673 ], [ %.sroa.0592.0.copyload622, %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit ], [ %1, %bb.bh ], [ %1, %bb.by ], [ %1, %bb.bt ], [ %1, %bb.bs ], [ %1, %bb.br ], [ %1, %bb.dj ], [ %1, %bb.ca ], [ %1, %bb.bz ], [ %1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %1, %bb.ai ], [ %1, %bb.ah ], [ %1, %bb.o ] ; 2 uses
  %.sroa.55.1 = phi i32 [ %2, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread ], [ %2, %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit747 ], [ %2, %bb.ad ], [ %2, %bb.p ], [ %2, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374 ], [ %2, %bb.v ], [ %2, %bb.w ], [ %2, %bb.z ], [ %2, %bb.an ], [ %2, %bb.x ], [ %2, %bb.q ], [ %2, %bb.ac ], [ %2, %bb.ab ], [ %2, %bb.aj ], [ %2, %bb.af ], [ %2, %bb.ae ], [ %2, %bb.ag ], [ %2, %bb.am ], [ %2, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382 ], [ %2, %bb.al ], [ %2, %bb.ak ], [ %.sroa.55.0.copyload, %.thread673 ], [ %.sroa.55.0.copyload627, %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit ], [ %2, %bb.bh ], [ %2, %bb.by ], [ %2, %bb.bt ], [ %2, %bb.bs ], [ %2, %bb.br ], [ %2, %bb.dj ], [ %2, %bb.ca ], [ %2, %bb.bz ], [ %2, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ %2, %bb.ai ], [ %2, %bb.ah ], [ %2, %bb.o ] ; 2 uses
  %i.ty = load i32, ptr %3, align 8, !tbaa !717
  %.not.i462 = icmp eq i32 %i.ty, 0
  br i1 %.not.i462, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.thread
  %i.tz = load ptr, ptr %i.h, align 8, !tbaa !442
  %.not11.i466 = icmp eq ptr %i.tz, null
  br i1 %.not11.i466, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.thread
  %i.ua = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !442
  %.not12.i463 = icmp eq ptr %i.ub, null
  br i1 %.not12.i463, label %bb.dm, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.dm:                                            ; preds = %bb.dl
  store ptr %.sroa.0600.1, ptr %i.ua, align 8, !tbaa !452
  %.sroa.3.0..sroa_idx.i465 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.sroa.55.1, ptr %.sroa.3.0..sroa_idx.i465, align 8, !tbaa !453
  %i.uc = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.uc, align 4, !tbaa !723
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.dn:                                            ; preds = %bb.dk
  store ptr %.sroa.0600.1, ptr %i.h, align 8, !tbaa !452
  %.sroa.3.0..sroa_idx8.i467 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.55.1, ptr %.sroa.3.0..sroa_idx8.i467, align 8, !tbaa !453
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit: ; preds = %bb.aj, %bb.bv, %bb.bx, %bb.bw, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.dn, %bb.dm, %bb.dl, %.thread696, %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit.thread, %bb.bg, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, %.critedge358, %bb.r, %bb.f, %bb.e, %bb.d, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374, %bb.dj, %bb.by, %bb.w, %bb.v, %bb.k, %bb.aa
  %.20 = phi i1 [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ true, %bb.k ], [ false, %bb.by ], [ false, %bb.dj ], [ false, %.thread696 ], [ false, %bb.r ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374 ], [ true, %bb.dl ], [ false, %bb.v ], [ false, %bb.aa ], [ false, %.critedge358 ], [ false, %bb.bv ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ false, %bb.bg ], [ false, %bb.w ], [ false, %_ZN12_GLOBAL__N_115X86DAGToDAGISel8matchAddERN4llvm7SDValueERNS_18X86ISelAddressModeEj.exit.thread ], [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.d ], [ false, %bb.dn ], [ false, %bb.dm ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread ], [ false, %bb.bw ], [ false, %bb.bx ], [ false, %bb.aj ]
  ret i1 %.20
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel18matchLoadInAddressEPN4llvm10LoadSDNodeERNS_18X86ISelAddressModeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(968) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(119) %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !604  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.012.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !452
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !453
  %i.d = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.012.0.copyload, i32 %.sroa.413.0.copyload) #22
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !442
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 961
  %i.i = load i8, ptr %i.h, align 1, !tbaa !208, !range !18, !noundef !19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !150  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 676
  %i.n = load i32, ptr %i.m, align 4, !tbaa !328  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 680
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !971 ; 3 uses
  switch i32 %i.n, label %._crit_edge [
    i32 7, label %bb.e
    i32 6, label %bb.e
    i32 34, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  switch i32 %.pre, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit [
    i32 17, label %._crit_edge
    i32 18, label %._crit_edge
    i32 19, label %._crit_edge
    i32 20, label %._crit_edge
    i32 21, label %._crit_edge
    i32 22, label %._crit_edge
    i32 23, label %._crit_edge
    i32 24, label %._crit_edge
    i32 25, label %._crit_edge
    i32 26, label %._crit_edge
    i32 50, label %._crit_edge
    i32 52, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  switch i32 %.pre, label %_ZNK4llvm12X86Subtarget12isTargetMuslEv.exit [
    i32 18, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 19, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 20, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 21, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 22, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 23, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 24, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 25, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 26, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 50, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
  ]

_ZNK4llvm12X86Subtarget12isTargetMuslEv.exit:     ; preds = %._crit_edge
  %i.o = icmp eq i32 %.pre, 17
  br i1 %i.o, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK4llvm12X86Subtarget12isTargetMuslEv.exit
  switch i32 %i.n, label %bb.h [
    i32 41, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
    i32 4, label %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
  ]

_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit:    ; preds = %switch.early.test, %switch.early.test, %_ZNK4llvm12X86Subtarget12isTargetMuslEv.exit, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 522
  %i.q = load i8, ptr %i.p, align 2, !tbaa !472, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 530
  %i.t = load i8, ptr %i.s, align 2, !range !18
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  %.not = xor i1 %i.v, true
  %or.cond = or i1 %3, %.not
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.y) #22
  switch i32 %i.z, label %bb.h [
    i32 256, label %.sink.split
    i32 257, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.sink29 = phi i32 [ 36, %bb.g ], [ 38, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !329
  %i.ac = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ab, i32 %.sink29, i16 6, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ac, 1
  store ptr %.fca.0.extract, ptr %i.e, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !453
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %switch.early.test, %bb.a, %bb.b, %bb.c, %bb.f, %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit
  %.0 = phi i1 [ true, %_ZNK4llvm12X86Subtarget13isTargetGlibcEv.exit ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.f ], [ true, %switch.early.test ], [ true, %bb.c ], [ false, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL23foldMaskAndShiftToScaleRN4llvm12SelectionDAGENS_7SDValueEmS2_S2_RN12_GLOBAL__N_118X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, i64 noundef %3, ptr nofree readonly captures(none) %4, i32 %5, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(119) %7) unnamed_addr #3 {
bb.a:
  %8 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !463
  %.not = icmp eq i32 %i.b, 200
  br i1 %.not, label %bb.b, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.c, align 8, !tbaa !606 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.g, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.d, align 8, !tbaa !606 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.c ], [ %.sroa.018.022.i.i, %bb.b ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !443
  %i.g = icmp ne i32 %i.f, %5                     ; 2 uses
  %i.h = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %cond.i.i, label %bb.c, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.c
  %i.i = icmp eq i32 %.214.i.i, 0
  br i1 %i.i, label %bb.d, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !604
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !442  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !463
  switch i32 %i.o, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread [
    i32 37, label %bb.e
    i32 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i163 = icmp eq i64 %3, 0
  br i1 %.not.i.i163, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %_ZN4llvm16isShiftedMask_64Em.exit.i

_ZN4llvm16isShiftedMask_64Em.exit.i:              ; preds = %bb.e
  %i.p = add i64 %3, -1
  %i.q = or i64 %i.p, %3                          ; 2 uses
  %i.r = add i64 %i.q, 1
  %i.s = and i64 %i.r, %i.q
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.f:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %3, i1 true) ; 3 uses
  %i.v = trunc nuw nsw i64 %i.u to i32            ; 3 uses
  %i.w = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, %i.v
end_hunk_9
