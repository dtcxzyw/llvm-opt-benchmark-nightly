Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 162
begin_hunk_0_@"_ZZL17performMulCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEENK3$_7clENS_5APIntERSB_SC_":bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.as, ptr %i.az, align 8, !tbaa !382
  store i64 %i.ay, ptr %7, align 8, !tbaa !334
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.h:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.ba = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #37
  %i.bb = xor i32 %i.ba, -1
  %i.bc = add i32 %i.as, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.as, ptr %i.be, align 8, !tbaa !382
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %7, i64 noundef %i.bd, i1 noundef zeroext false) #35
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.g, %bb.h
  %i.bf = phi ptr [ %i.az, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !382
  %i.bi = icmp ult i32 %i.bh, 65
  br i1 %i.bi, label %_ZN4llvm5APIntD2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !334   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4llvm5APIntD2Ev.exit9, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #38
  br label %_ZN4llvm5APIntD2Ev.exit9

_ZN4llvm5APIntD2Ev.exit9:                         ; preds = %bb.j, %bb.i, %_ZN4llvm5APIntC2Ejmbb.exit
  %i.bl = load i64, ptr %7, align 8
  store i64 %i.bl, ptr %1, align 8
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !382
  store i32 %i.bm, ptr %i.bg, align 8, !tbaa !382
  store i32 0, ptr %i.bf, align 8, !tbaa !382
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.bn = zext i32 %.0.i2 to i64                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.as, ptr %i.bo, align 8, !tbaa !382
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit9
  store i64 %i.bn, ptr %8, align 8, !tbaa !334
  br label %_ZN4llvm5APIntC2Ejmbb.exit10

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit9
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef %i.bn, i1 noundef zeroext false) #35
  br label %_ZN4llvm5APIntC2Ejmbb.exit10

_ZN4llvm5APIntC2Ejmbb.exit10:                     ; preds = %bb.k, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !382
  %i.br = icmp ult i32 %i.bq, 65
  br i1 %i.br, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit10
  %i.bs = load ptr, ptr %2, align 8, !tbaa !334   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #38
  br label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread

_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread:        ; preds = %_ZN4llvm5APIntC2Ejmbb.exit10, %bb.m, %bb.n
  %i.bu = load i64, ptr %8, align 8
  store i64 %i.bu, ptr %2, align 8
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !382
  store i32 %i.bv, ptr %i.bp, align 8, !tbaa !382
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.pr.pr.pre = load i32, ptr %i.ap, align 8, !tbaa !382
  %i.bw = icmp ugt i32 %.pr.pr.pre, 64
  br i1 %i.bw, label %.thread14, label %_ZN4llvm5APIntD2Ev.exit13

.thread14:                                        ; preds = %.split, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread
  %.0.i7517 = phi i1 [ true, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread ], [ false, %.split ] ; 2 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !334   ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.o

bb.o:                                             ; preds = %.thread14
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #38
  br label %_ZN4llvm5APIntD2Ev.exit13

