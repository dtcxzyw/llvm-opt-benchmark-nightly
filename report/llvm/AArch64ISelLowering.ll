Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGE:bb.a
  br i1 %i.aea, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @free(ptr noundef %i.adz) #35
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  br label %bb.fb

bb.fb:                                            ; preds = %.thread801, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit
  %.sroa.17.10 = phi i32 [ %.sroa.17.9, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ], [ 0, %.thread801 ]
  %.sroa.0778.10 = phi ptr [ %.sroa.0778.9, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ], [ null, %.thread801 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %.thread787

.thread787:                                       ; preds = %"_ZZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEENK3$_0clENS_3EVTE.exit", %bb.e, %bb.f, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, %"_ZZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEENK3$_0clENS_3EVTE.exit.thread779", %bb.y, %bb.bi, %bb.fb, %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit
  %.sroa.17.11 = phi i32 [ 0, %bb.y ], [ %.fca.1.extract263, %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit ], [ %.sroa.17.10, %bb.fb ], [ 0, %bb.bi ], [ 0, %"_ZZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEENK3$_0clENS_3EVTE.exit.thread779" ], [ 0, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %"_ZZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEENK3$_0clENS_3EVTE.exit" ]
  %.sroa.0778.11 = phi ptr [ null, %bb.y ], [ %.fca.0.extract262, %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit ], [ %.sroa.0778.10, %bb.fb ], [ null, %bb.bi ], [ null, %"_ZZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEENK3$_0clENS_3EVTE.exit.thread779" ], [ null, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i ], [ null, %bb.f ], [ null, %bb.e ], [ null, %"_ZZNK4llvm21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEENK3$_0clENS_3EVTE.exit" ]
  %i.aeb = load ptr, ptr %21, align 8, !tbaa !62  ; 2 uses
  %i.aec = icmp eq ptr %i.aeb, %i.u
  br i1 %i.aec, label %_ZN4llvm11SmallVectorIZNKS_21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEE17ShuffleSourceInfoLj2EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %.thread787
  call void @free(ptr noundef %i.aeb) #35
  br label %_ZN4llvm11SmallVectorIZNKS_21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEE17ShuffleSourceInfoLj2EED2Ev.exit

_ZN4llvm11SmallVectorIZNKS_21AArch64TargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEE17ShuffleSourceInfoLj2EED2Ev.exit: ; preds = %.thread787, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0778.11, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.17.11, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL12getExtFactorRN4llvm7SDValueE(ptr nofree readonly captures(none) %.0.val.48.val, i32 %.8.val) unnamed_addr #4 {
bb.a:
  %0 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %1 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.a = zext i32 %.8.val to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val.48.val, i64 %i.a ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.b, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.c, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !227
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #35
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.b, %bb.c
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  store i16 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.m, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %.not.i1 = icmp eq i16 %i.k, 0
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.n = zext i16 %i.k to i64
  %i.o = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -16
  %.sroa.0.0.copyload.i.i2 = load i64, ptr %i.p, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i3 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i2, 0
  %.fca.1.insert.i.i4 = insertvalue { i64, i8 } %.fca.0.insert.i.i3, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.q = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.d, %bb.e
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i4, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %.pn.i, 1
  %i.r = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.r, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %.pn.i, 0
  %i.s = lshr i64 %.fca.0.extract, 3
  %i.t = trunc i64 %i.s to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #35
  ret i32 %i.t
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::ArrayRef.361") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21AArch64TargetLowering35LowerFixedLengthVECTOR_SHUFFLEToSVEENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %19 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %20 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %21 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %25 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %27 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %31 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %34 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %35 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %36 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %37 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %41 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %42 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %46 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %47 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %48 = alloca %"struct.llvm::EVT", align 8       ; 49 uses
  %49 = alloca %"class.llvm::SDLoc", align 8      ; 29 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 27 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 14 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %56 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.llvm::ArrayRef.463", align 8 ; 3 uses
  %63 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !379  ; 3 uses
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.h, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %48, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 19 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #35
  %.sroa.0.0.copyload.i.i569 = load i16, ptr %i.f, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i570 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i.i571 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i570, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i569, ptr %47, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %.sroa.21.0.copyload.i.i571, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847  ; 20 uses
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i569, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.m = add i16 %.sroa.0.0.copyload.i.i569, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.m, 53
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.a
  %i.n = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %47) #37
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %.split.i.i
  %i.o = zext i16 %.sroa.0.0.copyload.i.i569 to i64
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !228
  %i.s = zext i16 %i.r to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.t = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %47) #37
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, %bb.c
  %i.u = phi i32 [ %i.s, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !389
  store i64 %i.x, ptr %49, align 8, !tbaa !389
  %i.y = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !390
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !392
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  store i16 %.sroa.0.0.copyload.i.i, ptr %46, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ae, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.af = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.ag = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !227
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.aj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %46) #35
  %i.ak = extractvalue { i16, ptr } %i.aj, 0
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i:     ; preds = %bb.e, %bb.d
  %.fca.1.insert.merged.i.i = phi i16 [ %i.ai, %bb.d ], [ %i.ak, %bb.e ]
  %i.al = sext i16 %.fca.1.insert.merged.i.i to i64
  %i.am = getelementptr i8, ptr @switch.table._ZL22combineSVEReductionIntPN4llvm6SDNodeEjRNS_12SelectionDAGE, i64 %i.al
  %switch.gep = getelementptr i8, ptr %i.am, i64 -5
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16       ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  %.sroa.0484.0.copyload = load ptr, ptr %50, align 8 ; 3 uses
  %.sroa.2485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %.sroa.2485.0.copyload = load i32, ptr %.sroa.2485.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #35
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0484.0.copyload, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !389
  store i64 %i.ao, ptr %42, align 8, !tbaa !389
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0484.0.copyload, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !390
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !392
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract11.i = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract12.i = extractvalue { ptr, i32 } %i.as, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %switch.ext, ptr null) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #35
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.at, 1
  store ptr %.fca.0.extract1.i, ptr %43, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  store ptr %.sroa.0484.0.copyload, ptr %44, align 8, !tbaa !394
  %.sroa.321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.sroa.2485.0.copyload, ptr %.sroa.321.0..sroa_idx.i, align 8, !tbaa !337
  store ptr %.fca.0.extract11.i, ptr %45, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract12.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !337
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  %.fca.0.extract480 = extractvalue { ptr, i32 } %i.au, 0 ; 2 uses
  %.fca.1.extract481 = extractvalue { ptr, i32 } %i.au, 1 ; 2 uses
  store ptr %.fca.0.extract480, ptr %50, align 8
  store i32 %.fca.1.extract481, ptr %.sroa.2485.0..sroa_idx, align 8
  %.sroa.0471.0.copyload = load ptr, ptr %51, align 8 ; 3 uses
  %.sroa.2472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %.sroa.2472.0.copyload = load i32, ptr %.sroa.2472.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #35
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0471.0.copyload, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !389
  store i64 %i.aw, ptr %37, align 8, !tbaa !389
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0471.0.copyload, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !390
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !392
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract11.i574 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract12.i575 = extractvalue { ptr, i32 } %i.ba, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 %switch.ext, ptr null) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  %.fca.0.extract1.i576 = extractvalue { ptr, i32 } %i.bb, 0
  %.fca.1.extract2.i577 = extractvalue { ptr, i32 } %i.bb, 1
  store ptr %.fca.0.extract1.i576, ptr %38, align 8
  %.sroa.24.0..sroa_idx.i578 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract2.i577, ptr %.sroa.24.0..sroa_idx.i578, align 8
  store ptr %.sroa.0471.0.copyload, ptr %39, align 8, !tbaa !394
  %.sroa.321.0..sroa_idx.i579 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.sroa.2472.0.copyload, ptr %.sroa.321.0..sroa_idx.i579, align 8, !tbaa !337
  store ptr %.fca.0.extract11.i574, ptr %40, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i580 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %.fca.1.extract12.i575, ptr %.sroa.4.0..sroa_idx.i580, align 8, !tbaa !337
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  %.fca.0.extract467 = extractvalue { ptr, i32 } %i.bc, 0 ; 3 uses
  %.fca.1.extract468 = extractvalue { ptr, i32 } %i.bc, 1 ; 2 uses
  store ptr %.fca.0.extract467, ptr %51, align 8
  store i32 %.fca.1.extract468, ptr %.sroa.2472.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bd, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %35, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !847
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.bg = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i.i.i = icmp ult i16 %i.bg, 53
  br i1 %spec.select.i.i.i.i.i, label %bb.f, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i:     ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.bh = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #37
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, %.split.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i: ; preds = %.split.i.i.i
  %i.bi = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.bj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !228
  %i.bm = zext i16 %i.bl to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i
  %i.bn = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #37
  br label %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit

