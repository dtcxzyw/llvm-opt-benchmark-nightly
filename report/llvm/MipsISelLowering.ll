Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsISelLowering?download=true
inline.NumInlined: 9952
inline.NumDeleted: 3126
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4llvm18MipsTargetLowering6createERKNS_17MipsTargetMachineERKNS_13MipsSubtargetE
define dso_local noundef ptr @_ZN4llvm18MipsTargetLowering6createERKNS_17MipsTargetMachineERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(3392) %0, ptr noundef nonnull align 8 dereferenceable(536) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 375
  %i.b = load i8, ptr %i.a, align 1, !tbaa !381, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4llvm26createMips16TargetLoweringERKNS_17MipsTargetMachineERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(3392) %0, ptr noundef nonnull align 8 dereferenceable(536) %1) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4llvm26createMipsSETargetLoweringERKNS_17MipsTargetMachineERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(3392) %0, ptr noundef nonnull align 8 dereferenceable(536) %1) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm26createMips16TargetLoweringERKNS_17MipsTargetMachineERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(3392), ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm26createMipsSETargetLoweringERKNS_17MipsTargetMachineERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(3392), ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm18MipsTargetLowering14createFastISelERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !464, !nonnull !24, !align !64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1296
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 64
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32, !nonnull !24, !align !64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  %i.k = load i32, ptr %i.j, align 8, !tbaa !287  ; 4 uses
  %i.l = add i32 %i.k, -3
  %or.cond.i = icmp ult i32 %i.l, 5
  %i.m = icmp sgt i32 %i.k, 11
  %spec.select.i = or i1 %i.m, %or.cond.i
  br i1 %spec.select.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.k, 7
  %i.o = icmp samesign ugt i32 %i.k, 15
  %spec.select.i9 = or i1 %i.n, %i.o
  br i1 %spec.select.i9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 375
  %i.q = load i8, ptr %i.p, align 1, !tbaa !381, !range !23, !noundef !24
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 377
  %i.t = load i8, ptr %i.s, align 1, !tbaa !394, !range !23, !noundef !24
  %i.u = trunc nuw i8 %i.t to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.not8 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.u, %bb.e ]
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.d) #27
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1744
  %i.x = load i32, ptr %i.w, align 8, !tbaa !390
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32, !nonnull !24, !align !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 395
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !465, !range !23, !noundef !24
  %i.ad = trunc nuw i8 %i.ac to i1
  %brmerge = or i1 %.not8, %i.ad
  br i1 %brmerge, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call noundef ptr @_ZN4llvm4Mips14createFastISelERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef %2, ptr noundef %3) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %bb.g, %bb.i
  %i.af = phi ptr [ %i.ae, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.g ]
  ret ptr %i.af
}

declare noundef zeroext i1 @_ZNK4llvm13TargetMachine21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1728)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4Mips14createFastISelERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(976), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i16, ptr } @_ZNK4llvm18MipsTargetLowering18getSetCCResultTypeERKNS_10DataLayoutERNS_11LLVMContextENS_3EVTE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i16 %3, ptr %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.a, align 8
  %.not.i = icmp eq i16 %3, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %3, -19
  %spec.select.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i, label %bb.b, label %bb.f

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.c, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.split
  %i.d = zext nneg i16 %3 to i64                  ; 2 uses
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !30
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 16
  %i.k = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.split.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.k, i1 true) ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  br i1 %i.o, label %switch.lookup.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.n to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i.i:            ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %bb.b
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !28
  %spec.select.i.i.i.i = icmp samesign ult i16 %3, 163
  %.sroa.0.0.extract.trunc.i.i.i = zext i16 %i.r to i32 ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.s = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.t = insertvalue { i16, ptr } poison, i16 %i.s, 0
  %i.u = insertvalue { i16, ptr } %i.t, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.d:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.v = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.y = call { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.y, %bb.e ], [ %i.u, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.aa = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  %.sroa.3.0 = phi ptr [ %i.aa, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ], [ null, %.split ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ]
  %.sroa.0.0 = phi i16 [ %i.z, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ], [ 7, %.split ], [ 7, %_ZNK4llvm3EVT8isVectorEv.exit ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm18MipsTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %22 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %25 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %26 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %30 = alloca %"class.llvm::SDLoc", align 8      ; 10 uses
  %31 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %37 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %38 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %42 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %44 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %45 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %46 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %52 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %56 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %59 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %60 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %61 = alloca %"class.llvm::ArrayRef.495", align 8 ; 5 uses
  %62 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %63 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %64 = alloca %"class.llvm::ArrayRef.495", align 8 ; 5 uses
  %65 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466, !nonnull !24, !align !64 ; 42 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !470  ; 3 uses
  switch i32 %i.d, label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 68, label %bb.b
    i32 69, label %bb.b
    i32 219, label %bb.h
    i32 539, label %bb.y
    i32 540, label %bb.y
    i32 193, label %bb.ab
    i32 194, label %bb.ay
    i32 59, label %bb.cp
    i32 198, label %bb.cy
    i32 60, label %bb.dk
    i32 227, label %bb.dp
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.e, align 8, !tbaa !471
  %i.f = icmp slt i32 %.val, 2
  br i1 %i.f, label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !472  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.h, align 8, !tbaa !30 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !71 ; 5 uses
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  %i.i = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false ; 2 uses
  %i.j = select i1 %.not4.i.i, i32 253, i32 418
  %i.k = icmp eq i32 %i.d, 68
  %i.l = select i1 %i.k, i32 558, i32 560
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !268
  store i64 %i.n, ptr %65, align 8, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !269
  store i32 %i.q, ptr %i.o, align 8, !tbaa !270
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !473  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(12) %65, i16 249, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.s, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.t) #27 ; 2 uses
  %.fca.0.extract50.i = extractvalue { ptr, i32 } %i.u, 0 ; 3 uses
  %.fca.1.extract51.i = extractvalue { ptr, i32 } %i.u, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.w = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0) #27
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = select i1 %.not4.i.i, i32 291, i32 421
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  store i16 249, ptr %62, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !70
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %62) #27 ; 2 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = extractvalue { ptr, i32 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  store ptr %i.v, ptr %63, align 16, !tbaa !474
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 %i.x, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #27 ; 2 uses
  %.fca.0.extract3.i.i = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract4.i.i = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract3.i.i, ptr %i.ac, align 16
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i32 %.fca.1.extract4.i.i, ptr %.sroa.26.0..sroa_idx.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr %.fca.0.extract50.i, ptr %i.ae, align 16, !tbaa !474
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %63, i64 40
  store i32 %.fca.1.extract51.i, ptr %.sroa.536.0..sroa_idx.i, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %.fca.0.extract50.i, null
  %i.af = select i1 %.not.i.i, i64 2, i64 3
  store ptr %63, ptr %64, align 8, !tbaa !475
  %i.ag = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !478
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %65, ptr %i.aa, i32 %i.ab, ptr noundef nonnull byval(%"class.llvm::ArrayRef.495") align 8 %64) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  %.fca.0.extract23.i = extractvalue { ptr, i32 } %i.ah, 0 ; 3 uses
  %.fca.1.extract24.i = extractvalue { ptr, i32 } %i.ah, 1
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr nonnull %1, i32 0, ptr %.fca.0.extract23.i, i32 %.fca.1.extract24.i) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.030.0.i = phi ptr [ %.fca.0.extract23.i, %bb.d ], [ %.fca.0.extract50.i, %bb.c ] ; 2 uses
  %.sroa.633.0.i = phi i32 [ 2, %bb.d ], [ %.fca.1.extract51.i, %bb.c ]
  %.sroa.046.0.i = phi ptr [ %.fca.0.extract23.i, %bb.d ], [ %i.v, %bb.c ]
  %.sroa.647.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.ai = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 1) #27
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  store i16 249, ptr %59, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !70
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %59) #27 ; 2 uses
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = extractvalue { ptr, i32 } %i.ak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  store ptr %.sroa.046.0.i, ptr %60, align 16, !tbaa !474
  %.sroa.218.0..sroa_idx.i85.i = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %.sroa.647.0.i, ptr %.sroa.218.0..sroa_idx.i85.i, align 8, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 %i.j, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #27 ; 2 uses
  %.fca.0.extract3.i86.i = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract4.i87.i = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract3.i86.i, ptr %i.an, align 16
  %.sroa.26.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %60, i64 24
  store i32 %.fca.1.extract4.i87.i, ptr %.sroa.26.0..sroa_idx.i88.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %60, i64 32
  store ptr %.sroa.030.0.i, ptr %i.ap, align 16, !tbaa !474
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i32 %.sroa.633.0.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !tbaa !72
  %.not.i89.i = icmp eq ptr %.sroa.030.0.i, null
  %i.aq = select i1 %.not.i89.i, i64 2, i64 3
  store ptr %60, ptr %61, align 8, !tbaa !475
  %i.ar = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !478
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %65, ptr %i.al, i32 %i.am, ptr noundef nonnull byval(%"class.llvm::ArrayRef.495") align 8 %61) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.as, 1
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr nonnull %1, i32 1, ptr %.fca.0.extract.i, i32 %.fca.1.extract.i) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  br label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.h:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val62 = load i32, ptr %i.at, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
end_hunk_0
begin_hunk_1_@_ZNK4llvm18MipsTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !479 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !470
  switch i32 %i.ri, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  ]

