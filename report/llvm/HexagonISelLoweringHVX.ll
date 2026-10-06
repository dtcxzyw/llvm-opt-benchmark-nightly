Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering12WidenHvxLoadENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.bl, ptr null, ptr nonnull %.fca.0.extract15, i32 %.fca.1.extract16) #20 ; 2 uses
  %.pre = extractvalue { ptr, i32 } %i.bm, 0
  %.pre117 = extractvalue { ptr, i32 } %i.bm, 1
  br label %_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit.i
  %.fca.1.extract8.pre-phi = phi i32 [ %.fca.1.extract16, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.pre117, %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit.i ]
  %.fca.0.extract7.pre-phi = phi ptr [ %.fca.0.extract15, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.pre, %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %.fca.0.extract7.pre-phi, ptr %14, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract8.pre-phi, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.fca.0.extract15, ptr %i.bn, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %14, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13WidenHvxStoreENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %9 = alloca %"struct.std::pair.105", align 8    ; 7 uses
  %10 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !316
  store i64 %i.b, ptr %7, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !317
  store i32 %i.e, ptr %i.c, align 8, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 3 uses
  %.sroa.064.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !202
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.465.0.copyload = load i32, ptr %.sroa.465.0..sroa_idx, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.i = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.054.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !202 ; 3 uses
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.255.0.copyload = load i32, ptr %.sroa.255.0..sroa_idx, align 8, !tbaa !152 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !196
  %i.n = zext i32 %.sroa.255.0.copyload to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.o, align 8, !tbaa !149
  %i.p = zext i16 %.sroa.0.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.q = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !149
  %i.t = icmp eq i16 %i.s, 5
  br i1 %i.t, label %bb.b, label %_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.u = insertvalue { ptr, i32 } poison, ptr %.sroa.054.0.copyload, 0
  %i.v = insertvalue { ptr, i32 } %i.u, i32 %.sroa.255.0.copyload, 1
  br label %_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit

_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i.i:    ; preds = %bb.a
  %i.w = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.w, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.x = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.x, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.c:                                             ; preds = %_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 -16
  %.sroa.0.0.copyload.i.i13.i = load i64, ptr %i.y, align 16
  %i.z = trunc i64 %.sroa.0.0.copyload.i.i13.i to i32
  %i.aa = lshr i32 %i.z, 3
  switch i32 %i.aa, label %bb.d [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split115
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split116
    i32 5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split117
    i32 6, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split118
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split119
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split120
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split121
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split122
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split123
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split124
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split125
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split126
    i32 1024, label %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split127
  ]

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split115: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split116: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split117: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split118: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split119: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split120: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split121: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split122: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split123: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split124: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split125: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split126: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split127: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit100

_ZN4llvm3MVT11getVectorVTES0_j.exit100:           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split127, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split126, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split125, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split124, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split123, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split122, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split121, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split120, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split119, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split118, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split117, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split116, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split115, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split, %bb.d
  %.sroa.0.0.i99 = phi i16 [ 0, %bb.d ], [ 48, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split121 ], [ 49, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split122 ], [ 50, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split123 ], [ 51, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split124 ], [ 52, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split125 ], [ 53, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split126 ], [ 40, %_ZNK4llvm8TypeSizecvmEv.exit.i.i ], [ 47, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split120 ], [ 41, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split ], [ 42, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split115 ], [ 43, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split116 ], [ 44, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split117 ], [ 45, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split118 ], [ 46, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split119 ], [ 54, %_ZN4llvm3MVT11getVectorVTES0_j.exit100.fold.split127 ]
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.i99, ptr null, ptr nonnull %.sroa.054.0.copyload, i32 %.sroa.255.0.copyload) #20
  br label %_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit: ; preds = %bb.b, %_ZN4llvm3MVT11getVectorVTES0_j.exit100
  %.fca.1.insert.merged.i = phi { ptr, i32 } [ %i.v, %bb.b ], [ %i.ab, %_ZN4llvm3MVT11getVectorVTES0_j.exit100 ] ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 0 ; 3 uses
  %.fca.1.extract51 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.fca.0.extract50, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !196
  %i.ae = zext i32 %.fca.1.extract51 to i64       ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ae
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.af, align 8, !tbaa !149 ; 3 uses
  %i.ag = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.ag, 53
  br i1 %spec.select.i.i, label %bb.e, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm21HexagonTargetLowering10opCastElemENS_7SDValueENS_3MVTERNS_12SelectionDAGE.exit
  %i.ah = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ai = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !151 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57, !nonnull !21, !align !58 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !143
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 344
  %i.ar = load i8, ptr %i.aq, align 8, !range !20
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.ap, i1 %i.as, i1 false     ; 2 uses
  %spec.select.i = select i1 %i.at, i32 64, i32 128 ; 3 uses
  %.0134 = zext i16 %i.ak to i32
  %i.au = icmp samesign ugt i32 %spec.select.i, %.0134
  br i1 %i.au, label %.lr.ph, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