_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i, %bb.g
  %i.bo = phi i32 [ %i.bm, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i ], [ %i.bn, %bb.g ]
  %i.bp = zext i32 %i.bo to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  %i.bq = call noundef zeroext i1 @_ZN4llvm19ShuffleVectorSDNode11isSplatMaskENS_8ArrayRefIiEE(ptr %i.bf, i64 %i.bp) #35
  br i1 %i.bq, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #35
end_hunk_0
begin_hunk_1_@_ZNK4llvm21AArch64TargetLowering35LowerFixedLengthVECTOR_SHUFFLEToSVEENS_7SDValueERNS_12SelectionDAGE:bb.a
  %.not72.i702 = icmp eq i64 %.pre-phi.i, %i.mv
  %.3.i703 = select i1 %.not72.i702, i8 %.2.i694, i8 0
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.453.i = phi i8 [ %spec.select73.i, %bb.bn ], [ %.251.i, %bb.bm ] ; 2 uses
  %.448.i = phi i8 [ %.347.i, %bb.bn ], [ %.246.i, %bb.bm ] ; 2 uses
  %.443.i = phi i8 [ %.342.i, %bb.bn ], [ %.241.i, %bb.bm ] ; 2 uses
  %.4.i695 = phi i8 [ %.3.i703, %bb.bn ], [ %.2.i694, %bb.bm ] ; 2 uses
  %indvars.iv.next.i696 = add nuw nsw i64 %indvars.iv.i693, 2 ; 2 uses
  %.not57.i = icmp eq i64 %indvars.iv.next.i696, %i.mg
  br i1 %.not57.i, label %._crit_edge.i697, label %.lr.ph.i692, !llvm.loop !16

