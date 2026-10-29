Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 254
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 339
begin_hunk_0_@_ZL17combineXorSubCTLZPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE:bb.a
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread, %bb.h
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.h ], [ %.sroa.018.022.i.i, %.thread ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.h ], [ 1, %.thread ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !467
  %i.v = icmp ne i32 %i.u, %.sroa.8.0             ; 2 uses
  %i.w = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %cond.i.i, label %bb.h, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.h
  %i.x = icmp eq i32 %.214.i.i, 0
  br i1 %i.x, label %bb.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !468
  switch i32 %i.z, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !654 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !643
  %i.af = icmp ult i32 %i.ae, 65
  %i.ag = load ptr, ptr %i.ac, align 8
  %spec.select.i.i.i = select i1 %i.af, ptr %i.ac, ptr %i.ag
  %.0.i.i.i63 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !469
  %i.aj = zext i32 %.sroa.8.0 to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ak, align 8, !tbaa !345 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.al, align 8
  %.not.i.i64 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i64, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.am = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.an = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.ao, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.an, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.k:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ap = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #40
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.j, %bb.k
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %.fca.1.extract39 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.aq = trunc nuw i8 %.fca.1.extract39 to i1
  br i1 %i.aq, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.l:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract38 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.ar = add i64 %.fca.0.extract38, -1
  %.not59 = icmp eq i64 %.0.i.i.i63, %i.ar
  br i1 %.not59, label %bb.m, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !638 ; 3 uses
  %.sroa.049.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !465 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4 ; 3 uses
  %.not.i.i65 = icmp ne i16 %.sroa.0.0.copyload.i, 5
  %.not4.i.not = select i1 %.not.i.i65, i1 true, i1 %i.d ; 2 uses
  br i1 %.not4.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %.sroa.049.0.copyload, ptr %5, align 8, !tbaa !465
  %.sroa.22.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx53, align 8, !tbaa !240
  %.sroa.33.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sroa.33.0.copyload, ptr %.sroa.33.0..sroa_idx59, align 4
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #39 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.au, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.22.0 = phi i32 [ %.fca.1.extract24, %bb.n ], [ %.sroa.22.0.copyload, %bb.m ]
  %.sroa.049.0 = phi ptr [ %.fca.0.extract23, %bb.n ], [ %.sroa.049.0.copyload, %bb.m ]
  %.sroa.033.0 = phi i16 [ 7, %bb.n ], [ %.sroa.0.0.copyload.i, %bb.m ] ; 2 uses
  %.sroa.10.0 = phi ptr [ null, %bb.n ], [ %.sroa.21.0.copyload.i, %bb.m ] ; 2 uses
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %.sroa.033.0, ptr %.sroa.10.0, i16 7, ptr null) #39 ; 2 uses
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = extractvalue { ptr, i32 } %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.033.0, ptr %.sroa.10.0) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ay, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ay, 1
  store ptr %.fca.0.extract6, ptr %6, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  store ptr %.sroa.049.0, ptr %7, align 8, !tbaa !465
  %.sroa.22.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx55, align 8, !tbaa !240
  %.sroa.33.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.33.0.copyload, ptr %.sroa.33.0..sroa_idx61, align 4
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 557, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %i.aw, i32 %i.ax, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #39 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.az, 0 ; 2 uses
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.az, 1 ; 2 uses
  br i1 %.not4.i.not, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.fca.0.extract2, ptr %8, align 8, !tbaa !465
  %.sroa.22.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.22.0..sroa_idx57, align 8, !tbaa !240
  %.sroa.33.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.33.0.copyload, ptr %.sroa.33.0..sroa_idx63, align 4
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #39 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ba, 1
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %.thread, %bb.c, %bb.o, %bb.p, %bb.g, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.i, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.e, %bb.a
  %.sroa.22.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ], [ 0, %bb.e ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.fca.1.extract, %bb.p ], [ %.fca.1.extract3, %bb.o ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %.thread ], [ 0, %.lr.ph.i.i ]
  %.sroa.049.4 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit ], [ null, %bb.e ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.fca.0.extract, %bb.p ], [ %.fca.0.extract2, %bb.o ], [ null, %bb.i ], [ null, %bb.g ], [ null, %.thread ], [ null, %.lr.ph.i.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.049.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.22.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17isHorizontalBinOpjRN4llvm7SDValueES1_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEb(i32 noundef range(i32 645, 703) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 8 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %11 = alloca %"class.llvm::SmallVector.416", align 8 ; 12 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 12 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %14 = alloca %"class.llvm::SmallVector.416", align 8 ; 12 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !472    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !468
  %i.e = add i32 %i.d, -53
  %spec.select.i.i = icmp ult i32 %i.e, 2
  br i1 %spec.select.i.i, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !472
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !468
  %i.i = add i32 %i.h, -53
  %spec.select.i.i137 = icmp ult i32 %i.i, 2
  br i1 %spec.select.i.i137, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !467  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !469
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !345 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.p = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i138 = icmp ult i16 %i.p, 53
  br i1 %spec.select.i.i138, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.c
  %i.q = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 3 uses
  %i.r = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !339  ; 7 uses
  %i.u = zext i16 %i.t to i32                     ; 23 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store ptr null, ptr %9, align 8, !tbaa !472
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr null, ptr %10, align 8, !tbaa !472
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.x, ptr %11, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !633
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  store i32 16, ptr %i.z, align 4, !tbaa !634
  call fastcc void @"_ZZL17isHorizontalBinOpjRN4llvm7SDValueES1_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbENK3$_0clES0_S1_S1_SA_"(ptr nonnull %3, ptr nonnull %i.a, ptr nonnull %i.b, i32 %i.k, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  store ptr null, ptr %12, align 8, !tbaa !472
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store ptr null, ptr %13, align 8, !tbaa !472
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.ac, ptr %14, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !633
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 16, ptr %i.ae, align 4, !tbaa !634
  %.sroa.059.0.copyload = load ptr, ptr %2, align 8, !tbaa !465
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.260.0.copyload = load i32, ptr %.sroa.260.0..sroa_idx, align 8, !tbaa !240
  call fastcc void @"_ZZL17isHorizontalBinOpjRN4llvm7SDValueES1_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbENK3$_0clES0_S1_S1_SA_"(ptr nonnull %3, ptr nonnull %i.a, ptr %.sroa.059.0.copyload, i32 %.sroa.260.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  %i.af = load i32, ptr %i.y, align 8, !tbaa !633 ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0                  ; 2 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !633 ; 4 uses
  %i.ah = or i32 %i.ag, %i.af
  %.demorgan = icmp eq i32 %i.ah, 0
  br i1 %.demorgan, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  br i1 %.not.i, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !683
  %.not257 = icmp eq i16 %i.t, 0
  br i1 %.not257, label %thread-pre-split.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.091258 = phi i32 [ %i.ap, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ 0, %bb.f ] ; 3 uses
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !633 ; 2 uses
  %i.aj = load i32, ptr %i.z, align 4, !tbaa !634
  %.not.i141 = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i141, label %bb.h, label %bb.g, !prof !635

bb.g:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %.091258)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %11, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ak
  store i32 %.091258, ptr %i.am, align 1
  %i.an = load i32, ptr %i.y, align 8, !tbaa !633
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.y, align 8, !tbaa !633
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.g, %bb.h
  %i.ap = add nuw nsw i32 %.091258, 1             ; 2 uses
  %.not = icmp eq i32 %i.ap, %i.u
  br i1 %.not, label %thread-pre-split.loopexit, label %.lr.ph, !llvm.loop !5180

thread-pre-split.loopexit:                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.pr.pre = load i32, ptr %i.ad, align 8, !tbaa !633
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.e
  %i.aq = phi i32 [ %i.ag, %bb.e ], [ %.pr.pre, %thread-pre-split.loopexit ]
  %.not.i142 = icmp eq i32 %i.aq, 0
  br i1 %.not.i142, label %bb.i, label %.loopexit256

thread-pre-split.thread:                          ; preds = %bb.f
  %.not.i142311 = icmp eq i32 %i.ag, 0
  br i1 %.not.i142311, label %.thread, label %.loopexit256

.thread:                                          ; preds = %thread-pre-split.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !683
  br label %.loopexit256

bb.i:                                             ; preds = %thread-pre-split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !683
  %.not100259 = icmp eq i16 %i.t, 0
  br i1 %.not100259, label %.loopexit256, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit144
  %.092260 = phi i32 [ %i.ay, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit144 ], [ 0, %bb.i ] ; 3 uses
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !633 ; 2 uses
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !634
  %.not.i143 = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i143, label %bb.k, label %bb.j, !prof !635

bb.j:                                             ; preds = %.lr.ph261
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %.092260)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit144

bb.k:                                             ; preds = %.lr.ph261
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %14, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  store i32 %.092260, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !633
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ad, align 8, !tbaa !633
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit144

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit144: ; preds = %bb.j, %bb.k
  %i.ay = add nuw nsw i32 %.092260, 1             ; 2 uses
  %.not100 = icmp eq i32 %i.ay, %i.u
  br i1 %.not100, label %.loopexit256, label %.lr.ph261, !llvm.loop !5181

.loopexit256:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit144, %.thread, %thread-pre-split.thread, %bb.i, %thread-pre-split
  %i.az = load ptr, ptr %11, align 8, !tbaa !83   ; 2 uses
  %i.ba = load i32, ptr %i.y, align 8, !tbaa !633
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = call fastcc noundef zeroext i1 @_ZL16isUndefOrInRangeN4llvm8ArrayRefIiEEii(ptr %i.az, i64 %i.bb, i32 noundef 0, i32 noundef %i.u)
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit256
  store ptr null, ptr %10, align 8, !tbaa !465
  store i32 0, ptr %i.w, align 8, !tbaa !240
  br label %bb.o

bb.m:                                             ; preds = %.loopexit256
  %i.bd = shl nuw nsw i32 %i.u, 1
  %i.be = call fastcc noundef zeroext i1 @_ZL16isUndefOrInRangeN4llvm8ArrayRefIiEEii(ptr %i.az, i64 %i.bb, i32 noundef %i.u, i32 noundef %i.bd)
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %9, align 8, !tbaa !465
  store i32 0, ptr %i.v, align 8, !tbaa !240
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.bf = load ptr, ptr %14, align 8, !tbaa !83   ; 7 uses
  %i.bg = load i32, ptr %i.ad, align 8, !tbaa !633 ; 7 uses
  %i.bh = zext i32 %i.bg to i64                   ; 5 uses
  %i.bi = call fastcc noundef zeroext i1 @_ZL16isUndefOrInRangeN4llvm8ArrayRefIiEEii(ptr %i.bf, i64 %i.bh, i32 noundef 0, i32 noundef %i.u)
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %13, align 8, !tbaa !465
  store i32 0, ptr %i.ab, align 8, !tbaa !240
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bj = shl nuw nsw i32 %i.u, 1
  %i.bk = call fastcc noundef zeroext i1 @_ZL16isUndefOrInRangeN4llvm8ArrayRefIiEEii(ptr %i.bf, i64 %i.bh, i32 noundef %i.u, i32 noundef %i.bj)
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %12, align 8, !tbaa !465
  store i32 0, ptr %i.aa, align 8, !tbaa !240
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.bl = load ptr, ptr %9, align 8, !tbaa !472
  %.fr = freeze ptr %i.bl                         ; 6 uses
  %i.bm = load ptr, ptr %12, align 8, !tbaa !472
  %i.bn = icmp ne ptr %.fr, %i.bm
  %i.bo = load i32, ptr %i.v, align 8             ; 4 uses
  %i.bp = load i32, ptr %i.aa, align 8
  %i.bq = icmp ne i32 %i.bo, %i.bp
  %.not3.i = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %.not3.i, label %bb.t, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not17.i = icmp eq i32 %i.bg, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %i.br = sub i32 0, %i.bg                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader330, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bh, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue326, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue326 ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !240 ; 3 uses
  %i.bt = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.bu = icmp slt <4 x i32> %wide.load, %broadcast.splat320
  %i.bv = select <4 x i1> %i.bu, <4 x i32> %broadcast.splat320, <4 x i32> %broadcast.splat
  %i.bw = add <4 x i32> %i.bv, %wide.load         ; 4 uses
  %i.bx = extractelement <4 x i1> %i.bt, i64 0
  br i1 %i.bx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.by = extractelement <4 x i32> %i.bw, i64 0
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !240
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <4 x i1> %i.bt, i64 1
  br i1 %i.bz, label %pred.store.if321, label %pred.store.continue322

pred.store.if321:                                 ; preds = %pred.store.continue
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = extractelement <4 x i32> %i.bw, i64 1
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !240
  br label %pred.store.continue322

pred.store.continue322:                           ; preds = %pred.store.if321, %pred.store.continue
  %i.cd = extractelement <4 x i1> %i.bt, i64 2
  br i1 %i.cd, label %pred.store.if323, label %pred.store.continue324

pred.store.if323:                                 ; preds = %pred.store.continue322
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = extractelement <4 x i32> %i.bw, i64 2
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !240
  br label %pred.store.continue324

pred.store.continue324:                           ; preds = %pred.store.if323, %pred.store.continue322
  %i.ch = extractelement <4 x i1> %i.bt, i64 3
  br i1 %i.ch, label %pred.store.if325, label %pred.store.continue326

pred.store.if325:                                 ; preds = %pred.store.continue324
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = extractelement <4 x i32> %i.bw, i64 3
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !240
  br label %pred.store.continue326

pred.store.continue326:                           ; preds = %pred.store.if325, %pred.store.continue324
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5182

middle.block:                                     ; preds = %pred.store.continue326
  %cmp.n = icmp eq i64 %n.vec, %i.bh
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader330

.lr.ph.i.preheader330:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader330, %bb.u
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader330 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !240 ; 3 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.u, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.cp = icmp slt i32 %i.cn, %i.bg
  %.sink.p.i = select i1 %i.cp, i32 %i.bg, i32 %i.br
  %.sink.i = add i32 %.sink.p.i, %i.cn
  store i32 %.sink.i, ptr %i.cm, align 4, !tbaa !240
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i145 = icmp eq i64 %indvars.iv.next.i, %i.bh
  br i1 %.not.i145, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i, !llvm.loop !5183

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %bb.u, %middle.block, %bb.t, %bb.s
  %i.cq = load ptr, ptr %12, align 8, !tbaa !472
  %i.cr = icmp eq ptr %.fr, %i.cq
  %i.cs = load i32, ptr %i.aa, align 8
  %i.ct = icmp eq i32 %i.bo, %i.cs
  %i.cu = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  %i.cv = load ptr, ptr %10, align 8, !tbaa !472
  %.fr271 = freeze ptr %i.cv                      ; 5 uses
  %i.cw = load ptr, ptr %13, align 8, !tbaa !472
  %i.cx = icmp eq ptr %.fr271, %i.cw
  %i.cy = load i32, ptr %i.w, align 8             ; 3 uses
  %i.cz = load i32, ptr %i.ab, align 8
  %i.da = icmp eq i32 %i.cy, %i.cz
  %i.db = select i1 %i.cx, i1 %i.da, i1 false
  br i1 %i.db, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.dc, align 8, !tbaa !633
  %i.dd = zext i16 %i.t to i64                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !634
  %.not.i.i.i = icmp ult i32 %i.df, %i.u
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.thread, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, !prof !648

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.thread: ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.dg, i64 noundef %i.dd, i64 noundef 4) #39
  %.pre4.pre.i = load i32, ptr %i.dc, align 8, !tbaa !633
  %i.dh = zext i32 %.pre4.pre.i to i64
  br label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i: ; preds = %bb.w
  %i.di = icmp eq i16 %i.t, 0
  br i1 %i.di, label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.thread, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %.pre4.i227 = phi i64 [ %i.dh, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.thread ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ]
  %i.dj = load ptr, ptr %6, align 8, !tbaa !83
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.pre4.i227
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.dd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dk, i8 -1, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !240
  %.pre.i = load i32, ptr %i.dc, align 8, !tbaa !633
  br label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit

_ZN4llvm15SmallVectorImplIiE6appendEmi.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i
  %i.dl = phi i32 [ %.pre.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ]
  %i.dm = add i32 %i.dl, %i.u
  store i32 %i.dm, ptr %i.dc, align 8, !tbaa !633
  %i.dn = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.q ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.dn, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.do = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.do, label %bb.x, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit
  %i.dp = getelementptr i8, ptr %i.dn, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.dp, align 16 ; 2 uses
  %i.dq = lshr i64 %.sroa.0.0.copyload.i, 7
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %i.ds = udiv i32 %i.u, %i.dr                    ; 8 uses
  %i.dt = lshr i32 %i.ds, 1                       ; 3 uses
  %.not101265 = icmp eq i16 %i.t, 0               ; 2 uses
  br i1 %.not101265, label %.critedge121, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.not102262 = icmp ugt i32 %i.dr, %i.u
  %i.du = load ptr, ptr %11, align 8              ; 2 uses
  %i.dv = load ptr, ptr %14, align 8              ; 2 uses
  %.not104 = icmp eq ptr %.fr271, null            ; 3 uses
  %i.dw = sub nsw i32 0, %i.ds                    ; 2 uses
  br i1 %.not102262, label %.critedge121, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not103 = icmp eq ptr %.fr, null
  br i1 %.not103, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.dx = zext nneg i32 %i.dt to i64
  %i.dy = zext nneg i32 %i.ds to i64
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  br i1 %.not104, label %.critedge121, label %.preheader.us268.preheader

.preheader.us268.preheader:                       ; preds = %.preheader.lr.ph.split.split.us
  %15 = zext nneg i32 %i.ds to i64
  br label %.preheader.us268

.preheader.us268:                                 ; preds = %.preheader.us268.preheader, %..critedge_crit_edge.split.us.us.split
  %.090266.us269 = phi i32 [ %38, %..critedge_crit_edge.split.us.us.split ], [ 0, %.preheader.us268.preheader ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %37, %.preheader.us268
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %37 ], [ 0, %.preheader.us268 ] ; 2 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.ea = add i32 %.090266.us269, %i.dz
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !240 ; 6 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.eb
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !240 ; 5 uses
  %i.eg = icmp slt i32 %i.ed, 0
  %i.eh = icmp slt i32 %i.ef, 0
  %or.cond.us.us = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond.us.us, label %37, label %16

16:                                               ; preds = %bb.y
  %17 = icmp slt i32 %i.ed, %i.u
  %18 = icmp slt i32 %i.ef, %i.u
  %or.cond113.us.us = select i1 %17, i1 true, i1 %18
  br i1 %or.cond113.us.us, label %37, label %19

19:                                               ; preds = %16
  %.not107.us.us = trunc i32 %i.ef to i1
  %20 = add nuw nsw i32 %i.ed, 1
  %21 = icmp eq i32 %20, %i.ef
  %or.cond116.us.us = select i1 %.not107.us.us, i1 %21, i1 false
  br i1 %or.cond116.us.us, label %27, label %22

22:                                               ; preds = %19
  %23 = and i32 %i.ed, 1
  %.not108.us.us = icmp eq i32 %23, 0
  br i1 %.not108.us.us, label %.loopexit, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %i.ef, 1
  %26 = icmp eq i32 %25, %i.ed
  %or.cond4.us.us = and i1 %5, %26
  br i1 %or.cond4.us.us, label %27, label %.loopexit

27:                                               ; preds = %24, %19
  %28 = and i32 %i.ed, 2147483646                 ; 3 uses
  %29 = urem i32 %28, %i.ds
  %30 = lshr i32 %29, 1
  %31 = urem i32 %28, %i.u
  %32 = and i32 %31, %i.dw
  %.not109.us.us = icmp samesign ult i32 %28, %i.u
  %33 = select i1 %.not109.us.us, i32 0, i32 %i.dt
  %34 = add nuw nsw i32 %30, %33
  %.088.us.us = add nuw nsw i32 %34, %32
  %35 = load ptr, ptr %6, align 8, !tbaa !83
  %36 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %i.eb
  store i32 %.088.us.us, ptr %36, align 4, !tbaa !240
  br label %37

37:                                               ; preds = %27, %16, %bb.y
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %.not102.us.us = icmp eq i64 %indvars.iv.next279, %15
  br i1 %.not102.us.us, label %..critedge_crit_edge.split.us.us.split, label %bb.y, !llvm.loop !5184

..critedge_crit_edge.split.us.us.split:           ; preds = %37
  %38 = add i32 %.090266.us269, %i.ds             ; 2 uses
  %.not101.us270 = icmp eq i32 %38, %i.u
  br i1 %.not101.us270, label %.critedge121, label %.preheader.us268, !llvm.loop !5185

.preheader:                                       ; preds = %.preheader.preheader, %..critedge_crit_edge.split
  %.090266 = phi i32 [ %i.ey, %..critedge_crit_edge.split ], [ 0, %.preheader.preheader ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %bb.ag
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %39 = trunc nuw nsw i64 %indvars.iv to i32
  %40 = add i32 %.090266, %39
  %41 = zext i32 %40 to i64                       ; 3 uses
  %42 = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !240    ; 6 uses
  %44 = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %41
  %45 = load i32, ptr %44, align 4, !tbaa !240    ; 5 uses
  %i.ei = icmp slt i32 %43, 0
  %i.ej = icmp slt i32 %45, 0
  %or.cond = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %or.cond, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not104, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not105 = icmp slt i32 %43, %i.u
  %.not106 = icmp slt i32 %45, %i.u
  %or.cond114 = select i1 %.not105, i1 %.not106, i1 false
  br i1 %or.cond114, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not107 = trunc i32 %45 to i1
  %i.ek = add nuw nsw i32 %43, 1
  %i.el = icmp eq i32 %i.ek, %45
  %or.cond116 = select i1 %.not107, i1 %i.el, i1 false
  br i1 %or.cond116, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = and i32 %43, 1
  %.not108 = icmp eq i32 %i.em, 0
  br i1 %.not108, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = add nuw nsw i32 %45, 1
  %i.eo = icmp eq i32 %i.en, %43
  %or.cond4 = and i1 %5, %i.eo
  br i1 %or.cond4, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %i.ep = and i32 %43, 2147483646                 ; 3 uses
  %i.eq = urem i32 %i.ep, %i.ds
  %i.er = lshr i32 %i.eq, 1
  %i.es = urem i32 %i.ep, %i.u
  %i.et = and i32 %i.es, %i.dw
  %.not109 = icmp samesign ult i32 %i.ep, %i.u
  %.not110 = icmp samesign ult i64 %indvars.iv, %i.dx
  %or.cond237 = select i1 %.not104, i1 %.not110, i1 %.not109
  %i.eu = select i1 %or.cond237, i32 0, i32 %i.dt
  %i.ev = add nuw nsw i32 %i.er, %i.eu
  %.088 = add nuw nsw i32 %i.ev, %i.et
  %i.ew = load ptr, ptr %6, align 8, !tbaa !83
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %41
  store i32 %.088, ptr %i.ex, align 4, !tbaa !240
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.af, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not102 = icmp eq i64 %indvars.iv.next, %i.dy
  br i1 %.not102, label %..critedge_crit_edge.split, label %bb.z, !llvm.loop !5184

..critedge_crit_edge.split:                       ; preds = %bb.ag
  %i.ey = add i32 %.090266, %i.ds                 ; 2 uses
  %.not101 = icmp eq i32 %i.ey, %i.u
  br i1 %.not101, label %.critedge121, label %.preheader, !llvm.loop !5185

.critedge121:                                     ; preds = %..critedge_crit_edge.split, %..critedge_crit_edge.split.us.us.split, %.preheader.lr.ph.split.split.us, %.preheader.lr.ph, %_ZNK4llvm8TypeSizecvmEv.exit
  %.not111 = icmp eq ptr %.fr, null               ; 2 uses
  %.sroa.0179.0.copyload = select i1 %.not111, ptr %.fr271, ptr %.fr ; 3 uses
  %.sroa.6182.0.copyload = select i1 %.not111, i32 %i.cy, i32 %i.bo ; 2 uses
  %.not112 = icmp eq ptr %.fr271, null            ; 2 uses
  %.sroa.0173.0.copyload = select i1 %.not112, ptr %.fr, ptr %.fr271 ; 3 uses
  %.sroa.6176.0.copyload = select i1 %.not112, i32 %i.bo, i32 %i.cy ; 2 uses
  %i.ez = load ptr, ptr %6, align 8, !tbaa !83    ; 2 uses
  %46 = load i32, ptr %i.dc, align 8, !tbaa !633
  br i1 %.not101265, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread, label %.lr.ph.i146.preheader

.lr.ph.i146.preheader:                            ; preds = %.critedge121
  %i.fa = zext i16 %i.t to i64
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.preheader, %bb.ah
  %indvars.iv281 = phi i64 [ 0, %.lr.ph.i146.preheader ], [ %indvars.iv.next282, %bb.ah ] ; 3 uses
  %indvars285 = trunc i64 %indvars.iv281 to i32
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv281
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !240 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %i.fe = icmp eq i32 %i.fc, %indvars285
  %i.ff = or i1 %i.fd, %i.fe
  br i1 %i.ff, label %bb.ah, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit

bb.ah:                                            ; preds = %.lr.ph.i146
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %.not.i147 = icmp eq i64 %indvars.iv.next282, %i.fa
  br i1 %.not.i147, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread, label %.lr.ph.i146, !llvm.loop !21

_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit: ; preds = %.lr.ph.i146
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !342
  %i.fi = icmp sgt i32 %i.fh, 7
  br i1 %i.fi, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit
  %i.fj = add i16 %.sroa.0.0.copyload.i.i.i, -12
  %or.cond.i = icmp ult i16 %i.fj, 7
  %i.fk = add i16 %.sroa.0.0.copyload.i.i.i, -105
  %or.cond3.i = icmp ult i16 %i.fk, 58
  %or.cond4.i = or i1 %or.cond.i, %or.cond3.i
  %i.fl = add i16 %.sroa.0.0.copyload.i.i.i, -195
  %spec.select.i = icmp ult i16 %i.fl, 21
  %i.fm = or i1 %spec.select.i, %or.cond4.i
  br i1 %i.fm, label %bb.aj, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fn = add nsw i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.fn, 197
  br i1 %spec.select.i.i.i, label %bb.ak, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.q
  %i.fp = getelementptr i8, ptr %i.fo, i64 -2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !345
  %.phi.trans.insert = zext i16 %i.fq to i64
  %.phi.trans.insert287 = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.phi.trans.insert
  %.phi.trans.insert288 = getelementptr i8, ptr %.phi.trans.insert287, i64 -16
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert288, align 16
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.aj, %bb.ak
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %bb.ak ], [ %.sroa.0.0.copyload.i, %bb.aj ]
  %i.fr = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.fs = zext i32 %46 to i64
  %i.ft = call fastcc noundef zeroext i1 @_ZL22isMultiLaneShuffleMaskjjN4llvm8ArrayRefIiEE(i32 noundef %i.fr, ptr nonnull %i.ez, i64 %i.fs)
  br i1 %i.ft, label %.loopexit, label %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread

_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread: ; preds = %bb.ah, %.critedge121, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.ai, %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit
  %.not253.a = phi i1 [ false, %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit ], [ false, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ], [ false, %bb.ai ], [ true, %.critedge121 ], [ true, %bb.ah ]
  br i1 %7, label %.critedge123, label %bb.al

bb.al:                                            ; preds = %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0179.0.copyload, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !476 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.al, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i"
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.gf, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i" ], [ %i.fv, %bb.al ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !475 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !468
  %i.ga = icmp eq i32 %i.fz, %0
  br i1 %i.ga, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !469 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i16, ptr %i.gc, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !471
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i
  %i.gd = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i, null
  %.not4.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %i.gd, i1 false
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %bb.am, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !477 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5186

bb.am:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i"
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !476 ; 2 uses
  %.not6.i.i.i.i.i.i150 = icmp eq ptr %i.gh, null
  br i1 %.not6.i.i.i.i.i.i150, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164", label %.lr.ph.i.i.i.i.i.i151

.lr.ph.i.i.i.i.i.i151:                            ; preds = %bb.am, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i153"
  %.sroa.04.07.i.i.i.i.i.i152 = phi ptr [ %i.gr, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i153" ], [ %i.gh, %bb.am ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i152, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !475 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !468
  %i.gm = icmp eq i32 %i.gl, %0
  br i1 %i.gm, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i158", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i153"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i158": ; preds = %.lr.ph.i.i.i.i.i.i151
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !469 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i159 = load i16, ptr %i.go, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i160 = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i161 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i160, align 8, !tbaa !471
  %.not.i.i.i.i.i.i.i.i.i.i162 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i159, %.sroa.0.0.copyload.i.i.i
  %i.gp = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i161, null
  %.not4.i.i.i.i.i.i.i.i.i163 = select i1 %.not.i.i.i.i.i.i.i.i.i.i162, i1 %i.gp, i1 false
  br i1 %.not4.i.i.i.i.i.i.i.i.i163, label %.critedge123, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i153"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i153": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i158", %.lr.ph.i.i.i.i.i.i151
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i152, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !477 ; 2 uses
  %.not.i.i.i.i.i.i154 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i154, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164", label %.lr.ph.i.i.i.i.i.i151, !llvm.loop !5186

"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.thread.i.i.i.i.i.i153", %bb.am, %bb.al
  %i.gs = icmp ne ptr %.sroa.0179.0.copyload, %.sroa.0173.0.copyload
  %i.gt = icmp ne i32 %.sroa.6182.0.copyload, %.sroa.6176.0.copyload
  %.not251.a = select i1 %i.gs, i1 true, i1 %i.gt
  %i.gu = icmp ne i32 %i.ag, 0
  %.not252 = xor i1 %.not.i, %i.gu
  %.not254 = and i1 %.not252, %.not253.a
  %.not248 = or i1 %.not251.a, %.not254
  %i.gv = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG16shouldOptForSizeEv(ptr noundef nonnull align 8 dereferenceable(920) %3) #39
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 430
  %i.gx = load i8, ptr %i.gw, align 2, !tbaa !770, !range !79, !noundef !80
  %i.gy = trunc nuw i8 %i.gx to i1
  %or.cond.i166 = or i1 %.not248, %i.gv
  %i.gz = or i1 %or.cond.i166, %i.gy
  br i1 %i.gz, label %.critedge123, label %.loopexit

.critedge123:                                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL17isHorizontalBinOpjRN4llvm7SDValueES4_RKNS2_12SelectionDAGERKNS2_12X86SubtargetEbRNS2_15SmallVectorImplIiEEbE3$_1EclINS2_6SDNode13user_iteratorEEEbT_.exit.i.i.i.i.i.i158", %_ZL26isSequentialOrUndefInRangeN4llvm8ArrayRefIiEEjjii.exit.thread, %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164"
  store ptr %.sroa.0179.0.copyload, ptr %1, align 8, !tbaa !465
  store i32 %.sroa.6182.0.copyload, ptr %i.j, align 8, !tbaa !240
  store ptr %.sroa.0173.0.copyload, ptr %2, align 8, !tbaa !465
  store i32 %.sroa.6176.0.copyload, ptr %.sroa.260.0..sroa_idx, align 8, !tbaa !240
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ae, %24, %22, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164", %.critedge123, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, %bb.v, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %.8 = phi i1 [ false, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ false, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit ], [ false, %bb.v ], [ false, %"_ZN4llvm6any_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL17isHorizontalBinOpjRNS_7SDValueES6_RKNS_12SelectionDAGERKNS_12X86SubtargetEbRNS_15SmallVectorImplIiEEbE3$_1EEbOT_T0_.exit164" ], [ false, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ], [ true, %.critedge123 ], [ false, %24 ], [ false, %22 ], [ false, %bb.ae ], [ false, %bb.ad ]
  %i.ha = load ptr, ptr %14, align 8, !tbaa !83   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.ac
  br i1 %i.hb, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.ha) #39
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %.loopexit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  %i.hc = load ptr, ptr %11, align 8, !tbaa !83   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.x
  br i1 %i.hd, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit167, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  call void @free(ptr noundef %i.hc) #39
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit167

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit167:        ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.b, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit167
  %.9 = phi i1 [ %.8, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit167 ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.9
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc i16 @"_ZZL25combineToHorizontalAddSubPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetEENK3$_2clERKNS_5SDLocERNS_7SDValueESC_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !5188, !nonnull !80, !align !237
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5189, !nonnull !80, !align !237 ; 2 uses
  %.sroa.034.0.copyload = load i16, ptr %i.c, align 8, !tbaa !345
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.236.0.copyload = load ptr, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !471
  %.sroa.031.0.copyload = load ptr, ptr %2, align 8, !tbaa !465
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %.sroa.232.0.copyload = load i32, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !240
  %i.d = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.a, i16 %.sroa.034.0.copyload, ptr %.sroa.236.0.copyload, ptr %.sroa.031.0.copyload, i32 %.sroa.232.0.copyload) #39 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.d, 0
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.d, 1
  store ptr %.fca.0.extract27, ptr %2, align 8, !tbaa !465
  store i32 %.fca.1.extract28, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !240
  %i.e = load ptr, ptr %0, align 8, !tbaa !5188, !nonnull !80, !align !237
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !5189, !nonnull !80, !align !237 ; 2 uses
  %.sroa.021.0.copyload = load i16, ptr %i.f, align 8, !tbaa !345
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.223.0.copyload = load ptr, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !471
  %.sroa.018.0.copyload = load ptr, ptr %3, align 8, !tbaa !465
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.sroa.219.0.copyload = load i32, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !240
  %i.g = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.e, i16 %.sroa.021.0.copyload, ptr %.sroa.223.0.copyload, ptr %.sroa.018.0.copyload, i32 %.sroa.219.0.copyload) #39 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.g, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.g, 1
  store ptr %.fca.0.extract14, ptr %3, align 8, !tbaa !465
  store i32 %.fca.1.extract15, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !240
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !5189, !nonnull !80, !align !237 ; 5 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !641  ; 6 uses
  %.not.i = icmp eq i16 %i.i, 0                   ; 2 uses
  br i1 %.not.i, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i16 %i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.j, 144
  br i1 %spec.select.i.i.i, label %_ZNK4llvm3EVT14is256BitVectorEv.exit, label %_ZL25isLaneCrossingShuffleMaskjjN4llvm8ArrayRefIiEE.exit

