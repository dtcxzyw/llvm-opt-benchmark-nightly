Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelLowering?download=true
inline.NumInlined: 11116
inline.NumDeleted: 2735
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4llvm21SystemZTargetLowering12combineMERGEEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.aj = zext i16 %i.ag to i64
  %i.ak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.al, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ak, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT12getStoreSizeEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.am = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %_ZNK4llvm3EVT12getStoreSizeEv.exit

_ZNK4llvm3EVT12getStoreSizeEv.exit:               ; preds = %bb.h, %bb.i
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.an = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.an, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3EVT12getStoreSizeEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.30) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT12getStoreSizeEv.exit
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.ao = add i64 %.fca.0.extract.i, 7
  %i.ap = lshr i64 %i.ao, 3                       ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ar = icmp ugt i32 %i.aq, 4
  br i1 %i.ar, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.as = icmp eq i32 %i.d, 567
  %i.at = select i1 %i.as, i32 624, i32 625
  %i.au = load i16, ptr %3, align 8, !tbaa !506   ; 3 uses
  %.not.i49 = icmp eq i16 %i.au, 0
  br i1 %.not.i49, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = zext i16 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !177
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bb, align 16
  %i.bc = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.bd = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bc)
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %.split.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

.split.i.i.i:                                     ; preds = %bb.l
  %i.bf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.bg = icmp samesign ult i32 %i.bf, 10
  br i1 %i.bg, label %switch.lookup.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.bf to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i.i:            ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %bb.l
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.bh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.av
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !171
  %i.bk = add i16 %i.au, -216
  %spec.select.i.i.i.i = icmp ult i16 %i.bk, -53
  %.sroa.0.0.extract.trunc.i.i.i = zext i16 %i.bj to i32 ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.bl = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.bm = insertvalue { i16, ptr } poison, i16 %i.bl, 0
  %i.bn = insertvalue { i16, ptr } %i.bm, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.n:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.bo = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.bp = insertvalue { i16, ptr } poison, i16 %i.bo, 0
  %i.bq = insertvalue { i16, ptr } %i.bp, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.o:                                             ; preds = %bb.k
  %i.br = call { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.fca.1.insert.merged.i50 = phi { i16, ptr } [ %i.br, %bb.o ], [ %i.bn, %bb.m ], [ %i.bq, %bb.n ] ; 2 uses
  %i.bs = extractvalue { i16, ptr } %.fca.1.insert.merged.i50, 0 ; 2 uses
  %i.bt = extractvalue { i16, ptr } %.fca.1.insert.merged.i50, 1 ; 2 uses
  %i.bu = shl nuw nsw i32 %i.aq, 4                ; 2 uses
  %i.bv = call range(i32 0, 4) i32 @llvm.ctpop.i32(i32 %i.bu)
  %i.bw = icmp eq i32 %i.bv, 1
  %i.bx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bu, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.bx to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  %.sroa.0.0.i = select i1 %i.bw, i16 %switch.offset.i, i16 0
  %.tr = trunc i64 %i.ap to i8
  %.rhs.trunc = shl nuw nsw i8 %.tr, 1
  %i.by = udiv i8 16, %.rhs.trunc
  %.zext = zext nneg i8 %i.by to i32
  %i.bz = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %.zext)
  %i.ca = load i16, ptr %3, align 8, !tbaa !506
  %.not.i51 = icmp ne i16 %i.ca, %i.bs
  %i.cb = load ptr, ptr %i.y, align 8
  %i.cc = icmp ne ptr %i.cb, %i.bt
  %i.cd = select i1 %.not.i51, i1 true, i1 %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !200
  store i64 %i.cf, ptr %5, align 8, !tbaa !200
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !430
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !432
  store ptr %.sroa.057.0.copyload, ptr %6, align 8, !tbaa !423
  %.sroa.10.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx65, align 8, !tbaa !165
  %.sroa.13.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx72, align 4
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.bs, ptr %i.bt, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #27 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.cj, 0 ; 2 uses
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.cj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.fca.0.extract11) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  %.sroa.10.0 = phi i32 [ %.fca.1.extract12, %bb.p ], [ %.sroa.10.0.copyload, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ]
  %.sroa.057.0 = phi ptr [ %.fca.0.extract11, %bb.p ], [ %.sroa.057.0.copyload, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !200
  store i64 %i.cl, ptr %7, align 8, !tbaa !200
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !430
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !432
  store ptr %.sroa.057.0, ptr %8, align 8, !tbaa !423
  %.sroa.10.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx67, align 8, !tbaa !165
  %.sroa.13.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx74, align 4
  %i.cp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.bz, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #27 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.cp, 0 ; 2 uses
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.cp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.fca.0.extract4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !200
  store i64 %i.cq, ptr %9, align 8, !tbaa !200
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cs = load i32, ptr %i.cn, align 4, !tbaa !430
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !432
  %.sroa.01.0.copyload = load i16, ptr %3, align 8, !tbaa !177
  %.sroa.23.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !179
  store ptr %.fca.0.extract4, ptr %10, align 8, !tbaa !423
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !165
  %i.ct = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ct, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ct, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.q
  %.sroa.582.0.ph = phi i32 [ %.fca.1.extract, %bb.q ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.081.0.ph = phi ptr [ %.fca.0.extract, %bb.q ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %.sroa.582.0 = phi i32 [ 0, %bb.c ], [ %.sroa.10.0.copyload, %bb.d ], [ %.sroa.582.0.ph, %.sink.split ]
  %.sroa.081.0 = phi ptr [ null, %bb.c ], [ %.sroa.057.0.copyload, %bb.d ], [ %.sroa.081.0.ph, %.sink.split ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.081.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.582.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering11combineLOADEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518496) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.550", align 8 ; 17 uses
  %9 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 11 uses
  %12 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %13 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %14 = alloca %"class.llvm::SmallVector.580", align 8 ; 10 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SmallVector.527", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !734, !nonnull !28, !align !81 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !396  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !177 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !179 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !433
  %i.h = icmp ne i32 %i.g, 316
  %.not312 = icmp eq ptr %1, null
  %.not = or i1 %.not312, %i.h
  br i1 %.not, label %.critedge179, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.k) #27
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %.critedge179

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !507
  %i.p = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.o) #27
  %i.q = load ptr, ptr %0, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i16 %i.s(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.p, i32 noundef 0) #27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !642  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !422  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !539  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !396
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !177
  %.not313 = icmp eq i16 %i.t, %.sroa.0.0.copyload.i.i.i
  br i1 %.not313, label %.critedge179, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !200
  store i64 %i.af, ptr %4, align 8, !tbaa !200
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !430
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !432
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAddrSpaceCastERKNS_5SDLocENS_3EVTENS_7SDValueEjj(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.t, ptr null, ptr nonnull %i.x, i32 %i.z, i32 noundef 1, i32 noundef 0) #27 ; 2 uses
  %.fca.0.extract126 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract127 = extractvalue { ptr, i32 } %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = lshr i16 %i.al, 10
  %i.an = and i16 %i.am, 3
  %i.ao = zext nneg i16 %i.an to i32
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !396 ; 2 uses
  %.sroa.0.0.copyload.i187 = load i16, ptr %i.ap, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.21.0.copyload.i189 = load ptr, ptr %.sroa.21.0..sroa_idx.i188, align 8, !tbaa !179
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !642
  store ptr %.fca.0.extract126, ptr %5, align 8, !tbaa !423
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract127, ptr %.sroa.4135.0..sroa_idx, align 8, !tbaa !165
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i192 = load i16, ptr %i.ar, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i194 = load ptr, ptr %.sroa.21.0..sroa_idx.i193, align 8, !tbaa !179
  store i16 %.sroa.0.0.copyload.i192, ptr %6, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i194, ptr %i.as, align 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getExtLoadENS_3ISD11LoadExtTypeERKNS_5SDLocENS_3EVTENS_7SDValueES7_S6_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i187, ptr %.sroa.21.0.copyload.i189, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aq, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %6, ptr noundef %i.au) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.av

