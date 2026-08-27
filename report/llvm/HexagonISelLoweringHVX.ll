Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE:bb.a
  %.not16.i = icmp eq ptr %.sroa.0645.0, null
  br i1 %.not16.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.9.0..sroa_idx649 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.9.0.copyload650 = load i32, ptr %.sroa.9.0..sroa_idx649, align 8, !tbaa !151
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = icmp ne ptr %.sroa.0645.0, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp ne i32 %.sroa.9.0, %i.bm
  %.not3.i.i = select i1 %i.bk, i1 true, i1 %i.bn
  br i1 %.not3.i.i, label %.critedge504, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.sroa.0645.1 = phi ptr [ %.sroa.0645.0, %.lr.ph.i ], [ %i.bg, %bb.j ], [ %.sroa.0645.0, %bb.k ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %.lr.ph.i ], [ %.sroa.9.0.copyload650, %bb.j ], [ %.sroa.9.0, %bb.k ] ; 2 uses
  %.1.i = phi i1 [ %.01312.i, %.lr.ph.i ], [ false, %bb.j ], [ false, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i513 = icmp eq i64 %indvars.iv.next.i, %i.bd
  br i1 %.not.i513, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !570

._crit_edge.i:                                    ; preds = %bb.l
  br i1 %.1.i, label %._crit_edge.thread.i, label %bb.m

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.loopexit
  %.sroa.0645.0.copyload646 = load ptr, ptr %i.be, align 8, !tbaa !238
  %.sroa.9.0..sroa.0643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.9.0.copyload648 = load i32, ptr %.sroa.9.0..sroa.0643.0..sroa_idx, align 8, !tbaa !151
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.sroa.0645.2.ph = phi ptr [ %.sroa.0645.1, %._crit_edge.i ], [ %.sroa.0645.0.copyload646, %._crit_edge.thread.i ] ; 3 uses
  %.sroa.9.2.ph = phi i32 [ %.sroa.9.1, %._crit_edge.i ], [ %.sroa.9.0.copyload648, %._crit_edge.thread.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0645.2.ph, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !212 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  %.0.v.i = select i1 %i.bq, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.bp, %.0.v.i
  br i1 %.0.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %4, ptr null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bo

bb.o:                                             ; preds = %bb.m
  %i.bs = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0645.2.ph, i32 %.sroa.9.2.ph) #20
  br i1 %i.bs, label %bb.p, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) #20
  br label %bb.bo

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.o
  %spec.select899 = select i1 %i.u, i16 82, i16 84
  store ptr %.sroa.0645.2.ph, ptr %9, align 8, !tbaa !238
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.9.2.ph, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !151
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %spec.select899, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #20 ; 2 uses
  %.fca.0.extract321 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract322 = extractvalue { ptr, i32 } %i.bu, 1
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract321, i32 %.fca.1.extract322) #20
  br label %bb.bo

.critedge504:                                     ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bw = and i64 %2, 4294967295                  ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bx, ptr %10, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.by, align 8, !tbaa !225
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 128, ptr %i.bz, align 4, !tbaa !226
  %i.ca = icmp eq i64 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit, label %bb.q