bb.cb:                                            ; preds = %bb.bz
  switch i32 %i.kz, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i: ; preds = %bb.cb, %bb.cb, %bb.ca, %bb.ca
  %.0.i131 = phi ptr [ %i.rg, %bb.ca ], [ %i.rg, %bb.ca ], [ %.sroa.056.0.copyload.i, %bb.cb ], [ %.sroa.056.0.copyload.i, %bb.cb ]
  br i1 %i.ni, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  %i.rj = icmp eq i32 %i.nh, 0
  %i.rk = sub nuw nsw i32 64, %i.nh
  %i.rl = zext nneg i32 %i.rk to i64              ; 2 uses
  %i.rm = shl i64 %i.ny, %i.rl
  %i.rn = ashr exact i64 %i.rm, %i.rl
  %.0.i.i.i.i166.i = select i1 %i.rj, i64 0, i64 %i.rn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i

bb.cd:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit162.i
  %i.ro = load i64, ptr %i.nx, align 8, !tbaa !489
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i165.i = phi i64 [ %.0.i.i.i.i166.i, %bb.cc ], [ %i.ro, %bb.cd ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i131, i64 88
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !481 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !484 ; 5 uses
  %i.ru = icmp ult i32 %i.rt, 65                  ; 2 uses
  br i1 %i.ru, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i
  %i.rv = load i64, ptr %i.rr, align 8            ; 3 uses
  %i.rw = icmp eq i32 %i.rt, 0
  %i.rx = sub nuw nsw i32 64, %i.rt
  %i.ry = zext nneg i32 %i.rx to i64              ; 2 uses
  %i.rz = shl i64 %i.rv, %i.ry
  %i.sa = ashr exact i64 %i.rz, %i.ry
  %.0.i.i.i.i169.i = select i1 %i.rw, i64 0, i64 %i.sa
  %i.sb = inttoptr i64 %i.rv to ptr
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i

bb.cf:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit167.i
  %i.sc = load ptr, ptr %i.rr, align 8            ; 3 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !489
  %i.se = ptrtoint ptr %i.sc to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i: ; preds = %bb.cf, %bb.ce
  %i.sf = phi i64 [ %i.rv, %bb.ce ], [ %i.se, %bb.cf ]
  %i.sg = phi ptr [ %i.sb, %bb.ce ], [ %i.sc, %bb.cf ]
  %.0.i.i.i168.i = phi i64 [ %.0.i.i.i.i169.i, %bb.ce ], [ %i.sd, %bb.cf ]
  %i.sh = and i64 %.0.i.i.i168.i, %.0.i.i.i165.i
  %.not120.i = icmp eq i64 %i.sh, 0
  br i1 %.not120.i, label %bb.cg, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cg:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !268
  store i64 %i.sj, ptr %30, align 8, !tbaa !268
  %i.sk = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !269
  store i32 %i.sm, ptr %i.sk, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i, i64 48
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i171.i = load i16, ptr %i.so, align 8, !tbaa !30 ; 4 uses
  %.sroa.21.0..sroa_idx.i172.i = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %.sroa.21.0.copyload.i173.i = load ptr, ptr %.sroa.21.0..sroa_idx.i172.i, align 8, !tbaa !71 ; 2 uses
  store i16 %.sroa.0.0.copyload.i171.i, ptr %31, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.21.0.copyload.i173.i, ptr %i.sp, align 8
  br i1 %i.oi, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i181.i = load i16, ptr %i.sr, align 8, !tbaa !30
  %.sroa.21.0..sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %.sroa.21.0.copyload.i183.i = load ptr, ptr %.sroa.21.0..sroa_idx.i182.i, align 8, !tbaa !71
  br i1 %i.ru, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ss = icmp eq i32 %i.rt, 0
  %i.st = sub nuw nsw i32 64, %i.rt
  %i.su = zext nneg i32 %i.st to i64              ; 2 uses
  %i.sv = shl i64 %i.sf, %i.su
  %i.sw = ashr exact i64 %i.sv, %i.su
  %.0.i.i.i.i187.i = select i1 %i.ss, i64 0, i64 %i.sw
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i

bb.cj:                                            ; preds = %bb.ch
  %i.sx = load i64, ptr %i.sg, align 8, !tbaa !489
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i186.i = phi i64 [ %.0.i.i.i.i187.i, %bb.ci ], [ %i.sx, %bb.cj ]
  %i.sy = ashr i64 %.0.i.i.i186.i, %i.oe
  %i.sz = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.sy, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0.0.copyload.i171.i, ptr %.sroa.21.0.copyload.i173.i, i1 noundef zeroext false, i1 noundef zeroext false) #27
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  %i.ta = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.oe, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract29.i = extractvalue { ptr, i32 } %i.ta, 0
  %.fca.1.extract30.i = extractvalue { ptr, i32 } %i.ta, 1
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 48
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i176.i = load i16, ptr %i.tc, align 8, !tbaa !30
  %.sroa.21.0..sroa_idx.i177.i = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %.sroa.21.0.copyload.i178.i = load ptr, ptr %.sroa.21.0..sroa_idx.i177.i, align 8, !tbaa !71
  store ptr %.sroa.056.0.copyload.i, ptr %32, align 8, !tbaa !474
  %.sroa.18.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.ku, ptr %.sroa.18.0..sroa_idx71.i, align 8
  store ptr %.fca.0.extract29.i, ptr %33, align 8, !tbaa !474
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract30.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !72
  %i.td = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0.0.copyload.i176.i, ptr %.sroa.21.0.copyload.i178.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #27
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i181120.i = load i16, ptr %i.tf, align 8, !tbaa !30
  %.sroa.21.0..sroa_idx.i182121.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %.sroa.21.0.copyload.i183122.i = load ptr, ptr %.sroa.21.0..sroa_idx.i182121.i, align 8, !tbaa !71
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i
  %.pn.i = phi { ptr, i32 } [ %i.td, %bb.ck ], [ %i.sz, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i ] ; 2 uses
  %.sroa.21.0.copyload.i183129.i = phi ptr [ %.sroa.21.0.copyload.i183122.i, %bb.ck ], [ %.sroa.21.0.copyload.i183.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i ]
  %.sroa.0.0.copyload.i181127.i = phi i16 [ %.sroa.0.0.copyload.i181120.i, %bb.ck ], [ %.sroa.0.0.copyload.i181.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit188.i ]
  %.fca.1.extract23.sink.i = extractvalue { ptr, i32 } %.pn.i, 1
  %.fca.0.extract22.sink.i = extractvalue { ptr, i32 } %.pn.i, 0
  store ptr %.fca.0.extract22.sink.i, ptr %34, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract23.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.tg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.oe, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.tg, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.tg, 1
  store ptr %.fca.0.extract9.i, ptr %35, align 8
  %.sroa.212.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract10.i, ptr %.sroa.212.0..sroa_idx.i132, align 8
  %.not.i189.i = icmp eq i16 %.sroa.0.0.copyload.i171.i, 0
  br i1 %.not.i189.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.th = zext i16 %.sroa.0.0.copyload.i171.i to i64
  %i.ti = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.th ; 2 uses
  %i.tj = getelementptr i8, ptr %i.ti, i64 -16
  %.sroa.0.0.copyload.i.i190.i = load i64, ptr %i.tj, align 16
  %.sroa.2.0..sroa_idx.i.i191.i = getelementptr i8, ptr %i.ti, i64 -8
  %.sroa.2.0.copyload.i.i192.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i191.i, align 8
  %.fca.0.insert.i.i193.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i190.i, 0
  %.fca.1.insert.i.i194.i = insertvalue { i64, i8 } %.fca.0.insert.i.i193.i, i8 %.sroa.2.0.copyload.i.i192.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i