.critedge179:                                     ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !200
  store i64 %i.ax, ptr %7, align 8, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !430
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !432
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i197 = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i197, -5
  %i.bd = inttoptr i64 %i.bc to ptr               ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bf = load i16, ptr %i.be, align 4
  %i.bg = and i16 %i.bf, 3840
  %.not.i = icmp eq i16 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = and i8 %i.bi, 8
  %.not1.i = icmp eq i8 %i.bj, 0
  %i.bk = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %i.bk, label %bb.e, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.e:                                             ; preds = %.critedge179
  %i.bl = load i32, ptr %i.f, align 8, !tbaa !433
  %.not314 = icmp eq i32 %i.bl, 316
  br i1 %.not314, label %bb.f, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bm = load i16, ptr %i.bh, align 8
  %i.bn = and i16 %i.bm, 3968
  %or.cond = icmp eq i16 %i.bn, 0
  br i1 %or.cond, label %bb.g, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 9
  %i.bo = icmp eq ptr %.sroa.21.0.copyload.i, null ; 2 uses
  %.not4.i199 = select i1 %.not.i.i, i1 %i.bo, i1 false
  br i1 %.not4.i199, label %bb.h, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !735 ; 2 uses
  %.not1011.i = icmp eq ptr %.val, null
  br i1 %.not1011.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.1308 = phi ptr [ %.2309, %.critedge.i ], [ null, %bb.h ] ; 3 uses
  %.1 = phi ptr [ %.2, %.critedge.i ], [ null, %bb.h ] ; 3 uses
  %.sroa.05.012.i = phi ptr [ %i.cy, %.critedge.i ], [ %.val, %bb.h ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !539
  %.not.i200 = icmp eq i32 %i.br, 0
  br i1 %.not.i200, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !655 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !433 ; 2 uses
  %.not27.i = icmp eq i32 %i.bv, 200              ; 2 uses
  br i1 %.not27.i, label %bb.j, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !642
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !422 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !433
  %i.cc = icmp eq i32 %i.cb, 12
  br i1 %i.cc, label %bb.k, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !436 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !190
  %i.ci = icmp ult i32 %i.ch, 65
  %i.cj = load ptr, ptr %i.cf, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ci, ptr %i.cf, ptr %i.cj
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !166
  %i.ck = icmp eq i64 %.0.i.i.i.i.i, 64
  br i1 %i.ck, label %bb.l, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !735 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.i:              ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !736
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.m, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

bb.m:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !655 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !433
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i:       ; preds = %bb.m, %bb.i
  %i.cs = phi i32 [ %.pre.i, %bb.m ], [ %i.bv, %bb.i ]
  %.024.i = phi ptr [ %i.cr, %bb.m ], [ %i.bt, %bb.i ] ; 3 uses
  %.not29.i = icmp eq i32 %i.cs, 230
  br i1 %.not29.i, label %bb.n, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.024.i, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !396 ; 2 uses
  %.sroa.0.0.copyload.i33.i = load i16, ptr %i.cu, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !179
  %.not.i.i201 = icmp ne i16 %.sroa.0.0.copyload.i33.i, 8
  %i.cv = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.cw = select i1 %.not.i.i201, i1 true, i1 %i.cv
  br i1 %i.cw, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not27.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not31.i = icmp eq ptr %.1, null
  br i1 %.not31.i, label %.critedge.i, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

bb.q:                                             ; preds = %bb.o
  %.not30.i = icmp eq ptr %.1308, null
  br i1 %.not30.i, label %.critedge.i, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

.critedge.i:                                      ; preds = %bb.p, %bb.q, %.lr.ph.i
  %.2309 = phi ptr [ %.1308, %.lr.ph.i ], [ %.1308, %bb.p ], [ %.024.i, %bb.q ] ; 2 uses
  %.2 = phi ptr [ %.1, %.lr.ph.i ], [ %.024.i, %bb.p ], [ %.1, %bb.q ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !736 ; 2 uses
  %.not10.i = icmp eq ptr %i.cy, null
  br i1 %.not10.i, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit, label %.lr.ph.i

_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread: ; preds = %bb.p, %bb.n, %bb.q, %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i, %bb.k, %bb.j, %bb.l, %bb.g
  %.not.i.i202 = icmp eq i16 %.sroa.0.0.copyload.i, 17
  %.not4.i203 = select i1 %.not.i.i202, i1 %i.bo, i1 false
  br i1 %.not4.i203, label %bb.r, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.r:                                             ; preds = %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread
  %i.cz = getelementptr i8, ptr %1, i64 56
  %.val186 = load ptr, ptr %i.cz, align 8, !tbaa !735 ; 2 uses
  %.not67.i = icmp eq ptr %.val186, null
  br i1 %.not67.i, label %bb.x, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.r, %.sink.split.i
  %.5312 = phi ptr [ %.6313, %.sink.split.i ], [ null, %bb.r ] ; 3 uses
  %.5 = phi ptr [ %.6, %.sink.split.i ], [ null, %bb.r ] ; 3 uses
  %.sroa.01.08.i = phi ptr [ %19, %.sink.split.i ], [ %.val186, %bb.r ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !539
  %.not.i205 = icmp eq i32 %i.db, 0
  br i1 %.not.i205, label %bb.s, label %.sink.split.i

bb.s:                                             ; preds = %.lr.ph.i204
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !655 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !735 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i206, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i207

_ZNK4llvm6SDNode9hasOneUseEv.exit.i207:           ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !736
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.t, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.t:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i207
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !433
  %.not23.i = icmp eq i32 %i.dk, -9
  br i1 %.not23.i, label %bb.u, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !642
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !422
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !436 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !190
  %i.du = icmp ult i32 %i.dt, 65
  %i.dv = load ptr, ptr %i.dr, align 8
  %spec.select.i.i.i.i.i208 = select i1 %i.du, ptr %i.dr, ptr %i.dv
  %.0.i.i.i.i.i209 = load i64, ptr %spec.select.i.i.i.i.i208, align 8, !tbaa !166
  switch i64 %.0.i.i.i.i.i209, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread [
    i64 5, label %bb.v
    i64 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %.not25.i = icmp eq ptr %.5, null
  br i1 %.not25.i, label %.sink.split.i, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

bb.w:                                             ; preds = %bb.u
  %.not24.i = icmp eq ptr %.5312, null
  br i1 %.not24.i, label %.sink.split.i, label %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread

.sink.split.i:                                    ; preds = %bb.v, %bb.w, %.lr.ph.i204
  %.6313 = phi ptr [ %.5312, %.lr.ph.i204 ], [ %.5312, %bb.v ], [ %i.dd, %bb.w ] ; 2 uses
  %.6 = phi ptr [ %.5, %.lr.ph.i204 ], [ %i.dd, %bb.v ], [ %.5, %bb.w ] ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !736    ; 2 uses
  %.not6.i = icmp eq ptr %19, null
  br i1 %.not6.i, label %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit, label %.lr.ph.i204

bb.x:                                             ; preds = %bb.r, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %20, ptr %8, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.dw, align 8, !tbaa !192
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 2, ptr %21, align 4, !tbaa !193
  br label %.critedge181

_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit: ; preds = %.critedge.i, %.sink.split.i
  %.0307 = phi ptr [ %.6313, %.sink.split.i ], [ %.2309, %.critedge.i ] ; 3 uses
  %.0 = phi ptr [ %.6, %.sink.split.i ], [ %.2, %.critedge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.dx, ptr %8, align 8, !tbaa !30
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  store i32 0, ptr %i.dy, align 8, !tbaa !192
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 2, ptr %i.dz, align 4, !tbaa !193
  %.not174 = icmp eq ptr %.0307, null
  br i1 %.not174, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, label %bb.y

bb.y:                                             ; preds = %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %.0307, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !396 ; 2 uses
  %.sroa.0.0.copyload.i211 = load i16, ptr %i.eb, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.21.0.copyload.i213 = load ptr, ptr %.sroa.21.0..sroa_idx.i212, align 8, !tbaa !179
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !642 ; 3 uses
  %.sroa.095.0.copyload = load ptr, ptr %i.ed, align 8, !tbaa !423
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.296.0.copyload = load i32, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !165
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bd, i64 34
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ef, align 2, !tbaa !166
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.eh = load i16, ptr %i.eg, align 8, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.ei, i64 40, i1 false), !tbaa.struct !738
  %.sroa.0283.0.insert.ext = zext i8 %.sroa.0.0.copyload.i.i to i16
  %.sroa.0283.0.insert.insert = or disjoint i16 %.sroa.0283.0.insert.ext, 256
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i16 %.sroa.0.0.copyload.i211, ptr %.sroa.21.0.copyload.i213, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %.sroa.095.0.copyload, i32 %.sroa.296.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ee, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %i.bd, i16 %.sroa.0283.0.insert.insert, i16 noundef zeroext %i.eh, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null) #27 ; 2 uses
  %.fca.0.extract90 = extractvalue { ptr, i32 } %i.ej, 0 ; 3 uses
  %.fca.1.extract91 = extractvalue { ptr, i32 } %i.ej, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ek = call { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %.0307, ptr %.fca.0.extract90, i32 %.fca.1.extract91, i1 noundef zeroext true) #27 ; 0 uses
  %i.el = load i32, ptr %i.dy, align 8, !tbaa !192 ; 2 uses
  %i.em = load i32, ptr %i.dz, align 4, !tbaa !193
  %.not.i221 = icmp ult i32 %i.el, %i.em
  br i1 %.not.i221, label %bb.aa, label %bb.z, !prof !194

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract90, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.aa:                                            ; preds = %bb.y
  %i.en = zext i32 %i.el to i64
  %i.eo = load ptr, ptr %8, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  store ptr %.fca.0.extract90, ptr %i.ep, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 1, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.eq = load i32, ptr %i.dy, align 8, !tbaa !192
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.dy, align 8, !tbaa !192
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.aa, %bb.z, %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit
  %.not175 = icmp eq ptr %.0, null
  br i1 %.not175, label %.critedge181, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !396 ; 2 uses
  %.sroa.0.0.copyload.i222 = load i16, ptr %i.et, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.21.0.copyload.i224 = load ptr, ptr %.sroa.21.0..sroa_idx.i223, align 8, !tbaa !179
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !642 ; 4 uses
  %.sroa.074.0.copyload = load ptr, ptr %i.ev, align 8, !tbaa !423
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.275.0.copyload = load i32, ptr %.sroa.275.0..sroa_idx, align 8, !tbaa !165
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %.sroa.071.0.copyload = load ptr, ptr %i.ew, align 8, !tbaa !423
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %.sroa.272.0.copyload = load i32, ptr %.sroa.272.0..sroa_idx, align 8, !tbaa !165
  %i.ex = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getMemBasePlusOffsetENS_7SDValueENS_8TypeSizeERKNS_5SDLocENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.071.0.copyload, i32 %.sroa.272.0.copyload, i64 8, i8 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 32769) #27 ; 2 uses
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.ex, 0
  %.fca.1.extract62 = extractvalue { ptr, i32 } %i.ex, 1
  store ptr %.fca.0.extract61, ptr %10, align 8
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract62, ptr %.sroa.264.0..sroa_idx, align 8
  %.0.copyload.i.i.i.i.i.i.i227 = load i64, ptr %i.bb, align 8
  %i.ey = and i64 %.0.copyload.i.i.i.i.i.i.i227, -5
  %i.ez = inttoptr i64 %i.ey to ptr               ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %.0.copyload.i.i.i = load i64, ptr %i.ez, align 8, !noalias !1355 ; 5 uses
  %i.fa = icmp ult i64 %.0.copyload.i.i.i, 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !592, !noalias !1355
  %i.fd = add nsw i64 %i.fc, 8                    ; 2 uses
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !593, !noalias !1355
  store i64 0, ptr %11, align 8, !alias.scope !1355
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.fd, ptr %i.fg, align 8, !tbaa !592, !alias.scope !1355
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.ff, ptr %i.fh, align 8, !tbaa !593, !alias.scope !1355
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 0, ptr %i.fi, align 4, !tbaa !594, !alias.scope !1355
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fj = and i64 %.0.copyload.i.i.i, 4
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fm = load i8, ptr %i.fl, align 4, !tbaa !594, !noalias !1355 ; 2 uses
  store i64 %.0.copyload.i.i.i, ptr %11, align 8, !alias.scope !1355
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.fd, ptr %i.fn, align 8, !tbaa !592, !alias.scope !1355
  br i1 %i.fk, label %bb.ae, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 %i.fm, ptr %i.fp, align 4, !tbaa !594, !alias.scope !1355
  %i.fq = inttoptr i64 %.0.copyload.i.i.i to ptr
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !387, !noalias !1355 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !noalias !1355 ; 2 uses
  %i.fv = and i32 %i.fu, 254
  %spec.select.i.i.i.i.i228 = icmp eq i32 %i.fv, 18
  br i1 %spec.select.i.i.i.i.i228, label %bb.af, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !598, !noalias !1355
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !179, !noalias !1355
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1355
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i: ; preds = %bb.af, %bb.ae
  %i.fz = phi i32 [ %.pre.i.i.i, %bb.af ], [ %i.fu, %bb.ae ]
  %i.ga = lshr i32 %i.fz, 8
  store i32 %i.ga, ptr %i.fo, align 8, !tbaa !593, !alias.scope !1355
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i: ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 %i.fm, ptr %i.gb, align 4, !tbaa !594, !alias.scope !1355
  %i.gc = and i64 %.0.copyload.i.i.i, -5
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !600, !noalias !1355
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !593, !alias.scope !1355
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit: ; preds = %bb.ac, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ez, i64 34
  %.sroa.0.0.copyload.i.i230 = load i8, ptr %i.gh, align 2, !tbaa !166
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.gj = load i16, ptr %i.gi, align 8, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %i.gk, i64 40, i1 false), !tbaa.struct !738
  %.sroa.0278.0.insert.ext = zext i8 %.sroa.0.0.copyload.i.i230 to i16
  %.sroa.0278.0.insert.insert = or disjoint i16 %.sroa.0278.0.insert.ext, 256
  %i.gl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i16 %.sroa.0.0.copyload.i222, ptr %.sroa.21.0.copyload.i224, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %.sroa.074.0.copyload, i32 %.sroa.275.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i16 %.sroa.0278.0.insert.insert, i16 noundef zeroext %i.gj, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef null) #27 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.gl, 0 ; 3 uses
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.gl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.gm = call { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %.0, ptr %.fca.0.extract56, i32 %.fca.1.extract57, i1 noundef zeroext true) #27 ; 0 uses
  %i.gn = load i32, ptr %i.dy, align 8, !tbaa !192 ; 2 uses
  %i.go = load i32, ptr %i.dz, align 4, !tbaa !193
  %.not.i235 = icmp ult i32 %i.gn, %i.go
  br i1 %.not.i235, label %bb.ah, label %bb.ag, !prof !194