bb.q:                                             ; preds = %.critedge504
  %i.cb = icmp samesign ugt i64 %i.bw, 128
  br i1 %i.cb, label %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i: ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1040) %10, ptr noundef nonnull %i.bx, i64 noundef %i.bw, i64 noundef 8) #20
  %.pre.i.i.i = load i32, ptr %i.by, align 8, !tbaa !225
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.bw, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !21 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, %bb.q
  %i.cc = phi ptr [ %i.bx, %bb.q ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.q ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %.pre-phi.i.i3.i
  %i.ce = sub nsw i64 %i.bw, %.pre-phi.i.i3.i
  %i.cf = shl nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false), !tbaa !571
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.cc, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ]
  store i32 %i.b, ptr %i.by, align 8, !tbaa !225
  %i.cg = and i64 %2, 4294967295
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit: ; preds = %.critedge504, %.sink.split.i.i.i
  %i.ch = phi i64 [ 0, %.critedge504 ], [ %i.cg, %.sink.split.i.i.i ]
  %i.ci = phi ptr [ %i.bx, %.critedge504 ], [ %.pre, %.sink.split.i.i.i ]
  store ptr %i.ci, ptr %11, align 8, !tbaa !573
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !576
  %i.ck = call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering23getBuildVectorConstIntsENS_8ArrayRefINS_7SDValueEEENS_3MVTERNS_12SelectionDAGENS_15MutableArrayRefIPNS_11ConstantIntEEE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i64 %2, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %11) #20
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit
  %i.cl = load ptr, ptr %10, align 8, !tbaa !21
  %i.cm = load i32, ptr %i.by, align 8, !tbaa !225
  %i.cn = zext i32 %i.cm to i64
  %i.co = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.cl, i64 %i.cn) #20
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !502
  %i.cq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.cp) #20
  %i.cr = load ptr, ptr %0, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call i16 %i.ct(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.cq, i32 noundef 0) #20
  %.sroa.0629.0.insert.insert = select i1 %i.u, i16 262, i16 263 ; 2 uses
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getConstantPoolEPKNS_8ConstantENS_3EVTENS_10MaybeAlignEibj(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef %i.co, i16 %i.cu, ptr null, i16 %.sroa.0629.0.insert.insert, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #20 ; 2 uses
  %.fca.0.extract295 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract296 = extractvalue { ptr, i32 } %i.cv, 1
  %i.cw = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17LowerConstantPoolENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract295, i32 %.fca.1.extract296, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract291 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract292 = extractvalue { ptr, i32 } %i.cw, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 288
  store ptr %.fca.0.extract291, ptr %12, align 8, !tbaa !238
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract292, ptr %.sroa.4304.0..sroa_idx, align 8, !tbaa !151
  call void @_ZN4llvm18MachinePointerInfo15getConstantPoolERNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %13, ptr noundef nonnull align 8 dereferenceable(1065) %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nonnull %i.cx, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %13, i16 %.sroa.0629.0.insert.insert, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bm

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.cz, ptr %15, align 8, !tbaa !21
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i32 0, ptr %i.da, align 8, !tbaa !225
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  store i32 128, ptr %i.db, align 4, !tbaa !226
  %.idx.i = shl nuw nsw i64 %2, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not20.i = icmp ne i64 %2, 0
  call void @llvm.assume(i1 %.not20.i)
  br label %.lr.ph.i517

.lr.ph.i517:                                      ; preds = %bb.s, %bb.ad
  %.01723.i = phi ptr [ %i.ep, %bb.ad ], [ %1, %bb.s ] ; 2 uses
  %.sroa.07.022.i = phi ptr [ %.sroa.07.2.ph.i, %bb.ad ], [ null, %bb.s ] ; 4 uses
  %.sroa.79.021.i = phi i32 [ %.sroa.79.2.ph.i, %bb.ad ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %.01723.i, align 8, !tbaa !238 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !212 ; 3 uses
  %i.df = icmp slt i32 %i.de, 0
  %.0.v.i.i = select i1 %i.df, i32 -11, i32 53
  %.0.i.i = icmp eq i32 %i.de, %.0.v.i.i
  br i1 %.0.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.lr.ph.i517
  %i.dg = load i32, ptr %i.da, align 8, !tbaa !225 ; 2 uses
  %i.dh = load i32, ptr %i.db, align 4, !tbaa !226
  %.not.i.i = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i.i, label %bb.v, label %bb.u, !prof !177

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef -1)
  br label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.di = zext i32 %i.dg to i64
  %i.dj = load ptr, ptr %15, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.di
  store i32 -1, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.da, align 8, !tbaa !225
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !225
  br label %bb.ad

bb.w:                                             ; preds = %.lr.ph.i517
  %.not23.i = icmp eq i32 %i.de, 164
  br i1 %.not23.i, label %bb.x, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread"

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !236 ; 3 uses
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.do, align 8, !tbaa !238 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.5.sroa.0.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !151 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.07.022.i, null
  %.not25.i = icmp eq ptr %.sroa.0.0.copyload1.i, %.sroa.07.022.i
  %or.cond.i = select i1 %.not24.i, i1 true, i1 %.not25.i
  br i1 %or.cond.i, label %bb.y, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread"

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !232 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !212
  switch i32 %i.ds, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread" [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.y, %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !577 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !579 ; 3 uses
  %i.dy = icmp ult i32 %i.dx, 65
  br i1 %i.dy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.dz = load i64, ptr %i.dv, align 8, !tbaa !152
  %i.ea = icmp eq i32 %i.dx, 0
  %i.eb = sub nuw nsw i32 64, %i.dx
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = shl i64 %i.dz, %i.ec
  %i.ee = ashr exact i64 %i.ed, %i.ec
  %.0.i.i.i.i.i = select i1 %i.ea, i64 0, i64 %i.ee
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

bb.aa:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.ef = load ptr, ptr %i.dv, align 8, !tbaa !152
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !581
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i26.i = phi i64 [ %.0.i.i.i.i.i, %bb.z ], [ %i.eg, %bb.aa ]
  %i.eh = trunc i64 %.0.i.i.i26.i to i32          ; 2 uses
  %i.ei = load i32, ptr %i.da, align 8, !tbaa !225 ; 2 uses
  %i.ej = load i32, ptr %i.db, align 4, !tbaa !226
  %.not.i27.i = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i27.i, label %bb.ac, label %bb.ab, !prof !177

bb.ab:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.eh)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %i.ek = zext i32 %i.ei to i64
  %i.el = load ptr, ptr %15, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek
  store i32 %i.eh, ptr %i.em, align 1
  %i.en = load i32, ptr %i.da, align 8, !tbaa !225
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.da, align 8, !tbaa !225
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.v, %bb.u
  %.sroa.79.2.ph.i = phi i32 [ %.sroa.5.sroa.0.0.copyload.i, %bb.ac ], [ %.sroa.5.sroa.0.0.copyload.i, %bb.ab ], [ %.sroa.79.021.i, %bb.u ], [ %.sroa.79.021.i, %bb.v ] ; 3 uses
  %.sroa.07.2.ph.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.ac ], [ %.sroa.0.0.copyload1.i, %bb.ab ], [ %.sroa.07.022.i, %bb.u ], [ %.sroa.07.022.i, %bb.v ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01723.i, i64 16 ; 2 uses
  %.not.i518 = icmp eq ptr %i.ep, %i.dc
  br i1 %.not.i518, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit", label %.lr.ph.i517

"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit": ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.07.2.ph.i, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !231
  %i.es = zext i32 %.sroa.79.2.ph.i to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.es
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.et, align 8, !tbaa !146 ; 4 uses
  %i.eu = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.eu, 53
  br i1 %spec.select.i.i, label %bb.ae, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.ae:                                            ; preds = %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit"
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit"
  %i.ev = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ew = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !150 ; 3 uses
  %i.ez = zext i16 %i.ey to i32                   ; 6 uses
  %i.fa = icmp eq i32 %i.ez, %i.b                 ; 2 uses
  %i.fb = shl i32 %i.b, 1
  %i.fc = icmp eq i32 %i.fb, %i.ez
  %or.cond = or i1 %i.fa, %i.fc
  br i1 %or.cond, label %bb.af, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread"

bb.af:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.fd, ptr %16, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  store i32 0, ptr %i.fe, align 8, !tbaa !225
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 128, ptr %i.ff, align 4, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.fg = add nuw nsw i32 %i.ez, 63
  %i.fh = lshr i32 %i.fg, 6                       ; 3 uses
  %i.fi = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.fj, ptr %17, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.fl, align 4, !tbaa !226
  %i.fm = icmp ugt i16 %i.ey, 384
  br i1 %i.fm, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.af
  store i32 0, ptr %i.fk, align 8, !tbaa !225
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %17, ptr noundef nonnull %i.fj, i64 noundef %i.fi, i64 noundef 8) #20
  %i.fn = load ptr, ptr %17, align 8, !tbaa !21
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.af
  %.not.i.i519 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i519, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.fn, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.fj, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !581
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.fh, ptr %i.fk, align 8, !tbaa !225
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 %i.ez, ptr %i.fo, align 8, !tbaa !582
  %i.fp = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.fq = load i32, ptr %i.da, align 8, !tbaa !225 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %.idx808 = shl nuw nsw i64 %i.fr, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx808
  %.not496800 = icmp eq i32 %i.fq, 0
  br i1 %.not496800, label %.preheader, label %.lr.ph802