.split:                                           ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #40
  br i1 %i.k, label %bb.c, label %_ZL25isLaneCrossingShuffleMaskjjN4llvm8ArrayRefIiEE.exit

_ZNK4llvm3EVT14is256BitVectorEv.exit:             ; preds = %bb.b
  %i.l = zext nneg i16 %i.i to i64
  %i.m = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.n, align 16
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 256
  br i1 %i.o, label %bb.c, label %_ZL25isLaneCrossingShuffleMaskjjN4llvm8ArrayRefIiEE.exit

bb.c:                                             ; preds = %.split, %_ZNK4llvm3EVT14is256BitVectorEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5190, !nonnull !80, !align !237 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !633
  %i.u = lshr i32 %i.t, 1                         ; 3 uses
  %i.v = zext nneg i32 %i.u to i64                ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.v ; 4 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.v, 2          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx3.i.i.i
  %i.y = lshr i64 %i.v, 2                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %i.z = and i64 %.idx3.i.i.i, 8589934576
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.w, i64 %i.z
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.018.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.02917.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i = load i32, ptr %.02917.i.i.i.i.i.i.i, align 4, !tbaa !240
  %.not3.i.i.i.i.i.i.i = icmp eq i32 %.029.val39.i.i.i.i.i.i.i, -1
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.d, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !240
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %.val37.i.i.i.i.i.i.i, -1
  br i1 %.not4.i.i.i.i.i.i.i, label %bb.e, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !240
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %.val35.i.i.i.i.i.i.i, -1
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.f, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit75

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !240
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %.val33.i.i.i.i.i.i.i, -1
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.g, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit77

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 16
  %i.ae = add nsw i64 %.018.i.i.i.i.i.i.i, -1
  %i.af = icmp sgt i64 %.018.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !20

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.g
  %i.ag = and i32 %i.u, 3
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.c
  %.pre-phi24.i.i.i.i.i.i.i = phi i32 [ %i.ag, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.u, %bb.c ]
  %.029.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  switch i32 %.pre-phi24.i.i.i.i.i.i.i, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.thread [
    i32 3, label %bb.h
    i32 2, label %bb.j
    i32 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i, align 4, !tbaa !240
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.029.val.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i.i, align 4, !tbaa !240
  %.not1.i.i.i.i.i.i.i = icmp eq i32 %.1.val.i.i.i.i.i.i.i, -1
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.k, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i.i, align 4, !tbaa !240
  %.not2.i.i.i.i.i.i.i = icmp eq i32 %.2.val.i.i.i.i.i.i.i, -1
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.thread, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 4
  br label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit75: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 8
  br label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit77: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i, i64 12
  br label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit:    ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit75, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit77, %bb.h, %bb.j, %bb.l
  %.028.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i.i.i, %bb.l ], [ %i.al, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit77 ], [ %i.ak, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit75 ], [ %i.aj, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit ], [ %.02917.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = icmp eq ptr %i.x, %.028.i.i.i.i.i.i.i
  br i1 %i.am, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.thread, label %_ZL25isLaneCrossingShuffleMaskjjN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.thread: ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.thread
  %i.an = add i16 %i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.an, 197
  br i1 %spec.select.i.i.i.i, label %bb.m, label %bb.o

end_hunk_0