bb.ag:                                            ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract56, i32 1)
  br label %.critedge181

bb.ah:                                            ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit
  %i.gp = zext i32 %i.gn to i64
  %i.gq = load ptr, ptr %8, align 8, !tbaa !30
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.gp ; 2 uses
  store ptr %.fca.0.extract56, ptr %i.gr, align 1
  %.sroa.32.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 1, ptr %.sroa.32.0..sroa_idx.i236, align 1
  %i.gs = load i32, ptr %i.dy, align 8, !tbaa !192
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.dy, align 8, !tbaa !192
  br label %.critedge181

.critedge181:                                     ; preds = %bb.ah, %bb.ag, %bb.x, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %22 = phi ptr [ %20, %bb.x ], [ %i.dx, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.dx, %bb.ag ], [ %i.dx, %bb.ah ]
  %23 = phi ptr [ %i.dw, %bb.x ], [ %i.dy, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %i.dy, %bb.ag ], [ %i.dy, %bb.ah ]
  %i.gu = load ptr, ptr %8, align 8, !tbaa !30
  store ptr %i.gu, ptr %13, align 8, !tbaa !428
  %i.gv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gw = load i32, ptr %23, align 8, !tbaa !192
  %i.gx = zext i32 %i.gw to i64
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !429
  %i.gy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %13) #27 ; 2 uses
  %.fca.0.extract42 = extractvalue { ptr, i32 } %i.gy, 0 ; 2 uses
  %.fca.1.extract43 = extractvalue { ptr, i32 } %i.gy, 1
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %1, i32 1, ptr %.fca.0.extract42, i32 %.fca.1.extract43) #27
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.fca.0.extract42) #27
  %i.gz = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %22
  br i1 %i.ha, label %_ZL18isF128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit.a

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit.a: ; preds = %.critedge181
  call void @free(ptr noundef %i.gz) #27
  br label %_ZL18isF128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread

_ZL18isF128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread: ; preds = %.critedge181, %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.au

_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread: ; preds = %bb.v, %bb.w, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i207, %bb.u, %bb.t, %bb.s, %bb.e, %bb.f, %_ZL18isI128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread, %.critedge179
  %.not.i238 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i238, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread
  %i.hb = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i239 = icmp ult i16 %i.hb, 197
  %i.hc = add i16 %.sroa.0.0.copyload.i, -2
  %or.cond.i.i = icmp ult i16 %i.hc, 10
  %or.cond317 = or i1 %spec.select.i.i239, %or.cond.i.i
  br i1 %or.cond317, label %bb.au, label %bb.ai

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %_ZN4llvm3ISD12isNormalLoadEPKNS_6SDNodeE.exit.thread
  %i.hd = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br i1 %i.hd, label %bb.au, label %_ZNK4llvm3EVT9isIntegerEv.exit

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.he = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br i1 %i.he, label %bb.au, label %bb.ai

bb.ai:                                            ; preds = %.split, %_ZNK4llvm3EVT9isIntegerEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.hf, ptr %14, align 8, !tbaa !30
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i32 0, ptr %i.hg, align 8, !tbaa !192
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 8, ptr %i.hh, align 4, !tbaa !193
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0263.0321 = load ptr, ptr %i.hi, align 8, !tbaa !650 ; 2 uses
  %.not315322 = icmp eq ptr %.sroa.0263.0321, null
  br i1 %.not315322, label %.critedge183, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit
  %.sroa.0263.0324 = phi ptr [ %.sroa.0263.0, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit ], [ %.sroa.0263.0321, %bb.ai ] ; 3 uses
  %.sroa.0268.0323 = phi ptr [ %.sroa.0268.1, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit ], [ null, %bb.ai ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0263.0324, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !655 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !433
  %i.hn = icmp eq i32 %i.hm, 583
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph
  %.not316 = icmp eq ptr %.sroa.0268.0323, null
  br i1 %.not316, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit, label %.critedge183

bb.ak:                                            ; preds = %.lr.ph
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0263.0324, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !539
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.al, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit

bb.al:                                            ; preds = %bb.ak
  %i.hr = load i32, ptr %i.hg, align 8, !tbaa !192 ; 2 uses
  %i.hs = load i32, ptr %i.hh, align 4, !tbaa !193
  %.not.i244 = icmp ult i32 %i.hr, %i.hs
  br i1 %.not.i244, label %bb.an, label %bb.am, !prof !194

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.hk)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit

bb.an:                                            ; preds = %bb.al
  %i.ht = zext i32 %i.hr to i64
  %i.hu = load ptr, ptr %14, align 8, !tbaa !30
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  store ptr %i.hk, ptr %i.hv, align 1
  %i.hw = load i32, ptr %i.hg, align 8, !tbaa !192
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hg, align 8, !tbaa !192
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit: ; preds = %bb.an, %bb.am, %bb.aj, %bb.ak
  %.sroa.0268.1 = phi ptr [ %.sroa.0268.0323, %bb.ak ], [ %i.hk, %bb.aj ], [ %.sroa.0268.0323, %bb.am ], [ %.sroa.0268.0323, %bb.an ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0263.0324, i64 32
  %.sroa.0263.0 = load ptr, ptr %i.hy, align 8, !tbaa !650 ; 2 uses
  %.not315 = icmp eq ptr %.sroa.0263.0, null
  br i1 %.not315, label %.critedge185, label %.lr.ph

.critedge185:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit
  %.pre = load i32, ptr %i.hg, align 8
  %i.hz = icmp eq i32 %.pre, 0
  %i.ia = icmp eq ptr %.sroa.0268.1, null
  %or.cond310 = select i1 %i.ia, i1 true, i1 %i.hz
  br i1 %or.cond310, label %.critedge183, label %bb.ao

bb.ao:                                            ; preds = %.critedge185
  %.sroa.028.0.copyload = load i16, ptr %3, align 8, !tbaa !177
  %.sroa.230.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !179
  store ptr %.sroa.0268.1, ptr %15, align 8, !tbaa !423
  %.sroa.7270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %.sroa.7270.0..sroa_idx, align 8, !tbaa !165
  %i.ib = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.ib, 1
  store ptr %.fca.0.extract24, ptr %16, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract25, ptr %.sroa.227.0..sroa_idx, align 8
  %i.ic = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.028.0.copyload, ptr %.sroa.230.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ic, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ic, 1
  %i.id = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.ie = load i32, ptr %i.hg, align 8, !tbaa !192 ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %.idx = shl nuw nsw i64 %i.if, 3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %.idx
  %.not176328 = icmp eq i32 %i.ie, 0
  br i1 %.not176328, label %.critedge183, label %.lr.ph331

.lr.ph331:                                        ; preds = %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph331, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.0172329 = phi ptr [ %i.id, %.lr.ph331 ], [ %i.ix, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ] ; 2 uses
  %i.ik = load ptr, ptr %.0172329, align 8, !tbaa !423 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr %i.ih, ptr %17, align 8, !tbaa !30
  store i32 0, ptr %i.ii, align 8, !tbaa !192
  store i32 8, ptr %i.ij, align 4, !tbaa !193
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !642 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  %i.io = load i16, ptr %i.in, align 8, !tbaa !716 ; 2 uses
  %i.ip = zext i16 %i.io to i64
  %.idx332 = mul nuw nsw i64 %i.ip, 40
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 %.idx332
  %.not177325 = icmp eq i16 %i.io, 0
  br i1 %.not177325, label %._crit_edge, label %.lr.ph327

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit250
  %.pre335 = load ptr, ptr %17, align 8, !tbaa !30
  %.pre336 = load i32, ptr %i.ii, align 8, !tbaa !192
  %i.ir = zext i32 %.pre336 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ap
  %i.is = phi i64 [ %i.ir, %._crit_edge.loopexit ], [ 0, %bb.ap ]
  %i.it = phi ptr [ %.pre335, %._crit_edge.loopexit ], [ %i.ih, %bb.ap ]
  %i.iu = call noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull %i.ik, ptr %i.it, i64 %i.is) #27 ; 0 uses
  %i.iv = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.ih
  br i1 %i.iw, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.iv) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.ix = getelementptr inbounds nuw i8, ptr %.0172329, i64 8 ; 2 uses
  %.not176 = icmp eq ptr %i.ix, %i.ig
  br i1 %.not176, label %.critedge183, label %bb.ap