.preheader:                                       ; preds = %bb.aj, %_ZN4llvm9BitVectorC2Ejb.exit
  %.not497803 = icmp eq i16 %i.ey, 0
  br i1 %.not497803, label %._crit_edge806, label %.lr.ph805

.lr.ph802:                                        ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %bb.aj
  %.0477801 = phi ptr [ %i.gl, %bb.aj ], [ %i.fp, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 2 uses
  %i.ft = load i32, ptr %.0477801, align 4, !tbaa !151 ; 5 uses
  %i.fu = load i32, ptr %i.fe, align 8, !tbaa !225 ; 2 uses
  %i.fv = load i32, ptr %i.ff, align 4, !tbaa !226
  %.not.i520 = icmp ult i32 %i.fu, %i.fv
  br i1 %.not.i520, label %bb.ah, label %bb.ag, !prof !177

bb.ag:                                            ; preds = %.lr.ph802
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %i.ft)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.ah:                                            ; preds = %.lr.ph802
  %i.fw = zext i32 %i.fu to i64
  %i.fx = load ptr, ptr %16, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fw
  store i32 %i.ft, ptr %i.fy, align 1
  %i.fz = load i32, ptr %i.fe, align 8, !tbaa !225
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fe, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.ag, %bb.ah
  %i.gb = icmp sgt i32 %i.ft, -1
  br i1 %i.gb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.gc = and i32 %i.ft, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = lshr i32 %i.ft, 6
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = load ptr, ptr %17, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !581
  %i.gk = or i64 %i.gj, %i.ge
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !581
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.0477801, i64 4 ; 2 uses
  %.not496 = icmp eq ptr %i.gl, %i.fs
  br i1 %.not496, label %.preheader, label %.lr.ph802