bb.bp:                                            ; preds = %._crit_edge.i697
  %i.mw = trunc nuw i8 %.049.lcssa.i to i1        ; 2 uses
  %i.mx = icmp eq i8 %.039.lcssa.i, 1
  %i.my = or i1 %i.mx, %i.mw
  %i.mz = select i1 %i.my, i32 844, i32 845
  %i.na = icmp eq i8 %.044.lcssa.i, 1
  %i.nb = or i1 %i.na, %i.mw                      ; 2 uses
  %.7 = select i1 %i.nb, ptr %50, ptr %51
  %i.nc = select i1 %i.nb, ptr %51, ptr %50
  %i.nd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %.7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.nc) #35 ; 2 uses
  %.fca.0.extract227 = extractvalue { ptr, i32 } %i.nd, 0 ; 3 uses
  %.fca.1.extract228 = extractvalue { ptr, i32 } %i.nd, 1
  %.sroa.0224.0.copyload = load i16, ptr %48, align 8, !tbaa !227
  %.sroa.2226.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.ne = getelementptr inbounds nuw i8, ptr %.fca.0.extract227, i64 72
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !389
  store i64 %i.nf, ptr %9, align 8, !tbaa !389
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.fca.0.extract227, i64 68
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !390
  store i32 %i.ni, ptr %i.ng, align 8, !tbaa !392
  %i.nj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract4.i707 = extractvalue { ptr, i32 } %i.nj, 0
  %.fca.1.extract5.i708 = extractvalue { ptr, i32 } %i.nj, 1
  store ptr %.fca.0.extract227, ptr %10, align 8, !tbaa !394
  %.sroa.313.0..sroa_idx.i709 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract228, ptr %.sroa.313.0..sroa_idx.i709, align 8, !tbaa !337
  store ptr %.fca.0.extract4.i707, ptr %11, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i710 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract5.i708, ptr %.sroa.4.0..sroa_idx.i710, align 8, !tbaa !337
  %i.nk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0224.0.copyload, ptr %.sroa.2226.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.fca.0.extract217 = extractvalue { ptr, i32 } %i.nk, 0
  %.fca.1.extract218 = extractvalue { ptr, i32 } %i.nk, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.bq:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit688, %._crit_edge.i697
  %.sroa.2214.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i16 %i.fy, ptr %8, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.2214.0.copyload, ptr %i.nl, align 8
  br i1 %.not.i.i617, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i720, label %.split.i.i712

.split.i.i712:                                    ; preds = %bb.bq
  br i1 %spec.select.i.i.i619, label %bb.br, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i714

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i720:    ; preds = %bb.bq
  %i.nm = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br i1 %i.nm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i720, %.split.i.i712
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i714: ; preds = %.split.i.i712
  %i.nn = load i16, ptr %i.gc, align 2, !tbaa !228
  %i.no = zext i16 %i.nn to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i

bb.bs:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i720
  %i.np = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i:     ; preds = %bb.bs, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i714
  %i.nq = phi i32 [ %i.no, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i714 ], [ %i.np, %bb.bs ] ; 4 uses
  %i.nr = and i32 %i.nq, 1
  %.not.i715 = icmp eq i32 %i.nr, 0
  br i1 %.not.i715, label %bb.bt, label %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.bt:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i
  %i.ns = icmp ne i32 %i.gi, 0                    ; 3 uses
  %i.nt = zext i1 %i.ns to i32
  store i32 %i.nt, ptr %i.c, align 4, !tbaa !337
  %.not1826.i = icmp eq i32 %i.nq, 0
  br i1 %.not1826.i, label %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, label %.lr.ph.preheader.i717

.lr.ph.preheader.i717:                            ; preds = %bb.bt
  %i.nu = lshr exact i32 %i.nq, 1
  %i.nv = select i1 %i.ns, i32 %i.nu, i32 0
  br label %.lr.ph.i718