bb.cn:                                            ; preds = %bb.cl
  %i.tk = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i:         ; preds = %bb.cn, %bb.cm
  %.pn.i195.i = phi { i64, i8 } [ %.fca.1.insert.i.i194.i, %bb.cm ], [ %i.tk, %bb.cn ] ; 2 uses
  %.fca.1.extract6.i133 = extractvalue { i64, i8 } %.pn.i195.i, 1
  %i.tl = trunc nuw i8 %.fca.1.extract6.i133 to i1
  br i1 %i.tl, label %bb.co, label %_ZNK4llvm8TypeSizecvmEv.exit197.i

bb.co:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit197.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit196.i
  %.fca.0.extract5.i134 = extractvalue { i64, i8 } %.pn.i195.i, 0
  %i.tm = icmp ult i64 %.fca.0.extract5.i134, 64
  %i.tn = and i64 %i.og, 31
  %i.to = select i1 %i.tm, i64 %i.tn, i64 %i.og
  %i.tp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.to, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.tp, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.tp, 1
  store ptr %.fca.0.extract1.i, ptr %36, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.tq = load ptr, ptr %i.lb, align 8, !tbaa !473
  %i.tr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 585, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0.0.copyload.i181127.i, ptr %.sroa.21.0.copyload.i183129.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.tq) #27 ; 2 uses
  %.fca.0.extract.i135 = extractvalue { ptr, i32 } %i.tr, 0
  %.fca.1.extract.i136 = extractvalue { ptr, i32 } %i.tr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.ay, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115, %bb.bb, %bb.bc, %bb.be, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120, %_ZN4llvm16isShiftedMask_64Em.exit.i.i123, %bb.bf, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i, %bb.bg, %bb.bh, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130, %_ZN4llvm16isShiftedMask_64Em.exit.i140.i, %bb.bm, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i, %_ZN4llvm16isShiftedMask_64Em.exit.i147.i, %bb.bn, %bb.bo, %.critedge.i137, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i, %bb.bx, %bb.by, %bb.ca, %bb.cb, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i, %_ZNK4llvm8TypeSizecvmEv.exit197.i
  %.sroa.32.5.i = phi i32 [ 0, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115 ], [ 0, %bb.ay ], [ 0, %bb.bo ], [ 0, %bb.bb ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i147.i ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ 0, %bb.bn ], [ %.fca.1.extract.i136, %_ZNK4llvm8TypeSizecvmEv.exit197.i ], [ 0, %bb.cb ], [ 0, %bb.ca ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i ], [ 0, %bb.bc ], [ 0, %bb.bh ], [ 0, %bb.bm ], [ 0, %bb.bx ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i ], [ 0, %bb.by ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i140.i ], [ %.sroa.32.2.i, %.critedge.i137 ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120 ], [ 0, %bb.be ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i.i123 ], [ 0, %bb.bf ], [ %.fca.1.extract59.i, %bb.bg ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i ]
  %.sroa.086.5.i = phi ptr [ null, %_ZNK4llvm13MipsSubtarget16hasExtractInsertEv.exit.i115 ], [ null, %bb.ay ], [ null, %bb.bo ], [ null, %bb.bb ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit160.i ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i147.i ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i130 ], [ null, %bb.bn ], [ %.fca.0.extract.i135, %_ZNK4llvm8TypeSizecvmEv.exit197.i ], [ null, %bb.cb ], [ null, %bb.ca ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit170.i ], [ null, %bb.bc ], [ null, %bb.bh ], [ null, %bb.bm ], [ null, %bb.bx ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit143.i ], [ null, %bb.by ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i140.i ], [ %.sroa.086.2.i, %.critedge.i137 ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i120 ], [ null, %bb.be ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i.i123 ], [ null, %bb.bf ], [ %.fca.0.extract58.i, %bb.bg ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit133.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  br label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cp:                                            ; preds = %bb.a
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !32, !nonnull !24, !align !64 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val68 = load i32, ptr %i.tu, align 8, !tbaa !471
  %i.tv = getelementptr i8, ptr %i.tt, i64 344
  %.val69 = load i32, ptr %i.tv, align 8          ; 5 uses
  %i.tw = getelementptr i8, ptr %i.tt, i64 375
  %.val70 = load i8, ptr %i.tw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.tx = icmp slt i32 %.val68, 2
  br i1 %i.tx, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.ty = add i32 %.val69, -3
  %or.cond.i.i = icmp ult i32 %i.ty, 5
  %i.tz = icmp sgt i32 %.val69, 11
  %spec.select.i.i = or i1 %i.tz, %or.cond.i.i
  br i1 %spec.select.i.i, label %bb.cr, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cr:                                            ; preds = %bb.cq
  %i.ua = icmp eq i32 %.val69, 7
  %i.ub = icmp samesign ugt i32 %.val69, 15
  %spec.select.i36.i = or i1 %i.ua, %i.ub
  %i.uc = trunc nuw i8 %.val70 to i1
  %or.cond.i159 = select i1 %spec.select.i36.i, i1 true, i1 %i.uc
  br i1 %or.cond.i159, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i.i160 = load i16, ptr %i.ue, align 8, !tbaa !30
  %.sroa.21.0..sroa_idx.i.i161 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.21.0.copyload.i.i162 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i161, align 8, !tbaa !71
  %.not.i.i.i163 = icmp eq i16 %.sroa.0.0.copyload.i.i160, 8
  %i.uf = icmp eq ptr %.sroa.21.0.copyload.i.i162, null
  %.not4.i.i164 = select i1 %.not.i.i.i163, i1 %i.uf, i1 false
  br i1 %.not4.i.i164, label %bb.ct, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.ct:                                            ; preds = %bb.cs
  %i.ug = tail call fastcc { ptr, i32 } @_ZL23performMADD_MSUBCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE(ptr noundef nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 %.val69) ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.ug, 0
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.ug, 1
  br label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cu:                                            ; preds = %bb.cp
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !473 ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 40
  %.sroa.022.0.copyload.i = load ptr, ptr %i.uj, align 8, !tbaa !474 ; 3 uses
  %.sroa.9.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 48
  %.sroa.9.sroa.042.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx28.i, align 8, !tbaa !72
  %.sroa.031.0.copyload.i = load ptr, ptr %i.ui, align 8, !tbaa !474 ; 2 uses
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %.sroa.634.0.copyload.i = load i32, ptr %.sroa.634.0..sroa_idx.i, align 8, !tbaa !72
  %.sroa.739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  %.sroa.739.0.copyload.i = load i32, ptr %.sroa.739.0..sroa_idx.i, align 4
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload.i, i64 24
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !470
  %.not.i147 = icmp eq i32 %i.ul, 59              ; 3 uses
  %.sroa.634.0.i = select i1 %.not.i147, i32 %.sroa.634.0.copyload.i, i32 %.sroa.9.sroa.042.0.copyload.i
  %.sroa.031.0.i = select i1 %.not.i147, ptr %.sroa.031.0.copyload.i, ptr %.sroa.022.0.copyload.i
  %.sroa.022.0.i = select i1 %.not.i147, ptr %.sroa.022.0.copyload.i, ptr %.sroa.031.0.copyload.i ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 24
  %i.un = load i32, ptr %i.um, align 8, !tbaa !470
  %.not32.i = icmp eq i32 %i.un, 59
  br i1 %.not32.i, label %bb.cv, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cv:                                            ; preds = %bb.cu
  %66 = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 40
  %67 = load ptr, ptr %66, align 8, !tbaa !473    ; 6 uses
  %.sroa.0.0.copyload.i151 = load ptr, ptr %67, align 8, !tbaa !474 ; 3 uses
  %.sroa.9.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %.sroa.9.sroa.0.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i152, align 8, !tbaa !72 ; 2 uses
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %67, i64 12
  %.sroa.9.sroa.6.0.copyload.i = load i32, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx.i, align 4
  %i.uo = getelementptr inbounds nuw i8, ptr %67, i64 40
  %.sroa.09.0.copyload.i = load ptr, ptr %i.uo, align 8, !tbaa !474 ; 3 uses
  %.sroa.6.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %67, i64 48
  %.sroa.6.0.copyload.i154 = load i32, ptr %.sroa.6.0..sroa_idx.i153, align 8, !tbaa !72 ; 2 uses
  %.sroa.7.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %67, i64 52
  %.sroa.7.0.copyload.i156 = load i32, ptr %.sroa.7.0..sroa_idx.i155, align 4
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i151, i64 24
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !470
  %.not33.i = icmp eq i32 %i.uq, 591
  br i1 %.not33.i, label %.thread.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.phi.trans.insert.i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload.i, i64 24
  %.pre.i.a = load i32, ptr %.phi.trans.insert.i.a, align 8, !tbaa !470
  %i.ur = icmp eq i32 %.pre.i.a, 591
  br i1 %i.ur, label %.thread.i, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

.thread.i:                                        ; preds = %bb.cw, %bb.cv
  %.sroa.0.062.i = phi ptr [ %.sroa.09.0.copyload.i, %bb.cw ], [ %.sroa.0.0.copyload.i151, %bb.cv ] ; 2 uses
  %.sroa.09.061.i = phi ptr [ %.sroa.0.0.copyload.i151, %bb.cw ], [ %.sroa.09.0.copyload.i, %bb.cv ]
  %.sroa.6.060.i = phi i32 [ %.sroa.9.sroa.0.0.copyload.i, %bb.cw ], [ %.sroa.6.0.copyload.i154, %bb.cv ]
  %.sroa.9.sroa.0.059.i = phi i32 [ %.sroa.6.0.copyload.i154, %bb.cw ], [ %.sroa.9.sroa.0.0.copyload.i, %bb.cv ]
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.062.i, i64 40
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !473
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !479
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !470
  %.not35.i = icmp eq i32 %i.uw, 42
  br i1 %.not35.i, label %bb.cx, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cx:                                            ; preds = %.thread.i
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i37.i = load i16, ptr %i.uy, align 8, !tbaa !30 ; 2 uses
  %.sroa.21.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %.sroa.21.0.copyload.i39.i = load ptr, ptr %.sroa.21.0..sroa_idx.i38.i, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !268
  store i64 %i.va, ptr %15, align 8, !tbaa !268
  %i.vb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !269
  store i32 %i.vd, ptr %i.vb, align 8, !tbaa !270
  store ptr %.sroa.031.0.i, ptr %16, align 8, !tbaa !474
  %.sroa.634.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.634.0.i, ptr %.sroa.634.0..sroa_idx35.i, align 8, !tbaa !72
  %.sroa.739.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %.sroa.739.0.copyload.i, ptr %.sroa.739.0..sroa_idx40.i, align 4
  store ptr %.sroa.09.061.i, ptr %17, align 8, !tbaa !474
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.6.060.i, ptr %.sroa.6.0..sroa_idx12.i, align 8, !tbaa !72
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %.sroa.7.0.copyload.i156, ptr %.sroa.7.0..sroa_idx16.i, align 4
  %i.ve = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i37.i, ptr %.sroa.21.0.copyload.i39.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #27 ; 2 uses
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.ve, 0
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.ve, 1
  store ptr %.fca.0.extract4.i, ptr %18, align 8, !tbaa !474
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !72
  store ptr %.sroa.0.062.i, ptr %19, align 8, !tbaa !474
  %.sroa.9.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.sroa.9.sroa.0.059.i, ptr %.sroa.9.0..sroa_idx6.i, align 8, !tbaa !72
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %.sroa.9.sroa.6.0.copyload.i, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx6.sroa_idx.i, align 4
  %i.vf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i37.i, ptr %.sroa.21.0.copyload.i39.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #27 ; 2 uses
  %.fca.0.extract.i157 = extractvalue { ptr, i32 } %i.vf, 0
  %.fca.1.extract.i158 = extractvalue { ptr, i32 } %i.vf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cw, %.thread.i, %bb.cx
  %.sroa.9.2.i = phi i32 [ 0, %bb.cs ], [ %.fca.1.extract16.i, %bb.ct ], [ 0, %bb.cw ], [ 0, %bb.cr ], [ 0, %bb.cq ], [ 0, %bb.cu ], [ %.fca.1.extract.i158, %bb.cx ], [ 0, %.thread.i ]
  %.sroa.048.2.i = phi ptr [ null, %bb.cs ], [ %.fca.0.extract15.i, %bb.ct ], [ null, %bb.cw ], [ null, %bb.cr ], [ null, %bb.cq ], [ null, %bb.cu ], [ %.fca.0.extract.i157, %bb.cx ], [ null, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZL20performDivRemCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cy:                                            ; preds = %bb.a
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !32, !nonnull !24, !align !64
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val71 = load i32, ptr %i.vi, align 8, !tbaa !471
  %i.vj = getelementptr i8, ptr %i.vh, i64 364
  %.val72 = load i8, ptr %i.vj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.vk = icmp sgt i32 %.val71, 1
  %i.vl = trunc nuw i8 %.val72 to i1
  %or.cond29.i = select i1 %i.vk, i1 %i.vl, i1 false
  br i1 %or.cond29.i, label %bb.cz, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cz:                                            ; preds = %bb.cy
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !473 ; 2 uses
  %.sroa.016.0.copyload.i = load ptr, ptr %i.vn, align 8, !tbaa !474 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 24
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !470
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 40
  %.sroa.014.0.copyload.i167 = load ptr, ptr %i.vq, align 8, !tbaa !474 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !472 ; 2 uses
  %.sroa.0.0.copyload.i.i168 = load i16, ptr %i.vs, align 8, !tbaa !30 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i169 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.sroa.21.0.copyload.i.i170 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i169, align 8, !tbaa !71 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i168, ptr %10, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i.i170, ptr %i.vt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !268
  store i64 %i.vv, ptr %11, align 8, !tbaa !268
  %i.vw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !269
  store i32 %i.vy, ptr %i.vw, align 8, !tbaa !270
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i167, i64 24
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !470
  switch i32 %i.wa, label %.critedge.i184 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i171
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i171
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i171: ; preds = %bb.cz, %bb.cz
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i167, i64 88
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !481 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !484
  %i.wg = icmp ult i32 %i.wf, 65
  %i.wh = load ptr, ptr %i.wd, align 8
  %spec.select.i.i.i.i172 = select i1 %i.wg, ptr %i.wd, ptr %i.wh
  %.0.i.i.i40.i = load i64, ptr %spec.select.i.i.i.i172, align 8, !tbaa !279 ; 3 uses
  %.not.i.i173 = icmp eq i16 %.sroa.0.0.copyload.i.i168, 0 ; 2 uses
  br i1 %.not.i.i173, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i171
  %i.wi = zext i16 %.sroa.0.0.copyload.i.i168 to i64
  %i.wj = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.wi ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wj, i64 -16
  %.sroa.0.0.copyload.i.i.i174 = load i64, ptr %i.wk, align 16
  %.sroa.2.0..sroa_idx.i.i.i175 = getelementptr i8, ptr %i.wj, i64 -8
  %.sroa.2.0.copyload.i.i.i176 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i175, align 8
  %.fca.0.insert.i.i.i177 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i174, 0
  %.fca.1.insert.i.i.i178 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i177, i8 %.sroa.2.0.copyload.i.i.i176, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i179

bb.db:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i171
  %i.wl = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i179

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i179:         ; preds = %bb.db, %bb.da
  %.pn.i.i180 = phi { i64, i8 } [ %.fca.1.insert.i.i.i178, %bb.da ], [ %i.wl, %bb.db ] ; 2 uses
  %.fca.1.extract18.i181 = extractvalue { i64, i8 } %.pn.i.i180, 1
  %i.wm = trunc nuw i8 %.fca.1.extract18.i181 to i1
  br i1 %i.wm, label %bb.dc, label %_ZNK4llvm8TypeSizecvmEv.exit.i182

bb.dc:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i179
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i182:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i179
  %.fca.0.extract17.i183 = extractvalue { i64, i8 } %.pn.i.i180, 0
  %.not37.i = icmp ult i64 %.0.i.i.i40.i, %.fca.0.extract17.i183
  %.not38.i = icmp eq i32 %i.vp, 193
  %or.cond30.i = select i1 %.not37.i, i1 %.not38.i, i1 false
  br i1 %or.cond30.i, label %bb.dd, label %.critedge.i184

bb.dd:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i182
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 40
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !473 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 40
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !479 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !470
  switch i32 %i.ws, label %.critedge.i184 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i185
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i185
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i185: ; preds = %bb.dd, %bb.dd
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 88
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !481 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !484
  %i.wy = icmp ult i32 %i.wx, 65
  %i.wz = load ptr, ptr %i.wv, align 8
  %spec.select.i.i.i42.i = select i1 %i.wy, ptr %i.wv, ptr %i.wz
  %.0.i.i.i43.i = load i64, ptr %spec.select.i.i.i42.i, align 8, !tbaa !279 ; 5 uses
  %.not.i.i.i186 = icmp eq i64 %.0.i.i.i43.i, 0
  br i1 %.not.i.i.i186, label %.critedge.i184, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i187

_ZN4llvm16isShiftedMask_64Em.exit.i.i187:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i185
  %i.xa = add i64 %.0.i.i.i43.i, -1
  %i.xb = or i64 %i.xa, %.0.i.i.i43.i             ; 2 uses
  %i.xc = add i64 %i.xb, 1
  %i.xd = and i64 %i.xc, %i.xb
  %i.xe = icmp eq i64 %i.xd, 0
  br i1 %i.xe, label %bb.de, label %.critedge.i184

bb.de:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i187
  %i.xf = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i43.i) ; 3 uses
  %i.xg = and i64 %.0.i.i.i43.i, 1
  %i.xh = icmp eq i64 %i.xg, 0
  %i.xi = icmp samesign ugt i64 %i.xf, 32
  %or.cond.i188 = select i1 %i.xh, i1 true, i1 %i.xi
  br i1 %or.cond.i188, label %.critedge.i184, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xj = add i64 %i.xf, %.0.i.i.i40.i
  br i1 %.not.i.i173, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.xk = zext i16 %.sroa.0.0.copyload.i.i168 to i64
  %i.xl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.xk ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xl, i64 -16
  %.sroa.0.0.copyload.i.i45.i = load i64, ptr %i.xm, align 16
  %.sroa.2.0..sroa_idx.i.i46.i = getelementptr i8, ptr %i.xl, i64 -8
  %.sroa.2.0.copyload.i.i47.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i46.i, align 8
  %.fca.0.insert.i.i48.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i45.i, 0
  %.fca.1.insert.i.i49.i = insertvalue { i64, i8 } %.fca.0.insert.i.i48.i, i8 %.sroa.2.0.copyload.i.i47.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit51.i

bb.dh:                                            ; preds = %bb.df
  %i.xn = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit51.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit51.i:          ; preds = %bb.dh, %bb.dg
  %.pn.i50.i = phi { i64, i8 } [ %.fca.1.insert.i.i49.i, %bb.dg ], [ %i.xn, %bb.dh ] ; 2 uses
  %.fca.1.extract14.i = extractvalue { i64, i8 } %.pn.i50.i, 1
  %i.xo = trunc nuw i8 %.fca.1.extract14.i to i1
  br i1 %i.xo, label %bb.di, label %_ZNK4llvm8TypeSizecvmEv.exit52.i

bb.di:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit51.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit52.i:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit51.i
  %.fca.0.extract13.i = extractvalue { i64, i8 } %.pn.i50.i, 0
  %i.xp = icmp ugt i64 %i.xj, %.fca.0.extract13.i
  br i1 %i.xp, label %.critedge.i184, label %bb.dj

bb.dj:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit52.i
  %.sroa.05.0.copyload6.i = load ptr, ptr %i.wo, align 8, !tbaa !474
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %.sroa.57.0.copyload9.i = load i32, ptr %.sroa.57.0..sroa_idx8.i, align 8, !tbaa !72
  %i.xq = add nuw nsw i64 %i.xf, 4294967295
  store ptr %.sroa.05.0.copyload6.i, ptr %12, align 8, !tbaa !474
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.57.0.copyload9.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !72
  %i.xr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %.0.i.i.i40.i, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract6.i189 = extractvalue { ptr, i32 } %i.xr, 0
  %.fca.1.extract7.i190 = extractvalue { ptr, i32 } %i.xr, 1
  store ptr %.fca.0.extract6.i189, ptr %13, align 8
  %.sroa.29.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract7.i190, ptr %.sroa.29.0..sroa_idx.i191, align 8
  %i.xs = and i64 %i.xq, 4294967295
  %i.xt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.xs, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.xt, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.xt, 1
  store ptr %.fca.0.extract2.i, ptr %14, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.xu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 538, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i168, ptr %.sroa.21.0.copyload.i.i170, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #27 ; 2 uses
  %.fca.0.extract.i192 = extractvalue { ptr, i32 } %i.xu, 0
  %.fca.1.extract.i193 = extractvalue { ptr, i32 } %i.xu, 1
  br label %.critedge.i184

.critedge.i184:                                   ; preds = %bb.dj, %_ZNK4llvm8TypeSizecvmEv.exit52.i, %bb.de, %_ZN4llvm16isShiftedMask_64Em.exit.i.i187, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i185, %bb.dd, %_ZNK4llvm8TypeSizecvmEv.exit.i182, %bb.cz
end_hunk_1
begin_hunk_2_@_ZNK4llvm18MipsTargetLowering11getOpndListERNS_15SmallVectorImplINS_7SDValueEEERSt5dequeISt4pairIjS2_ESaIS7_EEbbbbRNS_14TargetLowering16CallLoweringInfoES2_S2_:bb.a
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getRegisterMaskEPKj(ptr noundef nonnull align 8 dereferenceable(920) %i.ei, ptr noundef %.2) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ej, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ej, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !533 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !534
  %.not.i80 = icmp ult i32 %i.el, %i.en
  br i1 %.not.i80, label %bb.p, label %bb.o, !prof !611

bb.o:                                             ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit82

bb.p:                                             ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.thread
  %i.eo = zext i32 %i.el to i64
  %i.ep = load ptr, ptr %1, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.eo ; 2 uses
  store ptr %.fca.0.extract, ptr %i.eq, align 1
  %.sroa.32.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.32.0..sroa_idx.i81, align 1
  %i.er = load i32, ptr %i.ek, align 8, !tbaa !533
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.ek, align 8, !tbaa !533
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit82

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit82: ; preds = %bb.o, %bb.p
  %.not77 = icmp eq ptr %.sroa.0102.0.lcssa162, null
  br i1 %.not77, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit85, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit82
  %i.et = load i32, ptr %i.ek, align 8, !tbaa !533 ; 2 uses
  %i.eu = load i32, ptr %i.em, align 4, !tbaa !534
  %.not.i83 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i83, label %bb.s, label %bb.r, !prof !611

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %.sroa.0102.0.lcssa162, i32 %.sroa.7.0.lcssa161)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit85