.lr.ph327:                                        ; preds = %bb.ap, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit250
  %.0171326 = phi ptr [ %i.jh, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit250 ], [ %i.im, %bb.ap ] ; 3 uses
  %.sroa.0251.0.copyload = load ptr, ptr %.0171326, align 8, !tbaa !423 ; 2 uses
  %.sroa.5.0..0171.sroa_idx = getelementptr inbounds nuw i8, ptr %.0171326, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..0171.sroa_idx, align 8, !tbaa !165 ; 2 uses
  %i.iy = icmp eq ptr %.sroa.0251.0.copyload, %1
  %i.iz = icmp eq i32 %.sroa.5.0.copyload, 0
  %or.cond311 = select i1 %i.iy, i1 %i.iz, i1 false ; 2 uses
  %.sroa.phi.sroa.speculated = select i1 %or.cond311, i32 %.fca.1.extract, i32 %.sroa.5.0.copyload ; 2 uses
  %.sroa.speculated = select i1 %or.cond311, ptr %.fca.0.extract, ptr %.sroa.0251.0.copyload ; 2 uses
  %i.ja = load i32, ptr %i.ii, align 8, !tbaa !192 ; 2 uses
  %i.jb = load i32, ptr %i.ij, align 4, !tbaa !193
  %.not.i248 = icmp ult i32 %i.ja, %i.jb
  br i1 %.not.i248, label %bb.as, label %bb.ar, !prof !194