.lr.ph.i718:                                      ; preds = %bb.bv, %.lr.ph.preheader.i717
  %.028.i = phi i32 [ %i.og, %bb.bv ], [ 0, %.lr.ph.preheader.i717 ] ; 3 uses
  %.01527.i = phi i32 [ %i.of, %bb.bv ], [ %i.nv, %.lr.ph.preheader.i717 ] ; 3 uses
  %i.nw = zext i32 %.028.i to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !337 ; 2 uses
  %i.nz = icmp slt i32 %i.ny, 0
  %.not19.i = icmp eq i32 %i.ny, %.01527.i
  %or.cond.i719 = select i1 %i.nz, i1 true, i1 %.not19.i
  br i1 %or.cond.i719, label %bb.bu, label %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.bu:                                            ; preds = %.lr.ph.i718
  %i.oa = or disjoint i32 %.028.i, 1
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !337 ; 2 uses
  %i.oe = icmp slt i32 %i.od, 0
  %.not20.i = icmp eq i32 %i.od, %.01527.i
  %or.cond25.i = select i1 %i.oe, i1 true, i1 %.not20.i
  br i1 %or.cond25.i, label %bb.bv, label %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.bv:                                            ; preds = %bb.bu
  %i.of = add i32 %.01527.i, 1
  %i.og = add i32 %.028.i, 2                      ; 2 uses
  %.not18.i = icmp eq i32 %i.og, %i.nq
  br i1 %.not18.i, label %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, label %.lr.ph.i718, !llvm.loop !17

_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread: ; preds = %.lr.ph.i718, %bb.bu, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.bx

_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %bb.bv, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.ns, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  %i.oh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 892, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #35 ; 2 uses
  %.fca.0.extract200 = extractvalue { ptr, i32 } %i.oh, 0 ; 3 uses
  %.fca.1.extract201 = extractvalue { ptr, i32 } %i.oh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.oi = getelementptr inbounds nuw i8, ptr %.fca.0.extract200, i64 72
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !389
  store i64 %i.oj, ptr %5, align 8, !tbaa !389
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %.fca.0.extract200, i64 68
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !390
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !392
  %i.on = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract4.i721 = extractvalue { ptr, i32 } %i.on, 0
  %.fca.1.extract5.i722 = extractvalue { ptr, i32 } %i.on, 1
  store ptr %.fca.0.extract200, ptr %6, align 8, !tbaa !394
  %.sroa.313.0..sroa_idx.i723 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract201, ptr %.sroa.313.0..sroa_idx.i723, align 8, !tbaa !337
  store ptr %.fca.0.extract4.i721, ptr %7, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i724 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract5.i722, ptr %.sroa.4.0..sroa_idx.i724, align 8, !tbaa !337
  %i.oo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.fy, ptr %.sroa.2214.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract196 = extractvalue { ptr, i32 } %i.oo, 0
  %.fca.1.extract197 = extractvalue { ptr, i32 } %i.oo, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.bx:                                            ; preds = %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, %_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i16 %i.fy, ptr %4, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2214.0.copyload, ptr %i.op, align 8
  br i1 %.not.i.i617, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i734, label %.split.i.i726

.split.i.i726:                                    ; preds = %bb.bx
  br i1 %spec.select.i.i.i619, label %bb.by, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i728

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i734:    ; preds = %bb.bx
  %i.oq = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.oq, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i734, %.split.i.i726
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i728: ; preds = %.split.i.i726
  %i.or = load i16, ptr %i.gc, align 2, !tbaa !228
  %i.os = zext i16 %i.or to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i729

bb.bz:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i734
  %i.ot = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i729

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i729:  ; preds = %bb.bz, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i728
  %i.ou = phi i32 [ %i.os, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i728 ], [ %i.ot, %bb.bz ] ; 3 uses
  %i.ov = and i32 %i.ou, 1
  %.not.i730 = icmp eq i32 %i.ov, 0
  br i1 %.not.i730, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i729
  %i.ow = icmp ne i32 %i.gi, 0                    ; 2 uses
  %i.ox = zext i1 %i.ow to i32                    ; 2 uses
  store i32 %i.ox, ptr %i.c, align 4, !tbaa !337
  %.not1824.i = icmp eq i32 %i.ou, 0
  br i1 %.not1824.i, label %.loopexit803, label %.lr.ph.i732

bb.cb:                                            ; preds = %bb.cc
  %64 = add i32 %.025.i, 2                        ; 2 uses
  %.not18.not.i = icmp ult i32 %64, %i.ou
  br i1 %.not18.not.i, label %.lr.ph.i732, label %.loopexit803, !llvm.loop !18

.lr.ph.i732:                                      ; preds = %bb.ca, %bb.cb
  %.025.i = phi i32 [ %64, %bb.cb ], [ 0, %bb.ca ] ; 4 uses
  %65 = zext i32 %.025.i to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %65
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !337 ; 2 uses
  %i.pa = icmp slt i32 %i.oz, 0
  %66 = or disjoint i32 %.025.i, %i.ox            ; 2 uses
  %.not16.i = icmp eq i32 %i.oz, %66
  %or.cond.i733 = select i1 %i.pa, i1 true, i1 %.not16.i
  br i1 %or.cond.i733, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %.lr.ph.i732
  %67 = or disjoint i32 %.025.i, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !337    ; 2 uses
  %71 = icmp slt i32 %70, 0
  %.not17.i = icmp eq i32 %70, %66
  %or.cond23.i = select i1 %71, i1 true, i1 %.not17.i
  br i1 %or.cond23.i, label %bb.cb, label %.loopexit