bb.s:                                             ; preds = %bb.q
  %i.ev = zext i32 %i.et to i64
  %i.ew = load ptr, ptr %1, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ev ; 2 uses
  store ptr %.sroa.0102.0.lcssa162, ptr %i.ex, align 1
  %.sroa.32.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %.sroa.7.0.lcssa161, ptr %.sroa.32.0..sroa_idx.i84, align 1
  %i.ey = load i32, ptr %i.ek, align 8, !tbaa !533
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ek, align 8, !tbaa !533
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit85

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit85: ; preds = %bb.s, %bb.r, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit82
  ret void
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm6Module11getFunctionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm16MipsRegisterInfo22getMips16RetHelperMaskEv() local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG15getRegisterMaskEPKj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm18MipsTargetLowering29AdjustInstrPostInstrSelectionERNS_12MachineInstrEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !612
  switch i32 %i.b, label %.critedge [
    i32 1849, label %bb.b
    i32 544, label %bb.b
    i32 1851, label %bb.b
    i32 541, label %bb.b
    i32 1850, label %bb.b
    i32 1852, label %bb.b
    i32 760, label %bb.b
    i32 761, label %bb.b
    i32 759, label %bb.b
    i32 756, label %bb.b
    i32 764, label %bb.b
    i32 765, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @EmitJalrReloc, i64 120), align 8, !tbaa !917, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32, !nonnull !24, !align !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 375
  %i.h = load i8, ptr %i.g, align 1, !tbaa !381, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm14TargetLowering21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) #27
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = load i16, ptr %i.k, align 8, !tbaa !1507
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !473
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !479  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i16, ptr %i.q, align 8, !tbaa !1507
  %i.s = icmp ult i16 %i.r, 2
  br i1 %i.s, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !473
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.024.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !474 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.024.0.copyload, null
  br i1 %.not.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !470
  switch i32 %i.x, label %.critedge [
    i32 14, label %_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit
    i32 39, label %_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit
    i32 15, label %_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit
    i32 40, label %_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit
    i32 44, label %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_7SDValueEEEDaRKT0_.exit
    i32 19, label %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_7SDValueEEEDaRKT0_.exit
  ]