bb.ar:                                            ; preds = %.lr.ph327
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.sroa.speculated, i32 %.sroa.phi.sroa.speculated)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit250

bb.as:                                            ; preds = %.lr.ph327
  %i.jc = zext i32 %i.ja to i64
  %i.jd = load ptr, ptr %17, align 8, !tbaa !30
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jc ; 2 uses
  store ptr %.sroa.speculated, ptr %i.je, align 1
  %.sroa.32.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 %.sroa.phi.sroa.speculated, ptr %.sroa.32.0..sroa_idx.i249, align 1
  %i.jf = load i32, ptr %i.ii, align 8, !tbaa !192
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.ii, align 8, !tbaa !192
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit250

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit250: ; preds = %bb.ar, %bb.as
  %i.jh = getelementptr inbounds nuw i8, ptr %.0171326, i64 40 ; 2 uses
  %.not177 = icmp eq ptr %i.jh, %i.iq
  br i1 %.not177, label %._crit_edge.loopexit, label %.lr.ph327

.critedge183:                                     ; preds = %bb.aj, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, %bb.ai, %bb.ao, %.critedge185
  %.sroa.0305.0 = phi ptr [ null, %.critedge185 ], [ %1, %bb.ao ], [ %1, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ null, %bb.ai ], [ null, %bb.aj ]
  %i.ji = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.hf
  br i1 %i.jj, label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj8EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %.critedge183
  call void @free(ptr noundef %i.ji) #27
  br label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6SDNodeELj8EED2Ev.exit: ; preds = %.critedge183, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.au

