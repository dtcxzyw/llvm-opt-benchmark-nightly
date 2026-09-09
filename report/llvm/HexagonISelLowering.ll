Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLowering?download=true
inline.NumInlined: 5380
inline.NumDeleted: 1748
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGE:bb.a

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, %bb.c
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.m, %bb.c ] ; 7 uses
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.q, align 8, !tbaa !24 ; 17 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !163  ; 4 uses
  %.sroa.0425.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !393 ; 5 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !150 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.0400.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !393 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !150 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !173
  store i64 %i.v, ptr %17, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !174
  store i32 %i.y, ptr %i.w, align 8, !tbaa !176
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0425.0.copyload, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !394
  %i.ab = zext i32 %.sroa.20.0.copyload to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %.sroa.0.0.copyload.i.i.i309 = load i16, ptr %i.ac, align 8, !tbaa !24
  %.not493 = icmp eq i16 %.sroa.0.0.copyload.i.i.i309, %.sroa.0.0.copyload.i.i.i
  br i1 %.not493, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0400.0.copyload, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !394
  %i.af = zext i32 %.sroa.15.0.copyload to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af
  %.sroa.0.0.copyload.i.i.i310 = load i16, ptr %i.ag, align 8, !tbaa !24
  %.not494 = icmp eq i16 %.sroa.0.0.copyload.i.i.i310, %.sroa.0.0.copyload.i.i.i
  br i1 %.not494, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.ah, ptr %18, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !255
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 8, ptr %i.aj, align 4, !tbaa !256
  %.idx.i = shl nuw nsw i64 %i.o, 2               ; 4 uses
  %i.ak = icmp ugt i32 %i.n, 8
  br i1 %i.ak, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull %i.ah, i64 noundef %i.o, i64 noundef 4) #25
  %.pre8.pre.i.i = load i32, ptr %i.ai, align 8, !tbaa !255
  %i.al = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %18, align 8, !tbaa !22
  br label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.e
  %.not.i.i.i311 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i311, label %._crit_edge.i.i.i.i.thread, label %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit

._crit_edge.i.i.i.i.thread:                       ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"