_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit: ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !265  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1508
  %i.ab = icmp eq i8 %i.aa, 14
  br i1 %i.ab, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit
  %i.ac = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #27 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_7SDValueEEEDaRKT0_.exit: ; preds = %bb.h, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !272 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_7SDValueEEEDaRKT0_.exit
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #27
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.j, %bb.i
  %.sroa.022.0 = phi ptr [ %i.ag, %bb.j ], [ %i.ad, %bb.i ]
  %.sroa.6.0 = phi i64 [ %i.ah, %bb.j ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.6.0, 0
  br i1 %i.ai, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1509
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !626
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1510, !nonnull !24, !align !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.ap, align 8, !tbaa !577
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.aq, align 1, !tbaa !574
  store ptr %.sroa.022.0, ptr %3, align 8, !tbaa !279
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.6.0, ptr %i.ar, align 8, !tbaa !279
  %i.as = call noundef ptr @_ZN4llvm9MCContext17getOrCreateSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.ao, ptr noundef nonnull align 8 dereferenceable(34) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !674, !alias.scope !1511
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.as, ptr %i.au, align 8, !tbaa !279, !alias.scope !1511
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !279, !alias.scope !1511
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.aw, align 8, !tbaa !279, !alias.scope !1511
  store i32 6159, ptr %4, align 8, !alias.scope !1511
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.k, %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvm16dyn_cast_or_nullIKNS_19GlobalAddressSDNodeENS_7SDValueEEEDaRKT0_.exit, %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_7SDValueEEEDaRKT0_.exit, %bb.g, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  ret void
}