.loopexit803:                                     ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.pb = select i1 %i.ow, i32 845, i32 844
  %i.pc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.pb, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #35 ; 2 uses
  %.fca.0.extract178 = extractvalue { ptr, i32 } %i.pc, 0
  %.fca.1.extract179 = extractvalue { ptr, i32 } %i.pc, 1
  %i.pd = call fastcc { ptr, i32 } @_ZL25convertFromScalableVectorRN4llvm12SelectionDAGENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.fy, ptr %.sroa.2214.0.copyload, ptr %.fca.0.extract178, i32 %.fca.1.extract179) ; 2 uses
  %.fca.0.extract174 = extractvalue { ptr, i32 } %i.pd, 0
  %.fca.1.extract175 = extractvalue { ptr, i32 } %i.pd, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

.loopexit:                                        ; preds = %.lr.ph.i732, %bb.cc, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.iv, i64 876
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !225 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.iv, i64 880
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !747
  %i.pi = icmp eq i32 %i.pf, %i.ph
  br i1 %i.pi, label %bb.cd, label %.critedge

bb.cd:                                            ; preds = %.loopexit
  %i.pj = zext i32 %i.pf to i64
  br i1 %.not.i.i617, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ga ; 2 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 -16
  %.sroa.0.0.copyload.i.i736 = load i64, ptr %i.pl, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.pk, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i737 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i736, 0
  %.fca.1.insert.i.i738 = insertvalue { i64, i8 } %.fca.0.insert.i.i737, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.cf:                                            ; preds = %bb.cd
  %i.pm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.ce, %bb.cf
  %.pn.i739 = phi { i64, i8 } [ %.fca.1.insert.i.i738, %bb.ce ], [ %i.pm, %bb.cf ] ; 2 uses
  %.fca.1.extract167 = extractvalue { i64, i8 } %.pn.i739, 1
  %i.pn = trunc nuw i8 %.fca.1.extract167 to i1
  br i1 %i.pn, label %bb.cg, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.cg:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract166 = extractvalue { i64, i8 } %.pn.i739, 0
  %i.po = icmp eq i64 %.fca.0.extract166, %i.pj
  br i1 %i.po, label %bb.ch, label %.critedge