_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %i.an = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.ah, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.al, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 4 %i.e, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.ai, align 8, !tbaa !255
  %i.ap = add i32 %.pre.i.i, %i.n                 ; 9 uses
  store i32 %i.ap, ptr %i.ai, align 8, !tbaa !255
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.ar = lshr i64 %i.o, 2                        ; 2 uses
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.as = and i64 %.idx.i, 17179869168
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.as
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i
  %.044.i.i.i.i = phi i64 [ %i.bb, %bb.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i = load i32, ptr %.02943.i.i.i.i, align 4, !tbaa !150
  %i.at = icmp sgt i32 %.029.val32.i.i.i.i, -1
  br i1 %i.at, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 4
  %.val31.i.i.i.i = load i32, ptr %i.au, align 4, !tbaa !150
  %i.av = icmp sgt i32 %.val31.i.i.i.i, -1
  br i1 %i.av, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 8
  %.val30.i.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !150
  %i.ax = icmp sgt i32 %.val30.i.i.i.i, -1
  br i1 %i.ax, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit553", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 12
  %.val.i.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !150
  %i.az = icmp sgt i32 %.val.i.i.i.i, -1
  br i1 %i.az, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit555", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 16
  %i.bb = add nsw i64 %.044.i.i.i.i, -1
  %i.bc = icmp sgt i64 %.044.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !898

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bd = and i32 %i.n, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit
  %.pre-phi50.i.i.i.i = phi i32 [ %i.bd, %._crit_edge.loopexit.i.i.i.i ], [ %i.n, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %_ZN4llvm11SmallVectorIiLj8EEC2IivEENS_8ArrayRefIT_EE.exit ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit" [
    i32 3, label %bb.j
    i32 2, label %bb.l
    i32 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !150
  %i.be = icmp sgt i32 %.029.val.i.i.i.i, -1
  br i1 %i.be, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !150
  %i.bg = icmp sgt i32 %.1.val.i.i.i.i, -1
  br i1 %i.bg, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bh, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !150
  %i.bi = icmp slt i32 %.2.val.i.i.i.i, 0
  %spec.select = select i1 %i.bi, ptr %i.aq, ptr %.2.i.i.i.i
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 4
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit553": ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 8
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit555": ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 12
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit553", %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit555", %bb.n, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.thread, %bb.j, %bb.l
  %i.bm = phi i32 [ %i.ap, %bb.l ], [ 0, %._crit_edge.i.i.i.i.thread ], [ %i.ap, %bb.n ], [ %i.ap, %bb.j ], [ %i.ap, %._crit_edge.i.i.i.i ], [ %i.ap, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.ap, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit555" ], [ %i.ap, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit553" ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 7 uses
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.l ], [ %i.am, %._crit_edge.i.i.i.i.thread ], [ %spec.select, %bb.n ], [ %.029.lcssa.i.i.i.i, %bb.j ], [ %i.aq, %._crit_edge.i.i.i.i ], [ %i.bj, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.bl, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit555" ], [ %i.bk, %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit553" ], [ %.02943.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bn = ptrtoint ptr %.028.i.i.i.i to i64
  %i.bo = ptrtoint ptr %i.e to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.o
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %.fca.0.extract229 = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract230 = extractvalue { ptr, i32 } %i.bt, 1
  br label %bb.bd

bb.p:                                             ; preds = %"_ZN4llvm7find_ifIRNS_8ArrayRefIiEEZNKS_21HexagonTargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGEE3$_0EEDaOT_T0_.exit"
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.br
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !150
  %.not = icmp slt i32 %i.bv, %i.n
  br i1 %.not, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %18, align 8, !tbaa !22   ; 5 uses
  %i.bx = zext i32 %i.bm to i64                   ; 3 uses
  %.not17.i = icmp eq i32 %i.bm, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.q
  %i.by = sub i32 0, %i.bm                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.bm, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader607, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bx, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert566 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat567 = shufflevector <4 x i32> %broadcast.splatinsert566, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue582, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue582 ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index ; 2 uses
  %wide.load568 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !150 ; 3 uses
  %i.ca = icmp sgt <4 x i32> %wide.load568, splat (i32 -1) ; 4 uses
  %i.cb = icmp slt <4 x i32> %wide.load568, %broadcast.splat567
  %i.cc = select <4 x i1> %i.cb, <4 x i32> %broadcast.splat567, <4 x i32> %broadcast.splat
  %i.cd = add <4 x i32> %i.cc, %wide.load568      ; 4 uses
  %i.ce = extractelement <4 x i1> %i.ca, i64 0
  br i1 %i.ce, label %pred.store.if575, label %pred.store.continue576

pred.store.if575:                                 ; preds = %vector.body
  %i.cf = extractelement <4 x i32> %i.cd, i64 0
  store i32 %i.cf, ptr %i.bz, align 4, !tbaa !150
  br label %pred.store.continue576

pred.store.continue576:                           ; preds = %pred.store.if575, %vector.body
  %i.cg = extractelement <4 x i1> %i.ca, i64 1
  br i1 %i.cg, label %pred.store.if577, label %pred.store.continue578

pred.store.if577:                                 ; preds = %pred.store.continue576
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = extractelement <4 x i32> %i.cd, i64 1
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !150
  br label %pred.store.continue578

pred.store.continue578:                           ; preds = %pred.store.if577, %pred.store.continue576
  %i.ck = extractelement <4 x i1> %i.ca, i64 2
  br i1 %i.ck, label %pred.store.if579, label %pred.store.continue580

pred.store.if579:                                 ; preds = %pred.store.continue578
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = extractelement <4 x i32> %i.cd, i64 2
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !150
  br label %pred.store.continue580

pred.store.continue580:                           ; preds = %pred.store.if579, %pred.store.continue578
  %i.co = extractelement <4 x i1> %i.ca, i64 3
  br i1 %i.co, label %pred.store.if581, label %pred.store.continue582

pred.store.if581:                                 ; preds = %pred.store.continue580
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = extractelement <4 x i32> %i.cd, i64 3
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !150
  br label %pred.store.continue582

pred.store.continue582:                           ; preds = %pred.store.if581, %pred.store.continue580
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !899

middle.block:                                     ; preds = %pred.store.continue582
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader607

.lr.ph.i.preheader607:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader607, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader607 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !150 ; 3 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.r, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.cw = icmp slt i32 %i.cu, %i.bm
  %.sink.p.i = select i1 %i.cw, i32 %i.bm, i32 %i.by
  %.sink.i = add i32 %.sink.p.i, %i.cu
  store i32 %.sink.i, ptr %i.ct, align 4, !tbaa !150
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i312 = icmp eq i64 %indvars.iv.next.i, %i.bx
  br i1 %.not.i312, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i, !llvm.loop !900

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %bb.r, %middle.block, %bb.q, %bb.p
  %.sroa.0400.0 = phi ptr [ %.sroa.0400.0.copyload, %bb.p ], [ %.sroa.0425.0.copyload, %bb.q ], [ %.sroa.0425.0.copyload, %middle.block ], [ %.sroa.0425.0.copyload, %bb.r ] ; 9 uses
  %.sroa.15.0 = phi i32 [ %.sroa.15.0.copyload, %bb.p ], [ %.sroa.20.0.copyload, %bb.q ], [ %.sroa.20.0.copyload, %middle.block ], [ %.sroa.20.0.copyload, %bb.r ] ; 9 uses
  %.sroa.0425.0 = phi ptr [ %.sroa.0425.0.copyload, %bb.p ], [ %.sroa.0400.0.copyload, %bb.q ], [ %.sroa.0400.0.copyload, %middle.block ], [ %.sroa.0400.0.copyload, %bb.r ] ; 14 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.0.copyload, %bb.p ], [ %.sroa.15.0.copyload, %bb.q ], [ %.sroa.15.0.copyload, %middle.block ], [ %.sroa.15.0.copyload, %bb.r ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.cx, ptr %19, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 9 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !255
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 3 uses
  store i32 8, ptr %i.cz, align 4, !tbaa !256
  %i.da = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.db = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 -2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !24
  %i.de = zext i16 %i.dd to i64
  %i.df = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.de ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.df, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.dg = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.dg, label %bb.s, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.s:                                             ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  %i.dh = getelementptr i8, ptr %i.df, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.dh, align 16
  %i.di = lshr i64 %.sroa.0.0.copyload.i, 3
  %i.dj = trunc i64 %i.di to i32                  ; 4 uses
  %i.dk = load ptr, ptr %18, align 8, !tbaa !22   ; 2 uses
  %i.dl = load i32, ptr %i.ai, align 8, !tbaa !255 ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %.idx = shl nuw nsw i64 %i.dm, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx
  %.not302510 = icmp eq i32 %i.dl, 0
  br i1 %.not302510, label %.critedge307, label %.lr.ph512

.lr.ph512:                                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.not304505 = icmp eq i32 %i.dj, 0              ; 2 uses
  br label %bb.t

._crit_edge:                                      ; preds = %.loopexit
  %.pre527 = load i32, ptr %i.cy, align 8, !tbaa !255 ; 5 uses
  %.not303513 = icmp eq i32 %.pre527, 0
  br i1 %.not303513, label %.critedge307, label %.lr.ph518

.lr.ph518:                                        ; preds = %._crit_edge
  %i.do = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.dp = zext i32 %.pre527 to i64                ; 3 uses
  %min.iters.check584 = icmp ult i32 %.pre527, 4
  br i1 %min.iters.check584, label %scalar.ph583.preheader, label %vector.ph585

vector.ph585:                                     ; preds = %.lr.ph518
  %n.vec586 = and i64 %i.dp, 4294967292           ; 3 uses
  br label %vector.body587

vector.body587:                                   ; preds = %vector.body587, %vector.ph585
  %index588 = phi i64 [ 0, %vector.ph585 ], [ %index.next594, %vector.body587 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph585 ], [ %vec.ind.next, %vector.body587 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph585 ], [ %i.ek, %vector.body587 ]
  %vec.phi589 = phi <2 x i64> [ zeroinitializer, %vector.ph585 ], [ %i.el, %vector.body587 ]
  %vec.phi590 = phi <2 x i64> [ zeroinitializer, %vector.ph585 ], [ %i.eg, %vector.body587 ]
  %vec.phi591 = phi <2 x i64> [ zeroinitializer, %vector.ph585 ], [ %i.eh, %vector.body587 ]
  %i.dq = shl <2 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 3)
  %i.dr = add <2 x i64> %step.add, splat (i64 16)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index588 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %wide.load592 = load <2 x i32>, ptr %i.ds, align 4, !tbaa !150
  %wide.load593 = load <2 x i32>, ptr %i.dt, align 4, !tbaa !150
  %i.du = and <2 x i32> %wide.load592, splat (i32 255) ; 2 uses
  %i.dv = and <2 x i32> %wide.load593, splat (i32 255) ; 2 uses
  %i.dw = zext nneg <2 x i32> %i.du to <2 x i64>
  %i.dx = zext nneg <2 x i32> %i.dv to <2 x i64>
  %i.dy = icmp eq <2 x i32> %i.du, splat (i32 255)
  %i.dz = icmp eq <2 x i32> %i.dv, splat (i32 255)
  %i.ea = and <2 x i64> %i.dq, splat (i64 4294967288) ; 2 uses
  %i.eb = and <2 x i64> %i.dr, splat (i64 4294967288) ; 2 uses
  %i.ec = shl <2 x i64> splat (i64 255), %i.ea
  %i.ed = shl <2 x i64> splat (i64 255), %i.eb
  %i.ee = select <2 x i1> %i.dy, <2 x i64> %i.ec, <2 x i64> zeroinitializer
  %i.ef = select <2 x i1> %i.dz, <2 x i64> %i.ed, <2 x i64> zeroinitializer
  %i.eg = or <2 x i64> %i.ee, %vec.phi590         ; 2 uses
  %i.eh = or <2 x i64> %i.ef, %vec.phi591         ; 2 uses
  %i.ei = shl <2 x i64> %i.dw, %i.ea
  %i.ej = shl <2 x i64> %i.dx, %i.eb
  %i.ek = or <2 x i64> %i.ei, %vec.phi            ; 2 uses
  %i.el = or <2 x i64> %i.ej, %vec.phi589         ; 2 uses
  %index.next594 = add nuw i64 %index588, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.em = icmp eq i64 %index.next594, %n.vec586
  br i1 %i.em, label %middle.block595, label %vector.body587, !llvm.loop !901

middle.block595:                                  ; preds = %vector.body587
  %bin.rdx = or <2 x i64> %i.el, %i.ek
  %i.en = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx596 = or <2 x i64> %i.eh, %i.eg
  %i.eo = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx596) ; 2 uses
  %cmp.n597 = icmp eq i64 %n.vec586, %i.dp
  br i1 %cmp.n597, label %._crit_edge519, label %scalar.ph583.preheader

scalar.ph583.preheader:                           ; preds = %.lr.ph518, %middle.block595
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph518 ], [ %n.vec586, %middle.block595 ]
  %.0294516.ph = phi i64 [ 0, %.lr.ph518 ], [ %i.en, %middle.block595 ]
  %.0295515.ph = phi i64 [ 0, %.lr.ph518 ], [ %i.eo, %middle.block595 ]
  br label %scalar.ph583