declare noundef ptr @_ZN4llvm9MCContext17getOrCreateSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm18MipsTargetLowering9LowerCallERNS_14TargetLowering16CallLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(4664) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %16 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %17 = alloca %"class.llvm::ArrayRef.495", align 8 ; 5 uses
  %18 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %19 = alloca %"class.llvm::ArrayRef.495", align 8 ; 5 uses
  %20 = alloca %"class.llvm::SDLoc", align 8      ; 34 uses
  %21 = alloca %"class.llvm::SmallVector.791", align 8 ; 10 uses
  %22 = alloca %"class.llvm::MipsCCState", align 8 ; 19 uses
  %23 = alloca %"struct.llvm::MachineFunction::CallSiteInfo", align 8 ; 17 uses
  %24 = alloca %"class.std::deque", align 8       ; 20 uses
  %25 = alloca %"class.llvm::SmallVector.827", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %26 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 5 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"struct.std::pair.562", align 8   ; 7 uses
  %35 = alloca %"struct.std::pair.562", align 8   ; 7 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"struct.std::pair.562", align 8   ; 8 uses
  %43 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %45 = alloca %"class.llvm::ArrayRef.495", align 8 ; 3 uses
  %46 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %47 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %48 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %49 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %51 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %52 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %53 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %55 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %56 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %58 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %59 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %60 = alloca %"class.llvm::SmallVector.827", align 8 ; 11 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %63 = alloca %"class.llvm::ArrayRef.495", align 8 ; 3 uses
  %64 = alloca %"class.llvm::ArrayRef.495", align 8 ; 3 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1472, !nonnull !24, !align !64 ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !537
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1928
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2456
  %.sroa.0773.0.copyload = load ptr, ptr %1, align 8, !tbaa !474 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.36.0.copyload = load i32, ptr %.sroa.36.0..sroa_idx, align 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0760.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !474 ; 25 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !72 ; 6 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !540  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 4
  %i.q = icmp ne i16 %i.p, 0                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !532
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32, !nonnull !24, !align !64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(536) %i.x) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !166 ; 4 uses
  %i.ae = tail call noundef zeroext i1 @_ZNK4llvm14TargetLowering21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.af, ptr %21, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !533
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 16, ptr %i.ah, align 4, !tbaa !534
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !493
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !32, !nonnull !24, !align !64
  %i.am = call noundef i32 @_ZN4llvm11MipsCCState30getSpecialCallingConvForCalleeEPKNS_6SDNodeERKNS_13MipsSubtargetE(ptr noundef %.sroa.0760.0.copyload, ptr noundef nonnull align 8 dereferenceable(536) %i.al) #27
  call void @_ZN4llvm7CCStateC2EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(424) %22, i32 noundef %i.m, i1 noundef zeroext %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i1 noundef zeroext false) #27
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 420
  store i32 %i.am, ptr %i.an, align 4, !tbaa !1381
  %.not.i.i = icmp eq ptr %.sroa.0760.0.copyload, null
  br i1 %.not.i.i, label %.thread829, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0760.0.copyload, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !470
  switch i32 %i.ap, label %.thread829 [
    i32 44, label %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_6SDNodeEEEDaPT0_.exit
    i32 19, label %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_6SDNodeEEEDaPT0_.exit
  ]