.lr.ph:                                           ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.f

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %.pre-phi = phi i64 [ %i.ae, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %i.cq, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97 ]
  %.sroa.0111.0.lcssa = phi ptr [ %.fca.0.extract50, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.fca.0.extract27, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97 ] ; 2 uses
  %.sroa.8.0.lcssa = phi i32 [ %.fca.1.extract51, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.fca.1.extract28, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97 ]
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.i, 1
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.i, 0
  %spec.select = select i1 %i.at, i16 29, i16 30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.aw = zext i16 %i.ak to i64
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ax, 1
  store ptr %.fca.0.extract15, ptr %10, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.218.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %10, ptr %5, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !395
  %i.ay = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2668, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %spec.select, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !389
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = zext nneg i32 %spec.select.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 31
  %i.bg = or disjoint i64 %i.bf, 1152921504606846976
  %i.bh = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.ba, ptr noundef %i.bd, i64 noundef 0, i64 %i.bg) #20
  store ptr %.fca.0.extract57, ptr %11, align 8, !tbaa !202
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract58, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !152
  store ptr %i.ay, ptr %12, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0111.0.lcssa, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !196
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.pre-phi
  %.sroa.0.0.copyload.i.i.i92 = load i16, ptr %i.bk, align 8, !tbaa !149
  store i16 %.sroa.0.0.copyload.i.i.i92, ptr %13, align 8, !tbaa !149
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !206
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMaskedStoreENS_7SDValueERKNS_5SDLocES1_S1_S1_S1_NS_3EVTEPNS_17MachineMemOperandENS_3ISD14MemIndexedModeEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.064.0.copyload, i32 %.sroa.465.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr nonnull %.sroa.0111.0.lcssa, i32 %.sroa.8.0.lcssa, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %13, ptr noundef %i.bh, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret { ptr, i32 } %i.bm

bb.f:                                             ; preds = %.lr.ph, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97
  %.sroa.0.0.copyload.i.i.i93 = phi i16 [ %.sroa.0.0.copyload.i.i.i, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i95, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97 ]
  %.sroa.8.0136 = phi i32 [ %.fca.1.extract51, %.lr.ph ], [ %.fca.1.extract28, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97 ] ; 2 uses
  %.sroa.0111.0135 = phi ptr [ %.fca.0.extract50, %.lr.ph ], [ %.fca.0.extract27, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0111.0135, i64 48
  %i.bo = zext i32 %.sroa.8.0136 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i93, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.bp, 0 ; 2 uses
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.bp, 1 ; 2 uses
  store ptr %.sroa.0111.0135, ptr %9, align 8, !tbaa !202
  store i32 %.sroa.8.0136, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !152
  store ptr %.fca.0.extract31, ptr %i.av, align 8, !tbaa !202
  store i32 %.fca.1.extract32, ptr %.sroa.4.0..sroa_idx108, align 8, !tbaa !152
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !196
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  %.sroa.0.0.copyload.i.i.i.i94 = load i16, ptr %i.br, align 8, !tbaa !149 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.fca.0.extract31, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !196
  %i.bu = zext i32 %.fca.1.extract32 to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu
  %.sroa.0.0.copyload.i.i2.i.i = load i16, ptr %i.bv, align 8, !tbaa !149 ; 2 uses
  %i.bw = zext i16 %.sroa.0.0.copyload.i.i.i.i94 to i64 ; 2 uses
  %i.bx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !149
  %i.ca = add i16 %.sroa.0.0.copyload.i.i.i.i94, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.ca, 53
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %bb.f
  %i.cb = add i16 %.sroa.0.0.copyload.i.i2.i.i, -163
  %spec.select.i.i5.i.i = icmp ult i16 %i.cb, 53
  br i1 %spec.select.i.i5.i.i, label %bb.h, label %_ZNK4llvm21HexagonTargetLowering6opJoinERKSt4pairINS_7SDValueES2_ERKNS_5SDLocERNS_12SelectionDAGE.exit

bb.h:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm21HexagonTargetLowering6opJoinERKSt4pairINS_7SDValueES2_ERKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.cc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bw
  %i.cd = getelementptr i8, ptr %i.cc, i64 -2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !151
  %i.cf = zext i16 %i.ce to i32
  %i.cg = zext i16 %.sroa.0.0.copyload.i.i2.i.i to i64
  %i.ch = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !151
  %i.ck = zext i16 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ck, %i.cf
  %i.cm = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.bz, i32 noundef %i.cl)
  %i.cn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.cm, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.av) #20 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.cn, 0 ; 3 uses
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.cn, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.co = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !196
  %i.cq = zext i32 %.fca.1.extract28 to i64       ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cq
  %.sroa.0.0.copyload.i.i.i95 = load i16, ptr %i.cr, align 8, !tbaa !149 ; 3 uses
  %i.cs = add i16 %.sroa.0.0.copyload.i.i.i95, -163
  %spec.select.i.i96 = icmp ult i16 %i.cs, 53
  br i1 %spec.select.i.i96, label %bb.i, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit97