bb.ch:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.pp = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst13isReverseMaskENS_8ArrayRefIiEEi(ptr nonnull %i.l, i64 %i.v, i32 noundef %i.u) #35
  br i1 %i.pp, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.pq = getelementptr inbounds nuw i8, ptr %.fca.0.extract467, i64 24
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !383
  %i.ps = add i32 %i.pr, -53
  %spec.select.i.i = icmp ult i32 %i.ps, 2
  br i1 %spec.select.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.pt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 170, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #35 ; 2 uses
  %.fca.0.extract154 = extractvalue { ptr, i32 } %i.pt, 0
  %.fca.1.extract155 = extractvalue { ptr, i32 } %i.pt, 1
  %.sroa.0151.0.copyload = load i16, ptr %48, align 8, !tbaa !227
  %.sroa.2153.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.pu = call fastcc { ptr, i32 } @_ZL25convertFromScalableVectorRN4llvm12SelectionDAGENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0151.0.copyload, ptr %.sroa.2153.0.copyload, ptr %.fca.0.extract154, i32 %.fca.1.extract155) ; 2 uses
  %.fca.0.extract144 = extractvalue { ptr, i32 } %i.pu, 0
  %.fca.1.extract145 = extractvalue { ptr, i32 } %i.pu, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %i.pv = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %48)
  %i.pw = call noundef zeroext i1 @_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_(ptr nonnull %i.l, i64 %i.v, i32 noundef %i.pv, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.px = load i32, ptr %i.c, align 4
  %i.py = icmp ne i32 %i.px, 0
  %or.cond11 = select i1 %i.pw, i1 %i.py, i1 false
  br i1 %or.cond11, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pz = load i32, ptr %i.d, align 4, !tbaa !337
  %i.qa = icmp eq i32 %i.pz, 0                    ; 2 uses
  %.12 = select i1 %i.qa, ptr %50, ptr %51
  %i.qb = select i1 %i.qa, ptr %51, ptr %50
  %i.qc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 893, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %.12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.qb) #35 ; 2 uses
  %.fca.0.extract133 = extractvalue { ptr, i32 } %i.qc, 0
  %.fca.1.extract134 = extractvalue { ptr, i32 } %i.qc, 1
  %.sroa.0130.0.copyload = load i16, ptr %48, align 8, !tbaa !227
  %.sroa.2132.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.qd = call fastcc { ptr, i32 } @_ZL25convertFromScalableVectorRN4llvm12SelectionDAGENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0130.0.copyload, ptr %.sroa.2132.0.copyload, ptr %.fca.0.extract133, i32 %.fca.1.extract134) ; 2 uses
  %.fca.0.extract123 = extractvalue { ptr, i32 } %i.qd, 0
  %.fca.1.extract124 = extractvalue { ptr, i32 } %i.qd, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.cm:                                            ; preds = %bb.ck
  %i.qe = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %48)
  %i.qf = call noundef zeroext i1 @_ZN4llvm9isUZPMaskENS_8ArrayRefIiEEjRj(ptr nonnull %i.l, i64 %i.v, i32 noundef %i.qe, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.qf, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.qg = load i32, ptr %i.c, align 4, !tbaa !337
  %i.qh = icmp eq i32 %i.qg, 0
  %i.qi = select i1 %i.qh, i32 875, i32 876
  %.sroa.0117.0.copyload = load i16, ptr %48, align 8, !tbaa !227
  %.sroa.2119.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.qj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.qi, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %51) #35 ; 2 uses
  %.fca.0.extract108 = extractvalue { ptr, i32 } %i.qj, 0
  %.fca.1.extract109 = extractvalue { ptr, i32 } %i.qj, 1
  %i.qk = call fastcc { ptr, i32 } @_ZL25convertFromScalableVectorRN4llvm12SelectionDAGENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0117.0.copyload, ptr %.sroa.2119.0.copyload, ptr %.fca.0.extract108, i32 %.fca.1.extract109) ; 2 uses
  %.fca.0.extract104 = extractvalue { ptr, i32 } %i.qk, 0
  %.fca.1.extract105 = extractvalue { ptr, i32 } %i.qk, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.co:                                            ; preds = %bb.cm
  %.sroa.099.0.copyload = load i16, ptr %48, align 8, !tbaa !227
  %.sroa.2101.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.ql = call fastcc noundef zeroext i1 @_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nonnull %i.l, i16 %.sroa.099.0.copyload, ptr %.sroa.2101.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.qm = load i32, ptr %i.c, align 4
  %i.qn = icmp ne i32 %i.qm, 0
  %or.cond14 = select i1 %i.ql, i1 %i.qn, i1 false
  %.sroa.096.0.copyload = load i16, ptr %48, align 8, !tbaa !227 ; 2 uses
  %.sroa.298.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380 ; 2 uses
  br i1 %or.cond14, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 893, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #35 ; 2 uses
  %.fca.0.extract87 = extractvalue { ptr, i32 } %i.qo, 0
  %.fca.1.extract88 = extractvalue { ptr, i32 } %i.qo, 1
  %i.qp = call fastcc { ptr, i32 } @_ZL25convertFromScalableVectorRN4llvm12SelectionDAGENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.096.0.copyload, ptr %.sroa.298.0.copyload, ptr %.fca.0.extract87, i32 %.fca.1.extract88) ; 2 uses
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.qp, 0
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.qp, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.cq:                                            ; preds = %bb.co
  %i.qq = call fastcc noundef zeroext i1 @_ZL18isUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nonnull %i.l, i16 %.sroa.096.0.copyload, ptr %.sroa.298.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.qq, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.qr = load i32, ptr %i.c, align 4, !tbaa !337
  %i.qs = icmp eq i32 %i.qr, 0
  %i.qt = select i1 %i.qs, i32 875, i32 876
  %.sroa.074.0.copyload = load i16, ptr %48, align 8, !tbaa !227
  %.sroa.276.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.qu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.qt, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #35 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.qu, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.qu, 1
  %i.qv = call fastcc { ptr, i32 } @_ZL25convertFromScalableVectorRN4llvm12SelectionDAGENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.074.0.copyload, ptr %.sroa.276.0.copyload, ptr %.fca.0.extract65, i32 %.fca.1.extract66) ; 2 uses
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.qv, 0
  %.fca.1.extract62 = extractvalue { ptr, i32 } %i.qv, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.cs:                                            ; preds = %bb.cq
  %i.qw = load ptr, ptr %i.iu, align 8, !tbaa !94 ; 5 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 519
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !350, !range !58, !noundef !59
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 490
  %i.rb = load i8, ptr %i.ra, align 2, !tbaa !1908, !range !58, !noundef !59
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.cu, label %.critedge

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 513
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !224, !range !58, !noundef !59
  %i.rf = trunc nuw i8 %i.re to i1
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qw, i64 488
  %i.rh = load i8, ptr %i.rg, align 8, !range !58
  %i.ri = trunc nuw i8 %i.rh to i1
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qw, i64 865
  %i.rk = load i8, ptr %i.rj, align 1, !range !58
  %i.rl = trunc nuw i8 %i.rk to i1
  %i.rm = select i1 %i.ri, i1 %i.rl, i1 false
  %i.rn = select i1 %i.rf, i1 true, i1 %i.rm
  br i1 %i.rn, label %bb.cv, label %.critedge