_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_6SDNodeEEEDaPT0_.exit: ; preds = %bb.b, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0760.0.copyload, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272 ; 4 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %.thread829, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_6SDNodeEEEDaPT0_.exit
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #27
  %.not.i525 = icmp eq i64 %i.as, 6
  br i1 %.not.i525, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %.thread829

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.at = load i32, ptr %i.ar, align 1
  %i.au = xor i32 %i.at, 1668113773
  %i.av = getelementptr i8, ptr %i.ar, i64 4
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = xor i32 %i.ax, 31088
  %i.az = or i32 %i.au, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = icmp ne i32 %i.m, 8
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.c, label %.thread829

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0773.0.copyload, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !470
  %i.bg = icmp eq i32 %i.bf, 333
  br i1 %i.bg, label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit, label %.thread829

.thread829:                                       ; preds = %_ZN4llvm16dyn_cast_or_nullIKNS_20ExternalSymbolSDNodeENS_6SDNodeEEEDaPT0_.exit, %_ZN4llvm9StringRefC2EPKc.exit, %bb.b, %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !388, !nonnull !24, !align !389
  %i.bj = call noundef i32 @_ZNK4llvm11MipsABIInfo29GetCalleeAllocdArgSizeInBytesEj(ptr noundef nonnull align 4 dereferenceable(4) %i.bi, i32 noundef %i.m) #27
  %i.bk = zext i32 %i.bj to i64
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.c, %.thread829
  %i.bl = phi i1 [ false, %.thread829 ], [ true, %bb.c ] ; 5 uses
  %i.bm = phi i64 [ %i.bk, %.thread829 ], [ 0, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !1413
  %i.bp = add i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !1413
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %22, i8 0) #27
  call void @_ZN4llvm7CCState19AnalyzeCallOperandsERKNS_15SmallVectorImplINS_3ISD9OutputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420) %22, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @_ZL7CC_MipsjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE) #27
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !1413
  %i.br = trunc i64 %i.bq to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.bs, ptr %23, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !533
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 2 uses
  store i32 1, ptr %i.bu, align 4, !tbaa !534
end_hunk_2
begin_hunk_3_@_ZL23performMADD_MSUBCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE:bb.a
  %i.i = load i32, ptr %i.h, align 8, !tbaa !470
  %.not66 = icmp eq i32 %i.i, 61
  br i1 %.not66, label %.thread, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !470
  %i.l = icmp eq i32 %i.k, 60
  br i1 %i.l, label %bb.i, label %.thread36

.thread:                                          ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.thread36