bb.i:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering6opJoinERKSt4pairINS_7SDValueES2_ERKNS_5SDLocERNS_12SelectionDAGE.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit97:     ; preds = %_ZNK4llvm21HexagonTargetLowering6opJoinERKSt4pairINS_7SDValueES2_ERKNS_5SDLocERNS_12SelectionDAGE.exit
  %i.ct = zext i16 %.sroa.0.0.copyload.i.i.i95 to i64
  %i.cu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !151
  %.0 = zext i16 %i.cw to i32
  %14 = icmp samesign ugt i32 %spec.select.i, %.0
  br i1 %14, label %bb.f, label %_ZN4llvm3MVT11getVectorVTES0_j.exit, !llvm.loop !728
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13WidenHvxSetCCENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %5 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %7 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %8 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !316
  store i64 %i.b, ptr %4, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !317
  store i32 %i.e, ptr %i.c, align 8, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 4 uses
  %.sroa.067.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !202 ; 2 uses
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.568.0.copyload = load i32, ptr %.sroa.568.0..sroa_idx, align 8, !tbaa !152 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.064.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !202
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.465.0.copyload = load i32, ptr %.sroa.465.0..sroa_idx, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.067.0.copyload, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196
  %i.k = zext i32 %.sroa.568.0.copyload to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.l, align 8, !tbaa !149
  %i.m = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.n = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !149  ; 2 uses
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.q ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.r, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.s = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.s, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.t = getelementptr i8, ptr %i.r, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57, !nonnull !21, !align !58 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 432
  %i.x = load i32, ptr %i.w, align 8, !tbaa !143
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 344
  %i.aa = load i8, ptr %i.z, align 8, !range !20
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  %i.ad = select i1 %i.ac, i64 512, i64 1024
  %i.ae = udiv i64 %i.ad, %.sroa.0.0.copyload.i
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.p, i32 noundef %i.af) ; 4 uses
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.ai = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.ah, i16 %i.ag, ptr null, i1 noundef zeroext true) #20
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aj = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering11appendUndefENS_7SDValueENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nonnull %.sroa.067.0.copyload, i32 %.sroa.568.0.copyload, i16 %i.ag, ptr noundef nonnull align 8 dereferenceable(920) %3) #20 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.aj, 1
  %i.ak = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering11appendUndefENS_7SDValueENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.064.0.copyload, i32 %.sroa.465.0.copyload, i16 %i.ag, ptr noundef nonnull align 8 dereferenceable(920) %3) #20 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.ak, 1
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !389
  %i.an = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.am) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !403
  %i.aq = load ptr, ptr %0, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 504
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call { i16, ptr } %i.as(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i16 %i.ag, ptr null) #20 ; 2 uses
  %i.au = extractvalue { i16, ptr } %i.at, 0
  %i.av = extractvalue { i16, ptr } %i.at, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.fca.0.extract39, ptr %6, align 8, !tbaa !202
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract40, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !152
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.fca.0.extract28, ptr %i.aw, align 8, !tbaa !202
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract29, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !152
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false), !tbaa.struct !203
  store ptr %6, ptr %5, align 8, !tbaa !194
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.ba, align 8, !tbaa !195
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.au, ptr %i.av, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %5) #20 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.bb, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !196
  %i.be = zext i32 %2 to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be
  %.sroa.0.0.copyload.i.i.i85 = load i16, ptr %i.bf, align 8, !tbaa !149
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !403
  %i.bh = load ptr, ptr %0, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 568
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call { i16, ptr } %i.bj(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i16 %.sroa.0.0.copyload.i.i.i85, ptr null) #20, !inline_history !406
  %i.bl = extractvalue { i16, ptr } %i.bk, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %.fca.0.extract14, ptr %8, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bn = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr noundef nonnull align 8 dereferenceable(920) %3) #20 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.bn, 1
  store ptr %.fca.0.extract1, ptr %i.bm, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  store ptr %8, ptr %7, align 8, !tbaa !194
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.bo, align 8, !tbaa !195
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.bl, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %7) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.c
  %.sroa.4101.0 = phi i32 [ %.fca.1.extract, %bb.c ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.0100.0 = phi ptr [ %.fca.0.extract, %bb.c ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0100.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4101.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering11appendUndefENS_7SDValueENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456), ptr, i32, i16, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering22WidenHvxTruncateToBoolENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %7 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !316
  store i64 %i.b, ptr %4, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !317
  store i32 %i.e, ptr %i.c, align 8, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %.sroa.046.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !202 ; 2 uses
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.547.0.copyload = load i32, ptr %.sroa.547.0..sroa_idx, align 8, !tbaa !152 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.j = zext i32 %.sroa.547.0.copyload to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.k, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !196
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i.i.i60 = load i16, ptr %i.o, align 8, !tbaa !149
  %i.p = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.q = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !149  ; 2 uses
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.t ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.v = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.v, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57, !nonnull !21, !align !58 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 432
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !143
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 344
end_hunk_0