bb.cv:                                            ; preds = %bb.cu
  %i.ro = load i16, ptr %48, align 8, !tbaa !361  ; 2 uses
  %.not.i.i740 = icmp eq i16 %i.ro, 0
  br i1 %.not.i.i740, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rp = zext i16 %i.ro to i64
  %i.rq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.rp
  %i.rr = getelementptr i8, ptr %i.rq, i64 -16
  %.sroa.0.0.copyload.i.i.i741 = load i64, ptr %i.rr, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

bb.cx:                                            ; preds = %bb.cv
  %i.rs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  %i.rt = extractvalue { i64, i8 } %i.rs, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit
end_hunk_1
begin_hunk_2_@_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj:bb.a
bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !228
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 4 uses
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.l = load i32, ptr %0, align 4, !tbaa !337
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i32
  store i32 %i.n, ptr %3, align 4, !tbaa !337
  %.not1826 = icmp eq i32 %i.j, 0
  br i1 %.not1826, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = lshr exact i32 %i.j, 1
  %i.p = select i1 %i.m, i32 %i.o, i32 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.028 = phi i32 [ %i.aa, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.01527 = phi i32 [ %i.z, %bb.f ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %i.q = zext i32 %.028 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !337  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %.not19 = icmp eq i32 %i.s, %.01527
  %or.cond = select i1 %i.t, i1 true, i1 %.not19
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.u = or disjoint i32 %.028, 1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !337  ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  %.not20 = icmp eq i32 %i.x, %.01527
  %or.cond25 = select i1 %i.y, i1 true, i1 %.not20
  br i1 %or.cond25, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = add i32 %.01527, 1
  %i.aa = add i32 %.028, 2                        ; 2 uses
  %.not18 = icmp eq i32 %i.aa, %i.j
  br i1 %.not18, label %.critedge, label %.lr.ph, !llvm.loop !17

.critedge:                                        ; preds = %bb.f, %.lr.ph, %bb.e, %bb.d, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.2 = phi i1 [ false, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ true, %bb.d ], [ true, %bb.f ], [ false, %.lr.ph ], [ false, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18isUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nofree readonly captures(none) %0, i16 %1, ptr %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !228
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ]
  %i.k = lshr i32 %i.j, 1                         ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !337
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32                      ; 3 uses
  store i32 %i.n, ptr %3, align 4, !tbaa !337
  %.not3039 = icmp eq i32 %i.k, 0
  br i1 %.not3039, label %.critedge33, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.o = zext nneg i32 %i.k to i64                ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02140 = phi i32 [ %i.n, %.preheader.preheader ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !337  ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %.not31 = icmp eq i32 %i.q, %.02140
  %or.cond = select i1 %i.r, i1 true, i1 %.not31
  br i1 %or.cond, label %bb.e, label %.critedge33

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw i32 %.02140, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not30 = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %.not30, label %..critedge_crit_edge, label %bb.d, !llvm.loop !1940

..critedge_crit_edge:                             ; preds = %bb.e
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %..critedge_crit_edge
  %indvars.iv.1 = phi i64 [ 0, %..critedge_crit_edge ], [ %indvars.iv.next.1, %bb.g ] ; 2 uses
  %.02140.1 = phi i32 [ %i.n, %..critedge_crit_edge ], [ %i.v, %bb.g ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.1
  %i.t = load i32, ptr %gep, align 4, !tbaa !337  ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %.not31.1 = icmp eq i32 %i.t, %.02140.1
  %or.cond.1 = select i1 %i.u, i1 true, i1 %.not31.1 ; 3 uses
  br i1 %or.cond.1, label %bb.g, label %.critedge33

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %.02140.1, 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %.not30.1 = icmp eq i64 %indvars.iv.next.1, %i.o
  br i1 %.not30.1, label %.critedge33, label %bb.f, !llvm.loop !1940

.critedge33:                                      ; preds = %bb.d, %bb.f, %bb.g, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not38 = phi i1 [ true, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %or.cond.1, %bb.f ], [ %or.cond.1, %bb.g ], [ false, %bb.d ]
  ret i1 %.not38
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18isTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nofree readonly captures(none) %0, i16 %1, ptr %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !228
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.l = load i32, ptr %0, align 4, !tbaa !337
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32                      ; 2 uses
  store i32 %i.n, ptr %3, align 4, !tbaa !337
  %.not1824 = icmp eq i32 %i.j, 0
  br i1 %.not1824, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %5 = add i32 %.025, 2                           ; 2 uses
  %.not18.not = icmp ult i32 %5, %i.j
  br i1 %.not18.not, label %.lr.ph, label %.loopexit, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.025 = phi i32 [ %5, %bb.e ], [ 0, %bb.d ]     ; 4 uses
  %6 = zext i32 %.025 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %i.p = load i32, ptr %i.o, align 4, !tbaa !337  ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %7 = or disjoint i32 %.025, %i.n                ; 2 uses
  %.not16 = icmp eq i32 %i.p, %7
  %or.cond = select i1 %i.q, i1 true, i1 %.not16
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %8 = or disjoint i32 %.025, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !337    ; 2 uses
  %12 = icmp slt i32 %11, 0
  %.not17 = icmp eq i32 %11, %7
  %or.cond23 = select i1 %12, i1 true, i1 %.not17
  br i1 %or.cond23, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %bb.e, %bb.d, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.1 = phi i1 [ false, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ true, %bb.d ], [ false, %.lr.ph ], [ false, %bb.f ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL24tryFormConcatFromShuffleN4llvm7SDValueERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(920) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 10 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !389
  store i64 %i.b, ptr %6, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !390
  store i32 %i.e, ptr %i.c, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !379  ; 3 uses
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !384  ; 6 uses
  %.sroa.0120.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !394 ; 3 uses
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8124.0.copyload = load i32, ptr %.sroa.8124.0..sroa_idx, align 8, !tbaa !337 ; 3 uses
  %.sroa.11130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.11130.0.copyload = load i32, ptr %.sroa.11130.0..sroa_idx, align 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.0107.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !394 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !337 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %.sroa.0.0.copyload.i.i60 = load i16, ptr %i.g, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i62 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i61, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i60, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i62, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !847
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i60, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.q = add i16 %.sroa.0.0.copyload.i.i60, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.q, 53
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.a
  %i.r = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br i1 %i.r, label %bb.b, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.s = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !227
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.y = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #35
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.x, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.aa = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0120.0.copyload, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !379
  %i.ad = zext i32 %.sroa.8124.0.copyload to i64  ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i.i63 = load i16, ptr %i.ae, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i64 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.21.0.copyload.i.i65 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i64, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i63, ptr %8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i65, ptr %i.af, align 8
  %.not.i68 = icmp eq i16 %.sroa.0.0.copyload.i.i63, 0
  br i1 %.not.i68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.ag = zext i16 %.sroa.0.0.copyload.i.i63 to i64
  %i.ah = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !227
  %i.ak = insertvalue { i16, ptr } poison, i16 %i.aj, 0
  %i.al = insertvalue { i16, ptr } %i.ak, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit70

bb.f:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.am = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #35
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit70

_ZNK4llvm3EVT20getVectorElementTypeEv.exit70:     ; preds = %bb.e, %bb.f
  %.fca.1.insert.merged.i69 = phi { i16, ptr } [ %i.al, %bb.e ], [ %i.am, %bb.f ] ; 2 uses
  %i.an = extractvalue { i16, ptr } %.fca.1.insert.merged.i69, 0
  %i.ao = extractvalue { i16, ptr } %.fca.1.insert.merged.i69, 1
  %.not.i71 = icmp ne i16 %i.z, %i.an
  %i.ap = icmp ne ptr %i.aa, %i.ao
  %i.aq = select i1 %.not.i71, i1 true, i1 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  br i1 %i.aq, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit70
  %i.ar = load i16, ptr %7, align 8, !tbaa !361   ; 2 uses
  %.not.i72 = icmp eq i16 %i.ar, 0
  br i1 %.not.i72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !227
  %i.aw = insertvalue { i16, ptr } poison, i16 %i.av, 0
  %i.ax = insertvalue { i16, ptr } %i.aw, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit74

bb.i:                                             ; preds = %bb.g
  %i.ay = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #35
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit74

_ZNK4llvm3EVT20getVectorElementTypeEv.exit74:     ; preds = %bb.h, %bb.i
  %.fca.1.insert.merged.i73 = phi { i16, ptr } [ %i.ax, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %i.az = extractvalue { i16, ptr } %.fca.1.insert.merged.i73, 0
  %i.ba = extractvalue { i16, ptr } %.fca.1.insert.merged.i73, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.copyload, i64 48 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !379
  %i.bd = zext i32 %.sroa.8.0.copyload to i64     ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %.sroa.0.0.copyload.i.i75 = load i16, ptr %i.be, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.21.0.copyload.i.i77 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i76, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i75, ptr %9, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.21.0.copyload.i.i77, ptr %i.bf, align 8
  %.not.i80 = icmp eq i16 %.sroa.0.0.copyload.i.i75, 0
  br i1 %.not.i80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit74
  %i.bg = zext i16 %.sroa.0.0.copyload.i.i75 to i64
  %i.bh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !227
  %i.bk = insertvalue { i16, ptr } poison, i16 %i.bj, 0
  %i.bl = insertvalue { i16, ptr } %i.bk, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit82

bb.k:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit74
  %i.bm = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #35
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit82

_ZNK4llvm3EVT20getVectorElementTypeEv.exit82:     ; preds = %bb.j, %bb.k
  %.fca.1.insert.merged.i81 = phi { i16, ptr } [ %i.bl, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bn = extractvalue { i16, ptr } %.fca.1.insert.merged.i81, 0
  %i.bo = extractvalue { i16, ptr } %.fca.1.insert.merged.i81, 1
  %.not.i83 = icmp ne i16 %i.az, %i.bn
  %i.bp = icmp ne ptr %i.ba, %i.bo
  %i.bq = select i1 %.not.i83, i1 true, i1 %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %i.bq, label %bb.x, label %bb.l

.critedge:                                        ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit70
end_hunk_2