bb.au:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %_ZNK4llvm3EVT9isIntegerEv.exit, %.split, %_ZL18isF128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread, %_ZN4llvm11SmallVectorIPNS_6SDNodeELj8EED2Ev.exit
  %.sroa.0305.1 = phi ptr [ %1, %_ZL18isF128MovedToPartsPN4llvm10LoadSDNodeERPNS_6SDNodeES4_.exit.thread ], [ %.sroa.0305.0, %_ZN4llvm11SmallVectorIPNS_6SDNodeELj8EED2Ev.exit ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ null, %.split ], [ null, %_ZNK4llvm3EVT9isIntegerEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.jk = insertvalue { ptr, i32 } poison, ptr %.sroa.0305.1, 0
  %i.jl = insertvalue { ptr, i32 } %i.jk, i32 0, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.d, %bb.au
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.jl, %bb.au ], [ %i.av, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getAddrSpaceCastERKNS_5SDLocENS_3EVTENS_7SDValueEjj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr, i32, i32 noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG10getExtLoadENS_3ISD11LoadExtTypeERKNS_5SDLocENS_3EVTENS_7SDValueES7_S6_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm21SystemZTargetLowering23canLoadStoreByteSwappedENS_3EVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, i16 %1, ptr nofree readnone captures(address_is_null) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 2 uses
  %i.b = add i16 %1, -6
  %i.c = icmp ult i16 %i.b, 3
  %or.cond39 = select i1 %i.c, i1 %i.a, i1 false
  br i1 %or.cond39, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80, !nonnull !28, !align !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 387
  %i.g = load i8, ptr %i.f, align 1, !tbaa !175, !range !27, !noundef !28
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = insertelement <4 x i16> poison, i16 %1, i64 0
  %i.j = shufflevector <4 x i16> %i.i, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.k = icmp eq <4 x i16> %i.j, <i16 62, i16 73, i16 94, i16 9>
  %i.l = bitcast <4 x i1> %i.k to i4
  %i.m = icmp ne i4 %i.l, 0
  %or.cond42 = select i1 %i.m, i1 %i.a, i1 false
  br i1 %or.cond42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering12combineSTOREEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518496) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 13 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %11 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %13 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %16 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %18 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %19 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %20 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %21 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %22 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 5 uses
  %23 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %24 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %25 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %26 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 11 uses
  %29 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %33 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %34 = alloca %class.anon.586, align 8           ; 11 uses
  %35 = alloca %class.anon.587, align 8           ; 10 uses
  %36 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %37 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %38 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !734, !nonnull !28, !align !81 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %1, ptr %i.a, align 8, !tbaa !740
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !642  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !177 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !179 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 8 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.k) #27
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !507
  %i.p = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.o) #27
  %i.q = load ptr, ptr %0, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i16 %i.s(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.p, i32 noundef 0) #27 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !642  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !422  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !539  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !396
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ac, align 8, !tbaa !177
  %.not = icmp eq i16 %i.t, %.sroa.0.0.copyload.i.i.i
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !200
  store i64 %i.ae, ptr %5, align 8, !tbaa !200
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !430
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !432
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAddrSpaceCastERKNS_5SDLocENS_3EVTENS_7SDValueEjj(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.t, ptr null, ptr nonnull %i.w, i32 %i.y, i32 noundef 1, i32 noundef 0) #27 ; 2 uses
  %.fca.0.extract187 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract188 = extractvalue { ptr, i32 } %i.ai, 1
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !642 ; 4 uses
  %.sroa.0184.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !423
  %.sroa.2185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2185.0.copyload = load i32, ptr %.sroa.2185.0..sroa_idx, align 8, !tbaa !165
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.0181.0.copyload = load ptr, ptr %i.ak, align 8, !tbaa !423
  %.sroa.2182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.2182.0.copyload = load i32, ptr %.sroa.2182.0..sroa_idx, align 8, !tbaa !165
  store ptr %.fca.0.extract187, ptr %6, align 8, !tbaa !423
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract188, ptr %.sroa.4196.0..sroa_idx, align 8, !tbaa !165
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.am = inttoptr i64 %i.al to ptr               ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 34
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.an, align 2, !tbaa !166
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !tbaa.struct !738
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr %.sroa.0184.0.copyload, i32 %.sroa.2185.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.sroa.0181.0.copyload, i32 %.sroa.2182.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %i.am, i8 %.sroa.0.0.copyload.i.i, i16 noundef zeroext %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %7) #27 ; 2 uses
  %.fca.0.extract176 = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract177 = extractvalue { ptr, i32 } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bs

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT9isIntegerEv.exit, label %.split

.split:                                           ; preds = %.critedge
  %i.as = add i16 %.sroa.0.0.copyload.i, -2
  %or.cond.i.i = icmp ult i16 %i.as, 10
  %i.at = add i16 %.sroa.0.0.copyload.i, -19
  %or.cond3.i.i = icmp ult i16 %i.at, 86
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.au = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i = icmp ult i16 %i.au, 32
  %i.av = or i1 %spec.select.i.i, %or.cond4.i.i
  br i1 %i.av, label %bb.d, label %.critedge267

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %.critedge
  %i.aw = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br i1 %i.aw, label %bb.d, label %.critedge267

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i16, ptr %i.ax, align 8
  %i.az = and i16 %i.ay, 1024
  %.not455 = icmp eq i16 %i.az, 0
  br i1 %.not455, label %.critedge267, label %bb.e
end_hunk_0