.lr.ph805:                                        ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522
  %.0478804 = phi i32 [ %i.hd, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522 ], [ 0, %.preheader ] ; 5 uses
  %i.gm = load i32, ptr %i.fe, align 8, !tbaa !225 ; 3 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp eq i32 %i.gm, %i.ez
  br i1 %i.go, label %._crit_edge806, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph805
  %i.gp = and i32 %.0478804, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = lshr i32 %.0478804, 6
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = load ptr, ptr %17, align 8, !tbaa !21
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !581
  %i.gx = and i64 %i.gw, %i.gr
  %.not769 = icmp eq i64 %i.gx, 0
  br i1 %.not769, label %bb.al, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

bb.al:                                            ; preds = %bb.ak
  %i.gy = load i32, ptr %i.ff, align 4, !tbaa !226
  %.not.i521 = icmp ult i32 %i.gm, %i.gy
  br i1 %.not.i521, label %bb.an, label %bb.am, !prof !177

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %.0478804)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

bb.an:                                            ; preds = %bb.al
  %i.gz = load ptr, ptr %16, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gn
  store i32 %.0478804, ptr %i.ha, align 1
  %i.hb = load i32, ptr %i.fe, align 8, !tbaa !225
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.fe, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522: ; preds = %bb.an, %bb.am, %bb.ak
  %i.hd = add nuw nsw i32 %.0478804, 1            ; 2 uses
  %.not497 = icmp eq i32 %i.hd, %i.ez
  br i1 %.not497, label %._crit_edge806, label %.lr.ph805, !llvm.loop !589

._crit_edge806:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522, %.lr.ph805, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.he = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.extract246 = extractvalue { ptr, i32 } %i.he, 0
  %.fca.1.extract247 = extractvalue { ptr, i32 } %i.he, 1
  store ptr %.fca.0.extract246, ptr %18, align 8
  %.sroa.2249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract247, ptr %.sroa.2249.0..sroa_idx, align 8
  %i.hf = load ptr, ptr %16, align 8, !tbaa !21
  store ptr %i.hf, ptr %19, align 8, !tbaa !497
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hh = load i32, ptr %i.fe, align 8, !tbaa !225
  %i.hi = zext i32 %i.hh to i64
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !499
  %i.hj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.07.2.ph.i, i32 %.sroa.79.2.ph.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %19) #20 ; 2 uses
  %.fca.0.extract242 = extractvalue { ptr, i32 } %i.hj, 0 ; 2 uses
  %.fca.1.extract243 = extractvalue { ptr, i32 } %i.hj, 1 ; 2 uses
  br i1 %i.fa, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge806
  %i.hk = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract242, i32 %.fca.1.extract243, ptr noundef nonnull align 8 dereferenceable(920) %5) ; 2 uses
  %.fca.0.extract235 = extractvalue { ptr, i32 } %i.hk, 0
  %.fca.1.extract236 = extractvalue { ptr, i32 } %i.hk, 1
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge806, %bb.ao
  %.sroa.0473.0 = phi ptr [ %.fca.0.extract235, %bb.ao ], [ %.fca.0.extract242, %._crit_edge806 ]
  %.sroa.8474.0 = phi i32 [ %.fca.1.extract236, %bb.ao ], [ %.fca.1.extract243, %._crit_edge806 ]
end_hunk_0