.thread36:                                        ; preds = %.thread, %bb.c
  %i.n = phi ptr [ %i.m, %.thread ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !472  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.p, align 8, !tbaa !30 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !71
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.q, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %.thread36
  %i.r = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.r, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.s = icmp sgt i32 %.344.val, 11
  %or.cond40 = select i1 %spec.select.i.i, i1 true, i1 %i.s
  br i1 %or.cond40, label %bb.i, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %.thread36
  %i.t = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.old = icmp sgt i32 %.344.val, 11
  %or.cond41 = select i1 %i.t, i1 true, i1 %.old
  br i1 %or.cond41, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %.split
  %spec.select.idx = select i1 %.not, i64 0, i64 40
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %spec.select, align 8, !tbaa !474 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %.idx = select i1 %.not, i64 40, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !488
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.v, align 8, !tbaa !1860 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.z, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.w, align 8, !tbaa !1860 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.e ], [ %.sroa.018.022.i.i, %bb.d ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !480
  %i.z = icmp ne i32 %i.y, %.sroa.8.0.copyload    ; 2 uses
  %i.aa = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %cond.i.i, label %bb.e, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.e
  %i.ab = icmp eq i32 %.214.i.i, 0
  br i1 %i.ab, label %bb.f, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !473 ; 2 uses
  %.sroa.016.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !474
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.014.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !474 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !470
  switch i32 %i.ag, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread [
    i32 227, label %.thread39
    i32 228, label %bb.g
  ]

.thread39:                                        ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !470
  %i.aj = icmp eq i32 %i.ai, 227
  br i1 %i.aj, label %bb.h, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !470
  %i.am = icmp eq i32 %i.al, 228
  br i1 %i.am, label %bb.h, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.h:                                             ; preds = %.thread39, %bb.g
  %i.an = phi i1 [ false, %.thread39 ], [ true, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !268
  store i64 %i.ap, ptr %4, align 8, !tbaa !268
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !269
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i16 7, ptr %6, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i16 7, ptr %7, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !70
  call void @_ZN4llvm12SelectionDAG11SplitScalarERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.538") align 8 %5, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  %.sroa.0.0.copyload26 = load ptr, ptr %5, align 8, !tbaa !474
  %.sroa.527.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.527.0.copyload29 = load i32, ptr %.sroa.527.0..sroa_idx28, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.030.0.copyload31 = load ptr, ptr %i.av, align 8, !tbaa !474
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.532.0.copyload34 = load i32, ptr %.sroa.532.0..sroa_idx33, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr %.sroa.0.0.copyload26, ptr %8, align 8, !tbaa !474
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.527.0.copyload29, ptr %.sroa.527.0..sroa_idx, align 8, !tbaa !72
  store ptr %.sroa.030.0.copyload31, ptr %9, align 8, !tbaa !474
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.532.0.copyload34, ptr %.sroa.532.0..sroa_idx, align 8, !tbaa !72
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 608, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 251, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #27 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.aw, 1
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !470
  %i.ay = icmp eq i32 %i.ax, 59
  %spec.select44 = select i1 %i.an, i32 599, i32 598
  %spec.select45 = select i1 %i.an, i32 605, i32 604
  %i.az = select i1 %i.ay, i32 %spec.select44, i32 %spec.select45
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !473
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ba) #27 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.bb, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.bb, 1
  store ptr %.fca.0.extract29, ptr %10, align 16
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract30, ptr %.sroa.232.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !473
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.be) #27 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.fca.0.extract25, ptr %i.bc, align 16
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract26, ptr %.sroa.228.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.fca.0.extract34, ptr %i.bg, align 16, !tbaa !474
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %.fca.1.extract35, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !72
  store ptr %10, ptr %11, align 8, !tbaa !475
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.bh, align 8, !tbaa !478
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 251, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.495") align 8 %11) #27 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.bi, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.bi, 1 ; 2 uses
  store ptr %.fca.0.extract14, ptr %12, align 8, !tbaa !474
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !72
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 601, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #27 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract14, ptr %13, align 8, !tbaa !474
  %.sroa.520.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.520.0..sroa_idx21, align 8, !tbaa !72
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 600, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #27 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bk, 1
  store ptr %.fca.0.extract7, ptr %14, align 8, !tbaa !474
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !72
  store ptr %.fca.0.extract2, ptr %15, align 8, !tbaa !474
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 57, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %.thread39, %bb.h, %bb.g, %bb.f, %bb.d, %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %.sroa.14.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.fca.1.extract, %bb.h ], [ 0, %bb.g ], [ 0, %.thread39 ], [ 0, %.lr.ph.i.i ]
  %.sroa.024.1 = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.fca.0.extract, %bb.h ], [ null, %bb.g ], [ null, %.thread39 ], [ null, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %bb.c, %bb.b, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %.sroa.14.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.14.1, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ 0, %.split ]
  %.sroa.024.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.024.1, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ null, %.split ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.024.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.14.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @_ZN4llvm12SelectionDAG11SplitScalarERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind writable sret(%"struct.std::pair.538") align 8, ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !533
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = load i32, ptr %i.a, align 8, !tbaa !533
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !533
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !533
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK4llvm13MipsSubtarget9isABI_N64Ev(ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm13MipsSubtarget9isABI_N32Ev(ptr noundef nonnull align 8 dereferenceable(536)) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, i8, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, i32) local_unnamed_addr #4

declare i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.495") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL13createStoreLRjRN4llvm12SelectionDAGEPNS_11StoreSDNodeENS_7SDValueEj(i32 noundef range(i32 618, 629) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef readonly captures(none) %2, ptr %3, i32 %4, i32 noundef range(i32 0, 8) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %11 = alloca %"class.llvm::ArrayRef.495", align 8 ; 3 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !473  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.040.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !474 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load <2 x i32>, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !488
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.f, align 8, !tbaa !30
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.040.0.copyload, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !472
  %i.i = zext i32 %.sroa.7.0.copyload to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.j, align 8, !tbaa !30 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !268
  store i64 %i.l, ptr %7, align 8, !tbaa !268
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !269
  store i32 %i.o, ptr %i.m, align 8, !tbaa !270
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #27 ; 2 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.040.0.copyload, ptr %8, align 8, !tbaa !474
  %.sroa.7.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x i32> %i.d, ptr %.sroa.7.0..sroa_idx43, align 8
  %i.q = zext nneg i32 %5 to i64
  %i.r = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.r, 1
  store ptr %.fca.0.extract7, ptr %9, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #27 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.s, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.040.0 = phi ptr [ %.sroa.040.0.copyload, %bb.a ], [ %.fca.0.extract3, %bb.b ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.a ], [ %.fca.1.extract4, %bb.b ]
  %i.t = extractvalue { ptr, i32 } %i.p, 1
  %i.u = extractvalue { ptr, i32 } %i.p, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %3, ptr %10, align 16, !tbaa !474
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %4, ptr %.sroa.237.0..sroa_idx, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !488
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.sroa.040.0, ptr %i.w, align 16, !tbaa !474
  %.sroa.7.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx45, align 8, !tbaa !72
  store ptr %10, ptr %11, align 8, !tbaa !475
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.x, align 8, !tbaa !478
  store i16 %.sroa.0.0.copyload.i, ptr %12, align 8, !tbaa !30
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %i.u, i32 %i.t, ptr noundef nonnull byval(%"class.llvm::ArrayRef.495") align 8 %11, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %12, ptr noundef %i.aa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret { ptr, i32 } %i.ab
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not14.i = icmp eq i64 %2, 0
  br i1 %.not14.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %.0613.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !28
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !72
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.0613.i, 1                      ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, !llvm.loop !1640
end_hunk_3