_ZN4llvm5APIntD2Ev.exit13:                        ; preds = %bb.f, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread, %.thread14, %bb.o
  %.0.i7516 = phi i1 [ true, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread ], [ %.0.i7517, %.thread14 ], [ %.0.i7517, %bb.o ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.pre = load i32, ptr %i.g, align 8, !tbaa !382
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit13
  %i.bz = phi i32 [ %.pre, %_ZN4llvm5APIntD2Ev.exit13 ], [ %i.h, %_ZN4llvm5APIntD2Ev.exit ]
  %.1 = phi i1 [ %.0.i7516, %_ZN4llvm5APIntD2Ev.exit13 ], [ false, %_ZN4llvm5APIntD2Ev.exit ]
  %i.ca = icmp ugt i32 %i.bz, 64
  br i1 %i.ca, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit14

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %3, align 8, !tbaa !334   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN4llvm5APIntD2Ev.exit14, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #38
  br label %_ZN4llvm5APIntD2Ev.exit14

_ZN4llvm5APIntD2Ev.exit14:                        ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZZL17performMulCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEENK3$_4clENS_7SDValueE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr %1, i32 %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2572, !nonnull !59, !align !357
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2573, !nonnull !59, !align !357
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2574, !nonnull !59, !align !357
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2575, !nonnull !59, !align !357 ; 2 uses
  %.sroa.08.0.copyload = load i16, ptr %i.h, align 8, !tbaa !227
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !380
  %i.i = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i16 %.sroa.08.0.copyload, ptr %.sroa.210.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.i, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.i, 1
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !2573, !nonnull !59, !align !357
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !2574, !nonnull !59, !align !357
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !2575, !nonnull !59, !align !357 ; 2 uses
  %.sroa.01.0.copyload = load i16, ptr %i.l, align 8, !tbaa !227
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !380
  store ptr %.fca.0.extract4, ptr %3, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !337
  store ptr %1, ptr %4, align 8, !tbaa !394
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !337
  %i.m = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.j, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %i.k, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL32performBuildShuffleExtendCombineN4llvm7SDValueERNS_12SelectionDAGE(ptr %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(920) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 10 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 11 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %10 = alloca %"class.llvm::SmallVector.535", align 8 ; 10 uses
  %11 = alloca %"class.llvm::ArrayRef.463", align 8 ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::ArrayRef.361", align 8 ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !383  ; 2 uses
  switch i32 %i.g, label %bb.ag [
    i32 162, label %bb.b
    i32 171, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !384
  %.sroa.0203.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !394 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0203.0.copyload, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !383  ; 4 uses
  %15 = icmp ne i32 %i.k, 229                     ; 3 uses
  switch i32 %i.k, label %switch.edge [
    i32 236, label %switch.edge.thread
    i32 227, label %switch.edge.thread
    i32 3, label %switch.edge.thread
  ]

switch.edge:                                      ; preds = %bb.b
  br i1 %15, label %switch.early.test, label %switch.edge.thread.thread

switch.early.test:                                ; preds = %switch.edge
  switch i32 %i.k, label %bb.ag [
    i32 228, label %switch.edge.thread
    i32 193, label %switch.edge.thread
    i32 4, label %switch.edge.thread
  ]

switch.edge.thread:                               ; preds = %bb.b, %bb.b, %bb.b, %switch.early.test, %switch.early.test, %switch.early.test
  %16 = phi i8 [ 1, %bb.b ], [ 0, %switch.early.test ], [ 0, %switch.early.test ], [ 0, %switch.early.test ], [ 1, %bb.b ], [ 1, %bb.b ]
  %i.l = icmp eq i32 %i.g, 171
  %i.m = add nsw i32 %i.k, -230
  %i.n = icmp ult i32 %i.m, -3
  %or.cond16 = and i1 %i.l, %i.n
  br i1 %or.cond16, label %bb.ag, label %switch.edge.thread.thread

switch.edge.thread.thread:                        ; preds = %switch.edge, %switch.edge.thread
  %17 = phi i8 [ %16, %switch.edge.thread ], [ 0, %switch.edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.o = tail call fastcc { i16, ptr } @_ZL22calculatePreExtendTypeN4llvm7SDValueE(ptr nonnull %.sroa.0203.0.copyload) ; 4 uses
  %i.p = extractvalue { i16, ptr } %i.o, 0        ; 5 uses
  store i16 %i.p, ptr %8, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.r = extractvalue { i16, ptr } %i.o, 1        ; 2 uses
  store ptr %i.r, ptr %i.q, align 8
  %.not.i.i = icmp eq i16 %i.p, 1
  %i.s = icmp eq ptr %i.r, null
  %.not4.i = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %.not4.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %switch.edge.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %.not.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.t = add i16 %i.p, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.t, 197
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.c
  %i.u = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br i1 %i.u, label %bb.e, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %.split.i.i
  %i.v = zext nneg i16 %i.p to i64
  %i.w = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !227
  %i.z = insertvalue { i16, ptr } poison, i16 %i.y, 0
  %i.aa = insertvalue { i16, ptr } %i.z, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.ab = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %.split.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %bb.e, %bb.d
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.ab, %bb.e ], [ %i.aa, %bb.d ], [ %i.o, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %i.o, %.split.i.i ] ; 2 uses
  %i.ac = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.ac, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ae, ptr %i.ad, align 8
  %.not.i.i165 = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i165, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.af = zext i16 %i.ac to i64
  %i.ag = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ah, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ai = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  %i.aj = extractvalue { i64, i8 } %i.ai, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.f, %bb.g
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.f ], [ %i.aj, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ak = load i16, ptr %7, align 8, !tbaa !361   ; 4 uses
  %.not.i.i.i166 = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i166, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i176, label %.split.i.i167

.split.i.i167:                                    ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.al = add i16 %i.ak, -19
  %spec.select.i.i.i.i168 = icmp ult i16 %i.al, 197
  br i1 %spec.select.i.i.i.i168, label %bb.h, label %bb.j

_ZNK4llvm3EVT8isVectorEv.exit.i.i176:             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.am = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  br i1 %i.am, label %bb.i, label %bb.j

bb.h:                                             ; preds = %.split.i.i167
  %i.an = zext nneg i16 %i.ak to i64
  %i.ao = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !227
  %i.ar = insertvalue { i16, ptr } poison, i16 %i.aq, 0
  %i.as = insertvalue { i16, ptr } %i.ar, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i171

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i176
  %i.at = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i171

bb.j:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i176, %.split.i.i167
  %.sroa.31.0.copyload.i.i170 = load ptr, ptr %i.e, align 8, !tbaa !380
  %i.au = insertvalue { i16, ptr } poison, i16 %i.ak, 0
  %i.av = insertvalue { i16, ptr } %i.au, ptr %.sroa.31.0.copyload.i.i170, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i171

_ZNK4llvm3EVT13getScalarTypeEv.exit.i171:         ; preds = %bb.j, %bb.i, %bb.h
  %.fca.1.insert.merged.i.i172 = phi { i16, ptr } [ %i.av, %bb.j ], [ %i.as, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %i.aw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i172, 0 ; 3 uses
  store i16 %i.aw, ptr %5, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i172, 1
  store ptr %i.ay, ptr %i.ax, align 8
  %.not.i.i173 = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i173, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i171
  %i.az = zext i16 %i.aw to i64
  %i.ba = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.sroa.0.0.copyload.i.i.i174 = load i64, ptr %i.bb, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i171
  %i.bc = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  %i.bd = extractvalue { i64, i8 } %i.bc, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177:     ; preds = %bb.k, %bb.l
  %.pn.i.i175 = phi i64 [ %.sroa.0.0.copyload.i.i.i174, %bb.k ], [ %i.bd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.be = lshr i64 %.pn.i.i175, 1
  %.not159 = icmp eq i64 %.pn.i.i, %i.be
  br i1 %.not159, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !384 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !672 ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %.idx = mul nuw nsw i64 %i.bi, 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %.not160241 = icmp eq i16 %i.bh, 1
  br i1 %.not160241, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bk = zext i1 %15 to i8
  %.0154240 = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.0102.0.copyload = load i16, ptr %8, align 8
  %.sroa.2104.0.copyload = load ptr, ptr %i.q, align 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.t
  %.0154245 = phi ptr [ %.0154240, %.lr.ph ], [ %.0154, %bb.t ] ; 2 uses
  %.0145244 = phi i8 [ %17, %.lr.ph ], [ %.3148, %bb.t ] ; 3 uses
  %.0149243 = phi i8 [ %i.bk, %.lr.ph ], [ %.3152, %bb.t ] ; 3 uses
  %.sroa.0195.0.copyload = load ptr, ptr %.0154245, align 8, !tbaa !394 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0195.0.copyload, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !383 ; 4 uses
  %i.bn = add i32 %i.bm, -53
  %spec.select.i.i = icmp ult i32 %i.bn, 2
  br i1 %spec.select.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = call fastcc { i16, ptr } @_ZL22calculatePreExtendTypeN4llvm7SDValueE(ptr nonnull %.sroa.0195.0.copyload) ; 2 uses
  %i.bp = extractvalue { i16, ptr } %i.bo, 0
  %i.bq = extractvalue { i16, ptr } %i.bo, 1
  %.not.i = icmp ne i16 %i.bp, %.sroa.0102.0.copyload
  %i.br = icmp ne ptr %i.bq, %.sroa.2104.0.copyload
  %i.bs = select i1 %.not.i, i1 true, i1 %i.br
  br i1 %i.bs, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %i.f, align 8, !tbaa !383
  %i.bu = icmp eq i32 %i.bt, 171
  %i.bv = add i32 %i.bm, -230
  %i.bw = icmp ult i32 %i.bv, -3
  %or.cond22 = and i1 %i.bw, %i.bu
  br i1 %or.cond22, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %i.bm, label %bb.r [
    i32 229, label %bb.t
    i32 236, label %bb.s
    i32 227, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp eq i32 %i.bm, 3
  %i.by = zext i1 %i.bx to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.q, %bb.r
  %i.bz = phi i8 [ %i.by, %bb.r ], [ 1, %bb.q ], [ 1, %bb.q ] ; 2 uses
  %i.ca = trunc nuw i8 %.0149243 to i1
  %18 = and i8 %.0145244, 1
  %.not161 = icmp ne i8 %i.bz, %18
  %or.cond.not = select i1 %i.ca, i1 %.not161, i1 false
  br i1 %or.cond.not, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.q
  %.3152 = phi i8 [ %.0149243, %bb.n ], [ 1, %bb.s ], [ %.0149243, %bb.q ] ; 2 uses
  %.3148 = phi i8 [ %.0145244, %bb.n ], [ %i.bz, %bb.s ], [ %.0145244, %bb.q ] ; 2 uses
  %.0154 = getelementptr inbounds nuw i8, ptr %.0154245, i64 40 ; 2 uses
  %.not160 = icmp eq ptr %.0154, %i.bj
  br i1 %.not160, label %._crit_edge.loopexit, label %bb.n

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.cb = trunc nuw i8 %.3152 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.0149.lcssa = phi i1 [ %15, %bb.m ], [ %i.cb, %._crit_edge.loopexit ]
  %.0145.lcssa = phi i8 [ %17, %bb.m ], [ %.3148, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !389
  store i64 %i.cd, ptr %9, align 8, !tbaa !389
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !390
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !392
  %i.ch = load i32, ptr %i.f, align 8, !tbaa !383
  %i.ci = icmp eq i32 %i.ch, 162
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !683 ; 2 uses
  br i1 %i.ci, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %._crit_edge
  %.sroa.084.0.copyload = load i16, ptr %8, align 8, !tbaa !227
  %.sroa.286.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !380
  %i.cl = call { i16, ptr } @_ZNK4llvm3EVT23changeVectorElementTypeERNS_11LLVMContextES0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i16 %.sroa.084.0.copyload, ptr %.sroa.286.0.copyload) ; 2 uses
  %i.cm = extractvalue { i16, ptr } %i.cl, 0
  %i.cn = extractvalue { i16, ptr } %i.cl, 1
  %i.co = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.cp = icmp ult i64 %i.co, 32                  ; 2 uses
  %.sroa.0189.0.copyload = load i16, ptr %8, align 8
  %.sroa.6190.0.copyload = load ptr, ptr %i.q, align 8
  %.sroa.6190.0 = select i1 %i.cp, ptr null, ptr %.sroa.6190.0.copyload ; 2 uses
  %.sroa.0189.0 = select i1 %i.cp, i16 7, i16 %.sroa.0189.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.cq, ptr %10, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !413
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 8, ptr %i.cs, align 4, !tbaa !601
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !384 ; 2 uses
  %i.cu = load i16, ptr %i.bg, align 8, !tbaa !672 ; 2 uses
  %i.cv = zext i16 %i.cu to i64
  %.idx252 = mul nuw nsw i64 %i.cv, 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx252
  %.not162247 = icmp eq i16 %i.cu, 0
  br i1 %.not162247, label %._crit_edge251, label %.lr.ph250

._crit_edge251.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre = load ptr, ptr %10, align 8, !tbaa !62
  %.pre253 = load i32, ptr %i.cr, align 8, !tbaa !413
  %i.cx = zext i32 %.pre253 to i64
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %._crit_edge251.loopexit, %bb.u
  %i.cy = phi i64 [ %i.cx, %._crit_edge251.loopexit ], [ 0, %bb.u ]
  %i.cz = phi ptr [ %.pre, %._crit_edge251.loopexit ], [ %i.cq, %bb.u ]
  store ptr %i.cz, ptr %11, align 8, !tbaa !675
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !676
  %i.db = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %i.cm, ptr %i.cn, ptr noundef nonnull byval(%"class.llvm::ArrayRef.463") align 8 %11) #35
  %i.dc = load ptr, ptr %10, align 8, !tbaa !62   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cq
  br i1 %i.dd, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge251
  call void @free(ptr noundef %i.dc) #35
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %._crit_edge251, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.af

.lr.ph250:                                        ; preds = %bb.u, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.0155248 = phi ptr [ %i.ds, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.ct, %bb.u ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.0155248, align 8, !tbaa !394 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !383
  %i.dg = add i32 %i.df, -53
  %spec.select.i.i182 = icmp ult i32 %i.dg, 2
  br i1 %spec.select.i.i182, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0189.0, ptr %.sroa.6190.0) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph250
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !384 ; 2 uses
  %.sroa.067.0.copyload = load ptr, ptr %i.dj, align 8, !tbaa !394
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.268.0.copyload = load i32, ptr %.sroa.268.0..sroa_idx, align 8, !tbaa !337
  %i.dk = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %.sroa.067.0.copyload, i32 %.sroa.268.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0189.0, ptr %.sroa.6190.0) #35
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %i.dk, %bb.x ] ; 2 uses
  %.sroa.378.0 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.077.0 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.dl = load i32, ptr %i.cr, align 8, !tbaa !413 ; 2 uses
  %i.dm = load i32, ptr %i.cs, align 4, !tbaa !601
  %.not.i183 = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i183, label %bb.aa, label %bb.z, !prof !677

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.077.0, i32 %.sroa.378.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = zext i32 %i.dl to i64
  %i.do = load ptr, ptr %10, align 8, !tbaa !62
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  store ptr %.sroa.077.0, ptr %i.dp, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %.sroa.378.0, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.dq = load i32, ptr %i.cr, align 8, !tbaa !413
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.cr, align 8, !tbaa !413
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.z, %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %.0155248, i64 40 ; 2 uses
  %.not162 = icmp eq ptr %i.ds, %i.cw
  br i1 %.not162, label %._crit_edge251.loopexit, label %.lr.ph250

bb.ab:                                            ; preds = %._crit_edge
  %i.dt = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.du = extractvalue { i16, ptr } %i.dt, 0
  %i.dv = extractvalue { i16, ptr } %i.dt, 1
  %i.dw = call { i16, ptr } @_ZNK4llvm3EVT23changeVectorElementTypeERNS_11LLVMContextES0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i16 %i.du, ptr %i.dv) ; 2 uses
  %i.dx = extractvalue { i16, ptr } %i.dw, 0      ; 2 uses
  %i.dy = extractvalue { i16, ptr } %i.dw, 1      ; 2 uses
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !384 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !385
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !384 ; 2 uses
  %.sroa.039.0.copyload = load ptr, ptr %i.ec, align 8, !tbaa !394
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.240.0.copyload = load i32, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !337
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !385 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !383
  %i.eh = add i32 %i.eg, -53
  %spec.select.i.i184 = icmp ult i32 %i.eh, 2
  br i1 %spec.select.i.i184, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.dx, ptr %i.dy) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.ei, 0
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.ei, 1
  store ptr %.fca.0.extract32, ptr %12, align 8
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract33, ptr %.sroa.235.0..sroa_idx, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false), !tbaa.struct !395
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.el = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 2 uses
  %i.em = extractvalue { ptr, i64 } %i.el, 0
  store ptr %i.em, ptr %13, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eo = extractvalue { ptr, i64 } %i.el, 1
  store i64 %i.eo, ptr %i.en, align 8
  %i.ep = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %i.dx, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr %.sroa.039.0.copyload, i32 %.sroa.240.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::ArrayRef.361") align 8 %13) #35
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.pn236 = phi { ptr, i32 } [ %i.db, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ %i.ep, %bb.ae ] ; 2 uses
  %.sroa.0191.0 = extractvalue { ptr, i32 } %.pn236, 0
  %.sroa.6192.0 = extractvalue { ptr, i32 } %.pn236, 1
  %i.eq = trunc nuw i8 %.0145.lcssa to i1
  %i.er = select i1 %i.eq, i32 227, i32 228
  %i.es = select i1 %.0149.lcssa, i32 %i.er, i32 229
  %.sroa.025.0.copyload = load i16, ptr %7, align 8, !tbaa !227
  %.sroa.227.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !380
  store ptr %.sroa.0191.0, ptr %14, align 8, !tbaa !394
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.6192.0, ptr %.sroa.6192.0..sroa_idx, align 8, !tbaa !337
  %i.et = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef %i.es, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.025.0.copyload, ptr %.sroa.227.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.et, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.et, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.p, %bb.o, %switch.edge.thread.thread, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177, %bb.af
  %.sroa.16.3 = phi i32 [ 0, %switch.edge.thread.thread ], [ %.fca.1.extract, %bb.af ], [ 0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177 ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ]
  %.sroa.0220.3 = phi ptr [ null, %switch.edge.thread.thread ], [ %.fca.0.extract, %bb.af ], [ null, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit177 ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %.loopexit, %switch.early.test, %switch.edge.thread
  %.sroa.16.5 = phi i32 [ 0, %bb.a ], [ %.sroa.16.3, %.loopexit ], [ 0, %switch.early.test ], [ 0, %switch.edge.thread ]
  %.sroa.0220.5 = phi ptr [ null, %bb.a ], [ %.sroa.0220.3, %.loopexit ], [ null, %switch.early.test ], [ null, %switch.edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0220.5, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.16.5, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i16, ptr } @_ZL22calculatePreExtendTypeN4llvm7SDValueE(ptr nofree readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !383
  switch i32 %i.b, label %bb.i [
    i32 227, label %bb.b
    i32 228, label %bb.b
    i32 229, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 236, label %bb.c
    i32 193, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !384  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !396
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !379
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.k, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !384
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !385  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !383
  %i.r = icmp ne i32 %i.q, 8
  %.not816 = icmp eq ptr %i.o, null
  %.not8 = or i1 %.not816, %i.r
  br i1 %.not8, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.s, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !380
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !384
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !385  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !383
  switch i32 %i.y, label %bb.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.e, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !388 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !382
  %i.ae = icmp ult i32 %i.ad, 65
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i.i.i9 = select i1 %i.ae, ptr %i.ab, ptr %i.af
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i9, align 8, !tbaa !334
  switch i64 %.0.i.i.i, label %bb.h [
    i64 255, label %bb.i
    i64 65535, label %bb.f
    i64 4294967295, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  br label %bb.i

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit, %bb.e, %bb.c, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.sroa.013.0 = phi i16 [ 5, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ], [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 7, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.d ], [ 1, %bb.c ], [ 1, %bb.h ], [ 1, %bb.e ], [ 6, %bb.f ], [ 1, %bb.a ]
  %.sroa.10.0 = phi ptr [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit ], [ %.sroa.21.0.copyload.i.i, %bb.b ], [ null, %bb.g ], [ %.sroa.21.0.copyload.i, %bb.d ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %.sroa.10.0, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

declare void @_ZN4llvm5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #5

declare void @_ZN4llvm5APInt7sdivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL37tryToReplaceScalarFPConversionWithSVEPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 11 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SmallVector.922", align 8 ; 10 uses
  %15 = alloca %"class.llvm::ArrayRef.463", align 8 ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = tail call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %i.a, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1083
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 419
  %i.f = load i8, ptr %i.e, align 1, !tbaa !2576, !range !58, !noundef !59
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 513
  %i.i = load i8, ptr %i.h, align 1, !tbaa !224, !range !58, !noundef !59
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.l = load i8, ptr %i.k, align 8, !range !58
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 865
  %i.o = load i8, ptr %i.n, align 1, !range !58
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  %i.r = select i1 %i.j, i1 true, i1 %i.q
  br i1 %i.r, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 866
  %i.t = load i8, ptr %i.s, align 2, !tbaa !223, !range !58, !noundef !59
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !384  ; 2 uses
  %.sroa.0127.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !394 ; 2 uses
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.x = load <2 x i32>, ptr %.sroa.5129.0..sroa_idx, align 8
  %.sroa.5129.0.copyload = load i32, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !337
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !379
  %i.aa = zext i32 %.sroa.5129.0.copyload to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ab, align 8, !tbaa !227 ; 8 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ad, align 8, !tbaa !227 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !380 ; 3 uses
  store i16 %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.af, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.g
  %i.ag = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.ag, 197
  br i1 %spec.select.i.i.i, label %"_ZZL37tryToReplaceScalarFPConversionWithSVEPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEENK3$_0clENS_3EVTE.exit.thread", label %bb.h

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.g
  %i.ah = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br i1 %i.ah, label %"_ZZL37tryToReplaceScalarFPConversionWithSVEPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEENK3$_0clENS_3EVTE.exit.thread", label %"_ZZL37tryToReplaceScalarFPConversionWithSVEPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEENK3$_0clENS_3EVTE.exit.thread136"
end_hunk_0