bb.t:                                             ; preds = %.lr.ph512, %.loopexit
  %.0291511 = phi ptr [ %i.dk, %.lr.ph512 ], [ %i.fj, %.loopexit ] ; 2 uses
  %i.ep = load i32, ptr %.0291511, align 4, !tbaa !150 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader, label %.preheader495

.preheader495:                                    ; preds = %bb.t
  br i1 %.not304505, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader495
  %i.er = mul i32 %i.ep, %i.dj
  br label %bb.w

.preheader:                                       ; preds = %bb.t
  br i1 %.not304505, label %.loopexit, label %.lr.ph509

.lr.ph509:                                        ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0292508 = phi i32 [ %i.ez, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ 0, %.preheader ]
  %i.es = load i32, ptr %i.cy, align 8, !tbaa !255 ; 2 uses
  %i.et = load i32, ptr %i.cz, align 4, !tbaa !256
  %.not.i315 = icmp ult i32 %i.es, %i.et
  br i1 %.not.i315, label %bb.v, label %bb.u, !prof !391

bb.u:                                             ; preds = %.lr.ph509
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef -1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.v:                                             ; preds = %.lr.ph509
  %i.eu = zext i32 %i.es to i64
  %i.ev = load ptr, ptr %19, align 8, !tbaa !22
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eu
  store i32 -1, ptr %i.ew, align 1
  %i.ex = load i32, ptr %i.cy, align 8, !tbaa !255
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.cy, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.u, %bb.v
  %i.ez = add nuw i32 %.0292508, 1                ; 2 uses
  %.not305 = icmp eq i32 %i.ez, %i.dj
  br i1 %.not305, label %.loopexit, label %.lr.ph509, !llvm.loop !902

bb.w:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit317
  %.0293506 = phi i32 [ 0, %.lr.ph ], [ %i.fi, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit317 ] ; 2 uses
  %i.fa = add i32 %.0293506, %i.er                ; 2 uses
  %i.fb = load i32, ptr %i.cy, align 8, !tbaa !255 ; 2 uses
  %i.fc = load i32, ptr %i.cz, align 4, !tbaa !256
  %.not.i316 = icmp ult i32 %i.fb, %i.fc
  br i1 %.not.i316, label %bb.y, label %bb.x, !prof !391

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef %i.fa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit317

bb.y:                                             ; preds = %bb.w
  %i.fd = zext i32 %i.fb to i64
  %i.fe = load ptr, ptr %19, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fd
  store i32 %i.fa, ptr %i.ff, align 1
  %i.fg = load i32, ptr %i.cy, align 8, !tbaa !255
end_hunk_0
