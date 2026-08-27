Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNK4llvm23LoongArchTargetLowering15lowerBITREVERSEENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.bs, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.bs, 1
  store ptr %.fca.0.extract1, ptr %14, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bt = load ptr, ptr %13, align 8, !tbaa !19
  store ptr %i.bt, ptr %15, align 8, !tbaa !609
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !567
  %i.bw = zext i32 %i.bv to i64
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !611
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %.fca.0.extract19, i32 %.fca.1.extract20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %15) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bx, 1
  %i.by = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bn
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge134.split
  call void @free(ptr noundef %i.by) #28
  br label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit

_ZN4llvm11SmallVectorIiLj32EED2Ev.exit:           ; preds = %._crit_edge134.split, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.p

.lr.ph129:                                        ; preds = %.lr.ph133, %._crit_edge130
  %.083131 = phi i32 [ %i.cb, %._crit_edge130 ], [ 0, %.lr.ph133 ] ; 2 uses
  %i.ca = mul i32 %i.bq, %.083131
  br label %bb.m

._crit_edge130:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.cb = add nuw nsw i32 %.083131, 1             ; 2 uses
  %exitcond137.not = icmp eq i32 %i.cb, %i.ak
  br i1 %exitcond137.not, label %._crit_edge134.split.loopexit, label %.lr.ph129, !llvm.loop !618

bb.m:                                             ; preds = %.lr.ph129, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.082127 = phi i32 [ %.082126, %.lr.ph129 ], [ %.082, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 3 uses
  %i.cc = add i32 %.082127, %i.ca                 ; 2 uses
  %i.cd = load i32, ptr %i.bo, align 8, !tbaa !567 ; 2 uses
  %i.ce = load i32, ptr %i.bp, align 4, !tbaa !568
  %.not.i102 = icmp ult i32 %i.cd, %i.ce
  br i1 %.not.i102, label %bb.o, label %bb.n, !prof !570

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.cc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.o:                                             ; preds = %bb.m
  %i.cf = zext i32 %i.cd to i64
  %i.cg = load ptr, ptr %13, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  store i32 %i.cc, ptr %i.ch, align 1
  %i.ci = load i32, ptr %i.bo, align 8, !tbaa !567
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bo, align 8, !tbaa !567
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.n, %bb.o
  %.082 = add nsw i32 %.082127, -1
  %i.ck = icmp sgt i32 %.082127, 0
  br i1 %i.ck, label %bb.m, label %._crit_edge130, !llvm.loop !619

bb.p:                                             ; preds = %._crit_edge, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, %bb.j
  %.sroa.7.0 = phi i32 [ %.fca.1.extract, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit ], [ %.fca.1.extract20, %bb.j ], [ 0, %._crit_edge ]
  %.sroa.0118.0 = phi ptr [ %.fca.0.extract, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit ], [ %.fca.0.extract19, %bb.j ], [ null, %._crit_edge ]
  %i.cl = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.am
  br i1 %i.cm, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.cl) #28
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ 0, %bb.b ]
  %.sroa.0118.1 = phi ptr [ %.sroa.0118.0, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0118.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering21lowerSCALAR_TO_VECTORENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !362
  store i64 %i.b, ptr %5, align 8, !tbaa !362
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !363
  store i32 %i.e, ptr %i.c, align 8, !tbaa !364
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.i, align 8, !tbaa !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.j = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149, !nonnull !27, !align !150
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 374
  %.sroa.0.0.copyload.i = load i16, ptr %i.o, align 2, !tbaa !31
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %.fca.0.extract8, ptr %6, align 8, !tbaa !361
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !147
  store ptr %.fca.0.extract2, ptr %8, align 8, !tbaa !361
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !147
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering13lowerPREFETCHENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518448) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(920) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !356  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !359
  %i.j = icmp ult i32 %i.i, 65
  %i.k = load ptr, ptr %i.g, align 8
  %spec.select.i.i.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.k
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !151
  %i.l = and i64 %.0.i.i.i.i.i, 4294967295
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !147
  %.sroa.0.0.in.sroa.speculate.load.7 = load ptr, ptr %i.b, align 8, !tbaa !361
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.in.sroa.speculated = phi ptr [ %.sroa.0.0.in.sroa.speculate.load.7, %bb.b ], [ %1, %bb.a ]
  %.sroa.3.0 = phi i32 [ %.sroa.3.0.copyload, %bb.b ], [ %2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering11lowerSELECTENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %7 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %9 = alloca %"class.llvm::ArrayRef.201", align 8 ; 6 uses
  %10 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %12 = alloca %"class.llvm::ArrayRef.201", align 8 ; 6 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 19 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %34 = alloca %"class.llvm::SDLoc", align 8      ; 12 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %36 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 13 uses
  %37 = alloca %"class.llvm::ArrayRef.201", align 8 ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 13 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %44 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %45 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %48 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %49 = alloca %"class.llvm::ArrayRef.201", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354  ; 7 uses
  %.sroa.0218.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !361 ; 12 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.d = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %50 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0202.0.copyload = load ptr, ptr %50, align 8, !tbaa !361 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.12.0.copyload = load i32, ptr %i.e, align 8, !tbaa !147 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.0173.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !361 ; 23 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !147 ; 9 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !362  ; 2 uses
  store i64 %i.h, ptr %34, align 8, !tbaa !362
  %i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !363  ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !486  ; 2 uses
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.o, align 8, !tbaa !31 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !149, !nonnull !27, !align !150
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 374
  %.sroa.0.0.copyload.i = load i16, ptr %i.r, align 2, !tbaa !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  %51 = trunc i64 %i.d to i32                     ; 6 uses
  %52 = lshr i64 %i.d, 32
  %53 = trunc nuw i64 %52 to i32                  ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i131 = load i16, ptr %i.m, align 8, !tbaa !31 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store i64 %i.h, ptr %13, align 8, !tbaa !362
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.k, ptr %i.s, align 8, !tbaa !364
  %.sroa.13.8.extract.trunc.i = trunc i64 %.sroa.13.0.copyload.i to i32 ; 5 uses
  %i.t = tail call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %.sroa.0202.0.copyload, i32 %.sroa.13.8.extract.trunc.i) #28
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0218.0.copyload, i32 %51, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null) #28 ; 2 uses
  %.fca.0.extract156.i = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract157.i = extractvalue { ptr, i32 } %i.u, 1
  store ptr %.fca.0.extract156.i, ptr %14, align 8, !tbaa !361
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract157.i, ptr %.sroa.4165.0..sroa_idx.i, align 8, !tbaa !147
  %.sroa.14.8.extract.trunc51.i = trunc i64 %.sroa.14.0.copyload.i to i32
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0173.0.copyload, i32 %.sroa.14.8.extract.trunc51.i) #28 ; 2 uses
  %.fca.0.extract148.i = extractvalue { ptr, i32 } %i.v, 0
  %.fca.1.extract149.i = extractvalue { ptr, i32 } %i.v, 1
  store ptr %.fca.0.extract148.i, ptr %15, align 8
  %.sroa.2151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract149.i, ptr %.sroa.2151.0..sroa_idx.i, align 8
  %i.w = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.14.8.extract.trunc.i = trunc i64 %.sroa.14.0.copyload.i to i32 ; 4 uses
  %i.x = tail call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %.sroa.0173.0.copyload, i32 %.sroa.14.8.extract.trunc.i) #28
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.sroa.0218.0.copyload, ptr %16, align 8, !tbaa !361
  %.sroa.12.0..sroa_idx61.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %51, ptr %.sroa.12.0..sroa_idx61.i, align 8, !tbaa !147
  %.sroa.15.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %53, ptr %.sroa.15.0..sroa_idx65.i, align 4
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract128.i = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract129.i = extractvalue { ptr, i32 } %i.y, 1
  store ptr %.fca.0.extract128.i, ptr %17, align 8
  %.sroa.2131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract129.i, ptr %.sroa.2131.0..sroa_idx.i, align 8
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #28 ; 2 uses
  %.fca.0.extract124.i = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract125.i = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract124.i, ptr %18, align 8, !tbaa !361
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract125.i, ptr %.sroa.4135.0..sroa_idx.i, align 8, !tbaa !147
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0202.0.copyload, i32 %.sroa.13.8.extract.trunc.i) #28 ; 2 uses
  %.fca.0.extract116.i = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract117.i = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract116.i, ptr %19, align 8
  %.sroa.2119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract117.i, ptr %.sroa.2119.0..sroa_idx.i, align 8
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0202.0.copyload, i32 %.sroa.13.8.extract.trunc.i) #28
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %.sroa.0218.0.copyload, ptr %20, align 8, !tbaa !361
  %.sroa.12.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %51, ptr %.sroa.12.0..sroa_idx63.i, align 8, !tbaa !147
  %.sroa.15.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 %53, ptr %.sroa.15.0..sroa_idx67.i, align 4
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract100.i = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract101.i = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract100.i, ptr %21, align 8
  %.sroa.2103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract101.i, ptr %.sroa.2103.0..sroa_idx.i, align 8
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #28 ; 2 uses
  %.fca.0.extract96.i = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract97.i = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract96.i, ptr %22, align 8, !tbaa !361
  %.sroa.4107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract97.i, ptr %.sroa.4107.0..sroa_idx.i, align 8, !tbaa !147
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0173.0.copyload, i32 %.sroa.14.8.extract.trunc.i) #28 ; 2 uses
  %.fca.0.extract88.i = extractvalue { ptr, i32 } %i.af, 0
  %.fca.1.extract89.i = extractvalue { ptr, i32 } %i.af, 1
  store ptr %.fca.0.extract88.i, ptr %23, align 8
  %.sroa.291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract89.i, ptr %.sroa.291.0..sroa_idx.i, align 8
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0173.0.copyload, i32 %.sroa.14.8.extract.trunc.i) #28
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0218.0.copyload, i32 %51, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null) #28 ; 2 uses
  %.fca.0.extract70.i = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract71.i = extractvalue { ptr, i32 } %i.ai, 1
  store ptr %.fca.0.extract70.i, ptr %24, align 8, !tbaa !361
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract71.i, ptr %.sroa.479.0..sroa_idx.i, align 8, !tbaa !147
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0202.0.copyload, i32 %.sroa.13.8.extract.trunc.i) #28 ; 2 uses
  %.fca.0.extract62.i = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract63.i = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract62.i, ptr %25, align 8
  %.sroa.265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract63.i, ptr %.sroa.265.0..sroa_idx.i, align 8
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0202.0.copyload, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !163
  switch i32 %i.am, label %.critedge.i [
    i32 37, label %bb.j
    i32 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !163
  switch i32 %i.ao, label %.critedge.i [
    i32 37, label %bb.k
    i32 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0202.0.copyload, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !356 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !356
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !359 ; 3 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !359
  %i.ay = icmp ult i32 %i.ax, 65
  br i1 %i.ay, label %_ZN4llvmcoENS_5APIntE.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.k
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #28
  %.pr = load i32, ptr %i.av, align 8, !tbaa !359, !noalias !620 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.az = icmp ult i32 %.pr, 65
  br i1 %i.az, label %_ZN4llvmcoENS_5APIntE.exit.thread, label %_ZN4llvmcoENS_5APIntE.exit

_ZN4llvmcoENS_5APIntE.exit.thread:                ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %bb.k
  %.in = phi ptr [ %i.ar, %bb.k ], [ %27, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.ba = phi i32 [ %i.ax, %bb.k ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 2 uses
  %i.bb = load i64, ptr %.in, align 8, !tbaa !151
  %i.bc = xor i64 %i.bb, -1
  %i.bd = sub nsw i32 0, %i.ba
  %i.be = and i32 %i.bd, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 -1, %i.bf
  %i.bh = icmp eq i32 %i.ba, 0
  %spec.select.i.i = select i1 %i.bh, i64 0, i64 %i.bg, !prof !623
  %i.bi = and i64 %spec.select.i.i, %i.bc         ; 2 uses
  store i64 %i.bi, ptr %27, align 8, !tbaa !151, !noalias !620
  store i32 0, ptr %i.av, align 8, !tbaa !359, !noalias !620
  br label %_ZNK4llvm5APInteqERKS0_.exit.i

_ZN4llvmcoENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #28, !noalias !620
  %.pre.i154 = load i32, ptr %i.av, align 8, !tbaa !359, !noalias !620 ; 2 uses
  %.pre1.i = load i64, ptr %27, align 8, !noalias !620 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.pre.i154, ptr %i.bj, align 8, !tbaa !359, !alias.scope !620
  store i64 %.pre1.i, ptr %26, align 8, !alias.scope !620
  store i32 0, ptr %i.av, align 8, !tbaa !359, !noalias !620
  %i.bk = icmp ult i32 %.pre.i154, 65
  %i.bl = inttoptr i64 %.pre1.i to ptr
  br i1 %i.bk, label %_ZNK4llvm5APInteqERKS0_.exit.i, label %bb.l

_ZNK4llvm5APInteqERKS0_.exit.i:                   ; preds = %_ZN4llvmcoENS_5APIntE.exit.thread, %_ZN4llvmcoENS_5APIntE.exit
  %i.bm = phi i64 [ %i.bi, %_ZN4llvmcoENS_5APIntE.exit.thread ], [ %.pre1.i, %_ZN4llvmcoENS_5APIntE.exit ]
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !151
  %i.bo = icmp eq i64 %i.bm, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %i.bo, label %bb.n, label %.critedge.i

bb.l:                                             ; preds = %_ZN4llvmcoENS_5APIntE.exit
  %i.bp = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %26, ptr noundef nonnull align 8 dereferenceable(12) %i.au) #31 ; 3 uses
  %i.bq = icmp eq i64 %.pre1.i, 0
  br i1 %i.bq, label %_ZN4llvm5APIntD2Ev.exit.i.thread, label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i.thread:                 ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %i.bp, label %bb.n, label %.critedge.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #30
  %.pre294 = load i32, ptr %i.av, align 8, !tbaa !359
  %i.br = icmp ugt i32 %.pre294, 64
  br i1 %i.br, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit215.i

bb.m:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.bs = load ptr, ptr %27, align 8, !tbaa !151  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN4llvm5APIntD2Ev.exit215.i, label %.split310

.split310:                                        ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %i.bp, label %bb.n, label %.critedge.i

_ZN4llvm5APIntD2Ev.exit215.i:                     ; preds = %bb.m, %_ZN4llvm5APIntD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %i.bp, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i, %.split310, %_ZN4llvm5APIntD2Ev.exit.i.thread, %_ZN4llvm5APIntD2Ev.exit215.i
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getNegativeENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0218.0.copyload, i32 %51, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null) #28 ; 2 uses
  %.fca.0.extract47.i = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract48.i = extractvalue { ptr, i32 } %i.bu, 1
  store ptr %.fca.0.extract47.i, ptr %28, align 8, !tbaa !361
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract48.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !147
  store ptr %.sroa.0173.0.copyload, ptr %29, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %.sroa.14.0.copyload.i, ptr %.sroa.20.0..sroa_idx43.i, align 8
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 195, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

.critedge.i:                                      ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i, %.split310, %_ZN4llvm5APIntD2Ev.exit.i.thread, %_ZN4llvm5APIntD2Ev.exit215.i, %bb.j, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.copyload, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !163
  %i.by = icmp eq i32 %i.bx, 222
  br i1 %i.by, label %bb.o, label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread

bb.o:                                             ; preds = %.critedge.i
  %i.bz = load i32, ptr %i.al, align 8, !tbaa !163
  %i.ca = icmp eq i32 %i.bz, 222
  br i1 %i.ca, label %bb.p, label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !163
  %i.cd = icmp eq i32 %i.cc, 222
  br i1 %i.cd, label %bb.q, label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.copyload, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !354 ; 5 uses
  %.sroa.038.0.copyload.i = load ptr, ptr %i.cf, align 8, !tbaa !361 ; 2 uses
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.539.0.copyload.i = load i32, ptr %.sroa.539.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.036.0.copyload.i = load ptr, ptr %i.cg, align 8, !tbaa !361 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !355
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !624 ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.0202.0.copyload, i64 40
  %.val213.val.i = load ptr, ptr %i.cl, align 8, !tbaa !354
  %i.cm = call fastcc i16 @_ZL10matchSetCCN4llvm7SDValueES0_NS_3ISD8CondCodeES0_(ptr %.sroa.038.0.copyload.i, i32 %.sroa.539.0.copyload.i, ptr %.sroa.036.0.copyload.i, i32 %.sroa.5.0.copyload.i, i32 noundef %i.ck, ptr %.val213.val.i) ; 2 uses
  %.not.i = icmp samesign ult i16 %i.cm, 256
  br i1 %.not.i, label %.critedge210.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = trunc i16 %i.cm to i1
  %i.co = select i1 %i.cn, i32 194, i32 193
  store ptr %.sroa.0202.0.copyload, ptr %30, align 8, !tbaa !361
  %.sroa.13.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx51.i, align 8
  %i.cp = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %.sroa.0173.0.copyload, i32 %.sroa.14.8.extract.trunc.i) #28 ; 2 uses
  %.fca.0.extract21.i = extractvalue { ptr, i32 } %i.cp, 0
  %.fca.1.extract22.i = extractvalue { ptr, i32 } %i.cp, 1
  store ptr %.fca.0.extract21.i, ptr %31, align 8
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract22.i, ptr %.sroa.224.0..sroa_idx.i, align 8
  %i.cq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

.critedge210.i:                                   ; preds = %bb.q
  %i.cr = getelementptr i8, ptr %.sroa.0173.0.copyload, i64 40
  %.val.val.i = load ptr, ptr %i.cr, align 8, !tbaa !354
  %i.cs = call fastcc i16 @_ZL10matchSetCCN4llvm7SDValueES0_NS_3ISD8CondCodeES0_(ptr %.sroa.038.0.copyload.i, i32 %.sroa.539.0.copyload.i, ptr %.sroa.036.0.copyload.i, i32 %.sroa.5.0.copyload.i, i32 noundef %i.ck, ptr %.val.val.i) ; 2 uses
  %.not76.i = icmp samesign ult i16 %i.cs, 256
  br i1 %.not76.i, label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread, label %bb.s

bb.s:                                             ; preds = %.critedge210.i
  %i.ct = trunc i16 %i.cs to i1
  %i.cu = select i1 %i.ct, i32 193, i32 194
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getFreezeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %.sroa.0202.0.copyload, i32 %.sroa.13.8.extract.trunc.i) #28 ; 2 uses
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.cv, 1
  store ptr %.fca.0.extract4.i, ptr %32, align 8
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract5.i, ptr %.sroa.27.0..sroa_idx.i, align 8
  store ptr %.sroa.0173.0.copyload, ptr %33, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %.sroa.14.0.copyload.i, ptr %.sroa.20.0..sroa_idx45.i, align 8
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i131, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #28
  br label %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread: ; preds = %.critedge.i, %bb.p, %bb.o, %.critedge210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  br label %bb.t

_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.n, %bb.r, %bb.s
  %.pn276 = phi { ptr, i32 } [ %i.w, %bb.b ], [ %i.ab, %bb.d ], [ %i.ag, %bb.f ], [ %i.ak, %bb.h ], [ %i.bv, %bb.n ], [ %i.cq, %bb.r ], [ %i.cw, %bb.s ] ; 2 uses
  %.sroa.069.1.i = extractvalue { ptr, i32 } %.pn276, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  %.not278 = icmp eq ptr %.sroa.069.1.i, null
  br i1 %.not278, label %bb.t, label %bb.br

bb.t:                                             ; preds = %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread, %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.018.022.i.i = load ptr, ptr %i.cx, align 8, !tbaa !596 ; 3 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.critedge128, label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.db, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.cy, align 8, !tbaa !596 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.u
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.u ], [ %.sroa.018.022.i.i, %bb.t ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !500
  %i.db = icmp ne i32 %i.da, %2                   ; 2 uses
  %i.dc = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %cond.i.i, label %bb.u, label %.critedge128

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.u
  %i.dd = icmp eq i32 %.214.i.i, 0
  br i1 %i.dd, label %bb.v, label %.critedge128

bb.v:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.018.022.i.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !627
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !163 ; 2 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1384
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %i.dh) #28
  br i1 %i.dl, label %bb.w, label %.critedge128

bb.w:                                             ; preds = %bb.v
  switch i32 %i.dh, label %bb.x [
    i32 62, label %.critedge128
    i32 64, label %.critedge128
    i32 68, label %.critedge128
    i32 63, label %.critedge128
    i32 65, label %.critedge128
    i32 69, label %.critedge128
  ]

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.cx, align 8, !tbaa !630
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !627 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !354 ; 5 uses
  %.sroa.010.0.copyload.i = load ptr, ptr %i.dq, align 8, !tbaa !361 ; 3 uses
  %.sroa.13.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.13.0.copyload.i133 = load i32, ptr %.sroa.13.0..sroa_idx.i132, align 8, !tbaa !147 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !163
  %.not.i134 = icmp eq i32 %i.ds, 219
  br i1 %.not.i134, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !596 ; 3 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %.214.i.i.i = select i1 %i.dx, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !596 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %bb.z
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.z ], [ %.sroa.018.022.i.i.i, %bb.y ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.z ], [ 1, %bb.y ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !500
  %i.dx = icmp ne i32 %i.dw, %.sroa.13.0.copyload.i133 ; 2 uses
  %i.dy = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %cond.i.i.i, label %bb.z, label %.loopexit.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.z
  %i.dz = icmp eq i32 %.214.i.i.i, 0
  br i1 %i.dz, label %.thread.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %bb.y, %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %.sroa.010.0.copyload18.i = load ptr, ptr %i.ea, align 8, !tbaa !361 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload18.i, i64 24
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163
  %i.eb = icmp eq i32 %.pre.i, 219
  br i1 %i.eb, label %.loopexit.i..thread.i_crit_edge, label %.critedge126.sink.split

.loopexit.i..thread.i_crit_edge:                  ; preds = %.loopexit.i
  %.sroa.13.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %.sroa.13.0.copyload20.i = load i32, ptr %.sroa.13.0..sroa_idx19.i, align 8, !tbaa !147
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload18.i, i64 56
  %.sroa.018.022.i.i55.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !596
  br label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i..thread.i_crit_edge, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  %.sroa.018.022.i.i55.i = phi ptr [ %.sroa.018.022.i.i55.i.pre, %.loopexit.i..thread.i_crit_edge ], [ %.sroa.018.022.i.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ] ; 2 uses
  %.044.i = phi i64 [ 0, %.loopexit.i..thread.i_crit_edge ], [ 1, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ]
  %i.ec = phi i1 [ true, %.loopexit.i..thread.i_crit_edge ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ] ; 2 uses
  %.sroa.010.043.i = phi ptr [ %.sroa.010.0.copyload18.i, %.loopexit.i..thread.i_crit_edge ], [ %.sroa.010.0.copyload.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ] ; 3 uses
  %.sroa.13.042.i = phi i32 [ %.sroa.13.0.copyload20.i, %.loopexit.i..thread.i_crit_edge ], [ %.sroa.13.0.copyload.i133, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ]
  %.not23.i.i56.i = icmp eq ptr %.sroa.018.022.i.i55.i, null
  br i1 %.not23.i.i56.i, label %.critedge126.sink.split, label %.lr.ph.i.i57.i

bb.aa:                                            ; preds = %.lr.ph.i.i57.i
  %.214.i.i60.i = select i1 %i.eg, i32 %.01224.i.i59.i, i32 0 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i58.i, i64 32
  %.sroa.018.0.i.i64.i = load ptr, ptr %i.ed, align 8, !tbaa !596 ; 2 uses
  %.not.i.i65.i = icmp eq ptr %.sroa.018.0.i.i64.i, null
  br i1 %.not.i.i65.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit66.i, label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.thread.i, %bb.aa
  %.sroa.018.025.i.i58.i = phi ptr [ %.sroa.018.0.i.i64.i, %bb.aa ], [ %.sroa.018.022.i.i55.i, %.thread.i ] ; 2 uses
  %.01224.i.i59.i = phi i32 [ %.214.i.i60.i, %bb.aa ], [ 1, %.thread.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i58.i, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !500
  %i.eg = icmp ne i32 %i.ef, %.sroa.13.042.i      ; 2 uses
  %i.eh = icmp ne i32 %.01224.i.i59.i, 0
  %cond.i.i61.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %cond.i.i61.i, label %bb.aa, label %.critedge126.sink.split

_ZNK4llvm7SDValue9hasOneUseEv.exit66.i:           ; preds = %bb.aa
  %i.ei = icmp eq i32 %.214.i.i60.i, 0
  br i1 %i.ei, label %bb.ab, label %.critedge126.sink.split

bb.ab:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit66.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.010.043.i, i64 40 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !354 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !355
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !163 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 12
  %i.eq = icmp eq i32 %i.eo, 37
  %spec.select.i.i.i.i.i.i.i.i.i = or i1 %i.ep, %i.eq ; 4 uses
  %i.er = select i1 %spec.select.i.i.i.i.i.i.i.i.i, i64 1, i64 2
  %i.es = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.er ; 2 uses
  %.sroa.07.0.copyload.i = load ptr, ptr %i.es, align 8, !tbaa !361 ; 3 uses
  %.sroa.5.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.et = load i64, ptr %.sroa.5.0..sroa_idx.i137, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !163
  switch i32 %i.ev, label %.critedge126.sink.split [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.ab, %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 32
  %i.ex = load i8, ptr %i.ew, align 8
  %i.ey = and i8 %i.ex, 8
  %.not31.i = icmp eq i8 %i.ey, 0
  br i1 %.not31.i, label %bb.ac, label %.critedge126.sink.split

bb.ac:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.ez = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %.044.i ; 2 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.ez, align 8, !tbaa !361 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !163
  switch i32 %i.fc, label %.critedge126.sink.split [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit68.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit68.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit68.i: ; preds = %bb.ac, %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 32
  %i.fe = load i8, ptr %i.fd, align 8
  %i.ff = and i8 %i.fe, 8
  %.not32.i = icmp eq i8 %i.ff, 0
  br i1 %.not32.i, label %bb.ad, label %.critedge126.sink.split

bb.ad:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.010.043.i, i64 72
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !362
  store i64 %i.fh, ptr %6, align 8, !tbaa !362
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.010.043.i, i64 68
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !363
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !364
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.fm, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !487 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %.sroa.07.0.copyload.i, ptr %7, align 16, !tbaa !361
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.5.0.extract.trunc.i = trunc i64 %i.et to i32
  store i32 %.sroa.5.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx9.i, align 8, !tbaa !147
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %.sroa.02.0.copyload.i, ptr %i.fn, align 16, !tbaa !361
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.6.0.extract.trunc.i = trunc i64 %i.fa to i32 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i, ptr %.sroa.6.0..sroa_idx5.i, align 8, !tbaa !147
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %7, ptr noundef nonnull align 16 dereferenceable(12) %i.fn, i64 12, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.fn, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !163
  store ptr %7, ptr %9, align 8, !tbaa !495
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.fq, align 8, !tbaa !498
  %i.fr = call { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %9, i32 0) #28 ; 2 uses
  %.fca.0.extract14.i = extractvalue { ptr, i32 } %i.fr, 0 ; 3 uses
  %.fca.1.extract15.i = extractvalue { ptr, i32 } %i.fr, 1
  store ptr %.fca.0.extract14.i, ptr %8, align 8
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract15.i, ptr %.sroa.217.0..sroa_idx.i, align 8
  %.not33.i = icmp eq ptr %.fca.0.extract14.i, null
  br i1 %.not33.i, label %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread257, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %.fca.0.extract14.i, i64 88
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !356 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !359 ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 65
  br i1 %i.fx, label %.split.i, label %_ZNK4llvm5APInt6isZeroEv.exit.i

.split.i:                                         ; preds = %bb.ag
  %i.fy = load i64, ptr %i.fu, align 8, !tbaa !151
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ai, label %bb.ah

_ZNK4llvm5APInt6isZeroEv.exit.i:                  ; preds = %bb.ag
  %i.ga = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.fu) #31
  %i.gb = icmp eq i32 %i.ga, %i.fw
  br i1 %i.gb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split.i
  %i.gc = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %i.fu)
  br i1 %i.gc, label %bb.ai, label %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread257

bb.ai:                                            ; preds = %bb.ah, %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split.i
  %i.gd = load ptr, ptr %i.ej, align 8, !tbaa !354
  %i.ge = select i1 %spec.select.i.i.i.i.i.i.i.i.i, i64 2, i64 1
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %i.gf, i64 12, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %.sroa.02.0.copyload.i, ptr %i.gg, align 16, !tbaa !361
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.sroa.6.0.extract.trunc.i, ptr %.sroa.6.0..sroa_idx6.i, align 8, !tbaa !147
  br i1 %i.ec, label %bb.aj, label %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %10, ptr noundef nonnull align 16 dereferenceable(12) %i.gg, i64 12, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.gg, ptr noundef nonnull align 8 dereferenceable(12) %i.gf, i64 12, i1 false)
  br label %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit

_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread257: ; preds = %bb.af, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge126.sink.split

_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.gh = load i32, ptr %i.fo, align 8, !tbaa !163
  store ptr %10, ptr %12, align 8, !tbaa !495
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.gi, align 8, !tbaa !498
  %i.gj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.gh, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %12) #28 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.gj, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.gj, 1
  store ptr %.fca.0.extract6.i, ptr %11, align 8
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.29.0..sroa_idx.i, align 8
  %..i = select i1 %spec.select.i.i.i.i.i.i.i.i.i, ptr %8, ptr %11
  %i.gk = select i1 %spec.select.i.i.i.i.i.i.i.i.i, ptr %11, ptr %8
  %i.gl = load ptr, ptr %i.ej, align 8, !tbaa !354 ; 2 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %i.gl, align 8, !tbaa !361
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !147
  %i.gm = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %..i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gk, i32 0) ; 2 uses
  %.fca.0.extract.i138 = extractvalue { ptr, i32 } %i.gm, 0 ; 2 uses
  %.fca.1.extract.i139 = extractvalue { ptr, i32 } %i.gm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store ptr %.fca.0.extract.i138, ptr %35, align 8
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store i32 %.fca.1.extract.i139, ptr %.sroa.287.0..sroa_idx, align 8
  %.not279 = icmp eq ptr %.fca.0.extract.i138, null
  br i1 %.not279, label %.critedge126, label %bb.ak

bb.ak:                                            ; preds = %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeEPKNS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull %i.do, ptr noundef nonnull %35) #28
  %i.gn = load ptr, ptr %35, align 8, !tbaa !355  ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !163
  %i.gq = icmp eq i32 %i.gp, 219
  %.sroa.282.0.copyload = load i32, ptr %.sroa.287.0..sroa_idx, align 8, !tbaa !147 ; 2 uses
  br i1 %i.gq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gr = call { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering11lowerSELECTENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr nonnull %i.gn, i32 %.sroa.282.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.gs = insertvalue { ptr, i32 } poison, ptr %i.gn, 0
  %i.gt = insertvalue { ptr, i32 } %i.gs, i32 %.sroa.282.0.copyload, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.merged = phi { ptr, i32 } [ %i.gr, %bb.al ], [ %i.gt, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.br

.critedge126.sink.split:                          ; preds = %.lr.ph.i.i57.i, %bb.ab, %bb.ac, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit66.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit68.i, %.thread.i, %.loopexit.i, %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit.thread257
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.critedge126

.critedge126:                                     ; preds = %.critedge126.sink.split, %_ZL31foldBinOpIntoSelectIfProfitablePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %.critedge128

.critedge128:                                     ; preds = %.lr.ph.i.i, %bb.t, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.v, %.critedge126, %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.copyload, i64 24
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !163
  %.not = icmp eq i32 %i.gv, 222
  br i1 %.not, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %.critedge128
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0218.0.copyload, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !354 ; 5 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !355
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !500
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !486
  %i.hd = zext i32 %i.ha to i64
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %i.hd
  %.sroa.0.0.copyload.i.i.i140 = load i16, ptr %i.he, align 8, !tbaa !31
  %.not280 = icmp eq i16 %.sroa.0.0.copyload.i.i.i140, %.sroa.0.0.copyload.i
  br i1 %.not280, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %.critedge128, %bb.ao
  %i.hf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.hf, 0
  %.fca.1.extract70 = extractvalue { ptr, i32 } %i.hf, 1
  %i.hg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 22) #28 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.hg, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.hg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  store ptr %.sroa.0218.0.copyload, ptr %36, align 16, !tbaa !361
  %.sroa.11.0..sroa_idx228 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %51, ptr %.sroa.11.0..sroa_idx228, align 8, !tbaa !147
  %i.hh = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %.fca.0.extract69, ptr %i.hh, align 16, !tbaa !361
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 24
  store i32 %.fca.1.extract70, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !147
  %i.hi = getelementptr inbounds nuw i8, ptr %36, i64 32
  store ptr %.fca.0.extract62, ptr %i.hi, align 16, !tbaa !361
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 40
  store i32 %.fca.1.extract63, ptr %.sroa.467.0..sroa_idx, align 8, !tbaa !147
  %i.hj = getelementptr inbounds nuw i8, ptr %36, i64 48
  store ptr %.sroa.0202.0.copyload, ptr %i.hj, align 16, !tbaa !361
  %.sroa.12.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %36, i64 56
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx211, align 8, !tbaa !147
  %i.hk = getelementptr inbounds nuw i8, ptr %36, i64 64
  store ptr %.sroa.0173.0.copyload, ptr %i.hk, align 16, !tbaa !361
  %.sroa.14.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %36, i64 72
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx188, align 8, !tbaa !147
  store ptr %36, ptr %37, align 8, !tbaa !495
  %i.hl = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 5, ptr %i.hl, align 8, !tbaa !498
  %i.hm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 592, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.br

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gx, i64 80
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !355
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !624 ; 2 uses
  store i32 %i.hr, ptr %i.a, align 4, !tbaa !631
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0202.0.copyload, i64 24 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !163
  switch i32 %i.ht, label %bb.bd [
    i32 37, label %bb.aq
    i32 12, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !163 ; 2 uses
  %i.hw = icmp eq i32 %i.hv, 12
  %i.hx = icmp eq i32 %i.hv, 37
  %spec.select.i.i.i.i.i.i.i.i141 = or i1 %i.hw, %i.hx
  %i.hy = icmp eq i32 %i.hr, 20
  %or.cond = select i1 %spec.select.i.i.i.i.i.i.i.i141, i1 %i.hy, i1 false
  br i1 %or.cond, label %bb.ar, label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0202.0.copyload, i64 88
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !356 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 88
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !356
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %i.if = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !359 ; 2 uses
  store i32 %i.ih, ptr %i.if, align 8, !tbaa !359
  %i.ii = icmp ult i32 %i.ih, 65
  br i1 %i.ii, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ij = load i64, ptr %i.ib, align 8, !tbaa !151
  store i64 %i.ij, ptr %41, align 8, !tbaa !151
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.at:                                            ; preds = %bb.ar
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %41, ptr noundef nonnull align 8 dereferenceable(12) %i.ib) #28
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.as, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.ik = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIEm(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef 1) #28, !noalias !632 ; 0 uses
  %i.il = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.im = load i32, ptr %i.if, align 8, !tbaa !359, !noalias !632 ; 2 uses
  store i32 %i.im, ptr %i.il, align 8, !tbaa !359, !alias.scope !632
  %i.in = load i64, ptr %41, align 8, !noalias !632 ; 4 uses
  store i64 %i.in, ptr %40, align 8, !alias.scope !632
  store i32 0, ptr %i.if, align 8, !tbaa !359, !noalias !632
  %i.io = icmp ult i32 %i.im, 65
  %i.ip = inttoptr i64 %i.in to ptr
  br i1 %i.io, label %_ZN4llvm5APIntD2Ev.exit.thread, label %bb.au

_ZN4llvm5APIntD2Ev.exit.thread:                   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.iq = load i64, ptr %i.ie, align 8, !tbaa !151
  %i.ir = icmp eq i64 %i.in, %i.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br i1 %i.ir, label %bb.aw, label %bb.ax

bb.au:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.is = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %40, ptr noundef nonnull align 8 dereferenceable(12) %i.ie) #31 ; 2 uses
  %i.it = icmp eq i64 %i.in, 0
  br i1 %i.it, label %_ZN4llvm5APIntD2Ev.exit143, label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.ip) #30
  %.pr266.pre = load i32, ptr %i.if, align 8, !tbaa !359
  %i.iu = icmp ugt i32 %.pr266.pre, 64
  br i1 %i.iu, label %bb.av, label %_ZN4llvm5APIntD2Ev.exit143

bb.av:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.iv = load ptr, ptr %41, align 8, !tbaa !151  ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %_ZN4llvm5APIntD2Ev.exit143, label %.split

.split:                                           ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br i1 %i.is, label %bb.aw, label %bb.ax

_ZN4llvm5APIntD2Ev.exit143:                       ; preds = %bb.au, %_ZN4llvm5APIntD2Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br i1 %i.is, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.split, %_ZN4llvm5APIntD2Ev.exit.thread, %_ZN4llvm5APIntD2Ev.exit143
  store ptr %.sroa.0218.0.copyload, ptr %42, align 8, !tbaa !361
  %.sroa.11.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.d, ptr %.sroa.11.0..sroa_idx226, align 8
  store ptr %.sroa.0173.0.copyload, ptr %43, align 8, !tbaa !361
  %.sroa.14.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx184, align 8, !tbaa !147
  %.sroa.16.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx197, align 4
  %i.ix = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43) #28
  br label %.critedge130

bb.ax:                                            ; preds = %.split, %_ZN4llvm5APIntD2Ev.exit.thread, %_ZN4llvm5APIntD2Ev.exit143
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.iy = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 4 uses
  %i.iz = load i32, ptr %i.ig, align 8, !tbaa !359 ; 2 uses
  store i32 %i.iz, ptr %i.iy, align 8, !tbaa !359
  %i.ja = icmp ult i32 %i.iz, 65
  br i1 %i.ja, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jb = load i64, ptr %i.ib, align 8, !tbaa !151
  store i64 %i.jb, ptr %45, align 8, !tbaa !151
  br label %_ZN4llvm5APIntC2ERKS0_.exit144

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %45, ptr noundef nonnull align 8 dereferenceable(12) %i.ib) #28
  br label %_ZN4llvm5APIntC2ERKS0_.exit144

_ZN4llvm5APIntC2ERKS0_.exit144:                   ; preds = %bb.ay, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.jc = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(16) %45, i64 noundef 1) #28, !noalias !635 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.je = load i32, ptr %i.iy, align 8, !tbaa !359, !noalias !635 ; 2 uses
  store i32 %i.je, ptr %i.jd, align 8, !tbaa !359, !alias.scope !635
  %i.jf = load i64, ptr %45, align 8, !noalias !635 ; 4 uses
  store i64 %i.jf, ptr %44, align 8, !alias.scope !635
  store i32 0, ptr %i.iy, align 8, !tbaa !359, !noalias !635
  %i.jg = icmp ult i32 %i.je, 65
  %i.jh = inttoptr i64 %i.jf to ptr
  br i1 %i.jg, label %_ZN4llvm5APIntD2Ev.exit147.thread, label %bb.ba

_ZN4llvm5APIntD2Ev.exit147.thread:                ; preds = %_ZN4llvm5APIntC2ERKS0_.exit144
  %i.ji = load i64, ptr %i.ie, align 8, !tbaa !151
  %i.jj = icmp eq i64 %i.jf, %i.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br i1 %i.jj, label %bb.bc, label %bb.bd

bb.ba:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit144
  %i.jk = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull align 8 dereferenceable(12) %i.ie) #31 ; 2 uses
  %i.jl = icmp eq i64 %i.jf, 0
  br i1 %i.jl, label %_ZN4llvm5APIntD2Ev.exit148, label %_ZN4llvm5APIntD2Ev.exit147

_ZN4llvm5APIntD2Ev.exit147:                       ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.jh) #30
  %.pr272.pre = load i32, ptr %i.iy, align 8, !tbaa !359
  %i.jm = icmp ugt i32 %.pr272.pre, 64
  br i1 %i.jm, label %bb.bb, label %_ZN4llvm5APIntD2Ev.exit148

bb.bb:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit147
  %i.jn = load ptr, ptr %45, align 8, !tbaa !151  ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN4llvm5APIntD2Ev.exit148, label %.split275

.split275:                                        ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.jn) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br i1 %i.jk, label %bb.bc, label %bb.bd

_ZN4llvm5APIntD2Ev.exit148:                       ; preds = %bb.ba, %_ZN4llvm5APIntD2Ev.exit147, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br i1 %i.jk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.split275, %_ZN4llvm5APIntD2Ev.exit147.thread, %_ZN4llvm5APIntD2Ev.exit148
  store ptr %.sroa.0173.0.copyload, ptr %46, align 8, !tbaa !361
  %.sroa.14.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx186, align 8, !tbaa !147
  %.sroa.16.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %46, i64 12
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx199, align 4
  store ptr %.sroa.0218.0.copyload, ptr %47, align 8, !tbaa !361
  %.sroa.11.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.d, ptr %.sroa.11.0..sroa_idx227, align 8
  %i.jp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #28
  br label %.critedge130

bb.bd:                                            ; preds = %bb.ap, %.split275, %_ZN4llvm5APIntD2Ev.exit147.thread, %_ZN4llvm5APIntD2Ev.exit148, %bb.aq
  call fastcc void @_ZL23translateSetCCForBranchRKN4llvm5SDLocERNS_7SDValueES4_RNS_3ISD8CondCodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %38, ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(920) %3)
  %.sroa.041.0.copyload = load ptr, ptr %38, align 8, !tbaa !361
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 5 uses
  %.sroa.242.0.copyload = load i32, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !147
  %i.jq = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.041.0.copyload, i32 %.sroa.242.0.copyload) #28
  %.pre298 = load i32, ptr %i.a, align 4          ; 7 uses
  br i1 %i.jq, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  switch i32 %.pre298, label %bb.bj [
    i32 20, label %bb.bf
    i32 12, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.jr = load ptr, ptr %39, align 8, !tbaa !355
  %i.js = icmp eq ptr %i.jr, %.sroa.0202.0.copyload
  %i.jt = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ju = load i32, ptr %i.jt, align 8
  %i.jv = icmp eq i32 %i.ju, %.sroa.12.0.copyload
  %i.jw = select i1 %i.js, i1 %i.jv, i1 false
  br i1 %i.jw, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.jx = load ptr, ptr %38, align 8, !tbaa !355
  %i.jy = icmp eq ptr %i.jx, %.sroa.0173.0.copyload
  %i.jz = load i32, ptr %.sroa.242.0..sroa_idx, align 8
  %i.ka = icmp eq i32 %i.jz, %.sroa.14.0.copyload
  %i.kb = select i1 %i.jy, i1 %i.ka, i1 false
  br i1 %i.kb, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.kc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.kc, 0
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.kc, 1
  store ptr %.fca.0.extract33, ptr %38, align 8, !tbaa !361
  store i32 %.fca.1.extract34, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !147
  %i.kd = icmp eq i32 %.pre298, 12
  br i1 %i.kd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %38, ptr noundef nonnull align 8 dereferenceable(12) %39, i64 12, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bh, %bb.bi, %bb.bg, %bb.bf, %bb.bd
  %i.ke = phi i32 [ %.pre298, %bb.be ], [ %.pre298, %bb.bh ], [ 22, %bb.bi ], [ %.pre298, %bb.bg ], [ %.pre298, %bb.bf ], [ %.pre298, %bb.bd ] ; 3 uses
  %.sroa.031.0.copyload = load ptr, ptr %39, align 8, !tbaa !361 ; 2 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %.sroa.232.0.copyload = load i32, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !147 ; 2 uses
  %i.kf = call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %.sroa.031.0.copyload, i32 %.sroa.232.0.copyload) #28
  %i.kg = icmp eq i32 %i.ke, 20
  %or.cond8 = select i1 %i.kf, i1 %i.kg, i1 false
  br i1 %or.cond8, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.kh = load ptr, ptr %38, align 8, !tbaa !355
  %i.ki = icmp eq ptr %i.kh, %.sroa.0202.0.copyload
  %i.kj = load i32, ptr %.sroa.242.0..sroa_idx, align 8
  %i.kk = icmp eq i32 %i.kj, %.sroa.12.0.copyload
  %i.kl = select i1 %i.ki, i1 %i.kk, i1 false
  br i1 %i.kl, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.km = icmp eq ptr %.sroa.031.0.copyload, %.sroa.0173.0.copyload
  %i.kn = icmp eq i32 %.sroa.232.0.copyload, %.sroa.14.0.copyload
  %i.ko = select i1 %i.km, i1 %i.kn, i1 false
  br i1 %i.ko, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.kp, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.kp, 1
  store ptr %.fca.0.extract23, ptr %39, align 8, !tbaa !361
  store i32 %.fca.1.extract24, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !147
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.kq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.ke) #28 ; 3 uses
  %i.kr = load i32, ptr %i.hs, align 8, !tbaa !163
  switch i32 %i.kr, label %bb.bq [
    i32 37, label %bb.bo
    i32 12, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0173.0.copyload, i64 24
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !163
  switch i32 %i.kt, label %bb.bp [
    i32 37, label %bb.bq
    i32 12, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ku = load ptr, ptr %38, align 8, !tbaa !355
  %i.kv = load i32, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !500
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !486
  %i.ky = zext i32 %i.kv to i64
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.kx, i64 %i.ky ; 2 uses
  %.sroa.0.0.copyload.i.i151 = load i16, ptr %i.kz, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i152 = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.sroa.21.0.copyload.i.i153 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i152, align 8, !tbaa !487
  %i.la = call noundef i32 @_ZN4llvm3ISD15getSetCCInverseENS0_8CondCodeENS_3EVTE(i32 noundef %i.ke, i16 %.sroa.0.0.copyload.i.i151, ptr %.sroa.21.0.copyload.i.i153) #28
  %i.lb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.la) #28
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bo, %bb.bn, %bb.bp
  %.sroa.0173.0 = phi ptr [ %.sroa.0173.0.copyload, %bb.bo ], [ %.sroa.0202.0.copyload, %bb.bp ], [ %.sroa.0173.0.copyload, %bb.bn ], [ %.sroa.0173.0.copyload, %bb.bo ]
  %.sroa.14.0 = phi i32 [ %.sroa.14.0.copyload, %bb.bo ], [ %.sroa.12.0.copyload, %bb.bp ], [ %.sroa.14.0.copyload, %bb.bn ], [ %.sroa.14.0.copyload, %bb.bo ]
  %.sroa.0201.0 = phi ptr [ %.sroa.0202.0.copyload, %bb.bo ], [ %.sroa.0173.0.copyload, %bb.bp ], [ %.sroa.0202.0.copyload, %bb.bn ], [ %.sroa.0202.0.copyload, %bb.bo ]
  %.sroa.12.0 = phi i32 [ %.sroa.12.0.copyload, %bb.bo ], [ %.sroa.14.0.copyload, %bb.bp ], [ %.sroa.12.0.copyload, %bb.bn ], [ %.sroa.12.0.copyload, %bb.bo ]
  %.pn = phi { ptr, i32 } [ %i.kq, %bb.bo ], [ %i.lb, %bb.bp ], [ %i.kq, %bb.bn ], [ %i.kq, %bb.bo ] ; 2 uses
  %.sroa.522.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.021.0 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %48, ptr noundef nonnull align 8 dereferenceable(12) %38, i64 12, i1 false), !tbaa.struct !499
  %i.lc = getelementptr inbounds nuw i8, ptr %48, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.lc, ptr noundef nonnull align 8 dereferenceable(12) %39, i64 12, i1 false), !tbaa.struct !499
  %i.ld = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr %.sroa.021.0, ptr %i.ld, align 16, !tbaa !361
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 40
  store i32 %.sroa.522.0, ptr %.sroa.522.0..sroa_idx, align 8, !tbaa !147
  %i.le = getelementptr inbounds nuw i8, ptr %48, i64 48
  store ptr %.sroa.0201.0, ptr %i.le, align 16, !tbaa !361
  %.sroa.12.0..sroa_idx213 = getelementptr inbounds nuw i8, ptr %48, i64 56
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx213, align 8, !tbaa !147
  %i.lf = getelementptr inbounds nuw i8, ptr %48, i64 64
  store ptr %.sroa.0173.0, ptr %i.lf, align 16, !tbaa !361
  %.sroa.14.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %48, i64 72
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx190, align 8, !tbaa !147
  store ptr %48, ptr %49, align 8, !tbaa !495
  %i.lg = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 5, ptr %i.lg, align 8, !tbaa !498
  %i.lh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 592, ptr noundef nonnull align 8 dereferenceable(12) %34, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  br label %.critedge130

.critedge130:                                     ; preds = %bb.aw, %bb.bc, %bb.bq
  %.pn281 = phi { ptr, i32 } [ %i.ix, %bb.aw ], [ %i.jp, %bb.bc ], [ %i.lh, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.an, %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit, %.critedge130, %.critedge
  %.fca.1.insert.merged = phi { ptr, i32 } [ %.pn276, %_ZL20combineSelectToBinOpPN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE.exit ], [ %.merged, %bb.an ], [ %i.hm, %.critedge ], [ %.pn281, %.critedge130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering11lowerBRCONDENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.068.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !361 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !362
  store i64 %i.g, ptr %4, align 8, !tbaa !362
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !363
  store i32 %i.j, ptr %i.h, align 8, !tbaa !364
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149, !nonnull !27, !align !150
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 374
  %.sroa.0.0.copyload.i = load i16, ptr %i.m, align 2, !tbaa !31 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !163
  %i.p = icmp eq i32 %i.o, 222
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !354  ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !500
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !486
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.y, align 8, !tbaa !31 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !487 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i
  %i.z = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.z, i1 false
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !499
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !355
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !624
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !631
  call fastcc void @_ZL23translateSetCCForBranchRKN4llvm5SDLocERNS_7SDValueES4_RNS_3ISD8CondCodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(920) %3)
  %i.af = load i32, ptr %i.a, align 4, !tbaa !631
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.af) #28 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.ag, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !486
  %i.aj = zext i32 %2 to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload.i.i44 = load i16, ptr %i.ak, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.21.0.copyload.i.i46 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i45, align 8, !tbaa !487
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !354 ; 2 uses
  store ptr %.fca.0.extract24, ptr %7, align 8, !tbaa !361
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract25, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i44, ptr %.sroa.21.0.copyload.i.i46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.al, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.am) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ao, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT15isFloatingPointEv.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.ap = add i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i = icmp ult i16 %i.ap, 7
  %i.aq = add i16 %.sroa.0.0.copyload.i.i, -105
  %or.cond3.i.i = icmp ult i16 %i.aq, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.ar = add i16 %.sroa.0.0.copyload.i.i, -195
  %spec.select.i.i = icmp ult i16 %i.ar, 21
  %i.as = or i1 %spec.select.i.i, %or.cond4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.as, label %bb.e, label %bb.f

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.d
  %i.at = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !486
  %i.aw = zext i32 %2 to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.i.i54 = load i16, ptr %i.ax, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.21.0.copyload.i.i56 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i55, align 8, !tbaa !487
  store ptr %.sroa.068.0.copyload, ptr %9, align 8, !tbaa !361
  %.sroa.11.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.e, ptr %.sroa.11.0..sroa_idx76, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 540, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i54, ptr %.sroa.21.0.copyload.i.i56, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.c, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ay) #28
  br label %bb.g

bb.f:                                             ; preds = %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !486
  %i.bc = zext i32 %2 to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i.i59 = load i16, ptr %i.bd, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.21.0.copyload.i.i61 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i60, align 8, !tbaa !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !499
  store ptr %.sroa.068.0.copyload, ptr %11, align 8, !tbaa !361
  %.sroa.11.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.e, ptr %.sroa.11.0..sroa_idx77, align 8
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.be, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.be, 1
  store ptr %.fca.0.extract5, ptr %12, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 22) #28 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.fca.0.extract1, ptr %13, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !354
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i59, ptr %.sroa.21.0.copyload.i.i61, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bh) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.an, %bb.c ], [ %i.az, %bb.e ], [ %i.bi, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
end_hunk_0
begin_hunk_1_@_ZNK4llvm23LoongArchTargetLowering18ReplaceNodeResultsEPNS_6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE:bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.gu, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i1484 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1483, 0
  %.fca.1.insert.i.i1485 = insertvalue { i64, i8 } %.fca.0.insert.i.i1484, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.at:                                            ; preds = %bb.ar
  %i.gw = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %46) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.as, %bb.at
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i1485, %bb.as ], [ %i.gw, %bb.at ] ; 2 uses
  %.fca.1.extract925 = extractvalue { i64, i8 } %.pn.i, 1
  %i.gx = trunc nuw i8 %.fca.1.extract925 to i1
  br i1 %i.gx, label %bb.au, label %_ZNK4llvm8TypeSizecvmEv.exit1486

bb.au:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1486:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract924 = extractvalue { i64, i8 } %.pn.i, 0
  %i.gy = icmp eq i64 %.fca.0.extract924, 16
  br i1 %i.gy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1486
  store ptr %.fca.0.extract928, ptr %62, align 8, !tbaa !361
  %.sroa.5935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 %.fca.1.extract929, ptr %.sroa.5935.0..sroa_idx, align 8, !tbaa !147
  %i.gz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 589, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1481, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %62) #28
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1486
  store ptr %.fca.0.extract928, ptr %63, align 8, !tbaa !361
  %.sroa.5935.0..sroa_idx936 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 %.fca.1.extract929, ptr %.sroa.5935.0..sroa_idx936, align 8, !tbaa !147
  %i.ha = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 590, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1481, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %63) #28
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn2194 = phi { ptr, i32 } [ %i.gz, %bb.av ], [ %i.ha, %bb.aw ] ; 2 uses
  %.sroa.62064.0 = extractvalue { ptr, i32 } %.pn2194, 1
  %.sroa.02063.0 = extractvalue { ptr, i32 } %.pn2194, 0
  %.sroa.0903.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2905.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  store ptr %.sroa.02063.0, ptr %64, align 8, !tbaa !361
  %.sroa.62064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 %.sroa.62064.0, ptr %.sroa.62064.0..sroa_idx, align 8, !tbaa !147
  %i.hb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0903.0.copyload, ptr %.sroa.2905.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %64) #28 ; 2 uses
  %.fca.0.extract899 = extractvalue { ptr, i32 } %i.hb, 0 ; 2 uses
  %.fca.1.extract900 = extractvalue { ptr, i32 } %i.hb, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !567 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !568
  %.not.i1487 = icmp ult i32 %i.hd, %i.hf
  br i1 %.not.i1487, label %bb.az, label %bb.ay, !prof !570

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract899, i32 %.fca.1.extract900)
  br label %.critedge1402

bb.az:                                            ; preds = %bb.ax
  %i.hg = zext i32 %i.hd to i64
  %i.hh = load ptr, ptr %2, align 8, !tbaa !19
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hg ; 2 uses
  store ptr %.fca.0.extract899, ptr %i.hi, align 1
  %.sroa.32.0..sroa_idx.i1488 = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %.fca.1.extract900, ptr %.sroa.32.0..sroa_idx.i1488, align 1
  %i.hj = load i32, ptr %i.hc, align 8, !tbaa !567
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hc, align 8, !tbaa !567
  br label %.critedge1402

bb.ba:                                            ; preds = %bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !354
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !149, !nonnull !27, !align !150
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 374
  %.sroa.0.0.copyload.i1490 = load i16, ptr %i.hp, align 2, !tbaa !31 ; 3 uses
  %i.hq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1490, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.hm) #28 ; 2 uses
  %.fca.0.extract883 = extractvalue { ptr, i32 } %i.hq, 0 ; 2 uses
  %.fca.1.extract884 = extractvalue { ptr, i32 } %i.hq, 1 ; 2 uses
  %i.hr = load i16, ptr %46, align 8, !tbaa !501  ; 2 uses
  %.not.i1491 = icmp eq i16 %i.hr, 0
  br i1 %.not.i1491, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hs = zext i16 %i.hr to i64
  %i.ht = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hs ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 -16
  %.sroa.0.0.copyload.i.i1492 = load i64, ptr %i.hu, align 16
  %.sroa.2.0..sroa_idx.i.i1493 = getelementptr i8, ptr %i.ht, i64 -8
  %.sroa.2.0.copyload.i.i1494 = load i8, ptr %.sroa.2.0..sroa_idx.i.i1493, align 8
  %.fca.0.insert.i.i1495 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1492, 0
  %.fca.1.insert.i.i1496 = insertvalue { i64, i8 } %.fca.0.insert.i.i1495, i8 %.sroa.2.0.copyload.i.i1494, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1498

bb.bc:                                            ; preds = %bb.ba
  %i.hv = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %46) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1498

_ZNK4llvm3EVT13getSizeInBitsEv.exit1498:          ; preds = %bb.bb, %bb.bc
  %.pn.i1497 = phi { i64, i8 } [ %.fca.1.insert.i.i1496, %bb.bb ], [ %i.hv, %bb.bc ] ; 2 uses
  %.fca.1.extract880 = extractvalue { i64, i8 } %.pn.i1497, 1
  %i.hw = trunc nuw i8 %.fca.1.extract880 to i1
  br i1 %i.hw, label %bb.bd, label %_ZNK4llvm8TypeSizecvmEv.exit1499

bb.bd:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1498
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1499:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1498
  %.fca.0.extract879 = extractvalue { i64, i8 } %.pn.i1497, 0
  %i.hx = icmp eq i64 %.fca.0.extract879, 8
  br i1 %i.hx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1499
  store ptr %.fca.0.extract883, ptr %65, align 8, !tbaa !361
  %.sroa.5890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 %.fca.1.extract884, ptr %.sroa.5890.0..sroa_idx, align 8, !tbaa !147
  %i.hy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 537, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1490, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %65) #28
  br label %bb.bg

bb.bf:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1499
  store ptr %.fca.0.extract883, ptr %66, align 8, !tbaa !361
  %.sroa.5890.0..sroa_idx891 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 %.fca.1.extract884, ptr %.sroa.5890.0..sroa_idx891, align 8, !tbaa !147
  %i.hz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 539, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1490, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %66) #28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.be ], [ %i.hz, %bb.bf ] ; 2 uses
  %.sroa.62052.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.02051.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.0858.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2860.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  store ptr %.sroa.02051.0, ptr %67, align 8, !tbaa !361
  %.sroa.62052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i32 %.sroa.62052.0, ptr %.sroa.62052.0..sroa_idx, align 8, !tbaa !147
  %i.ia = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0858.0.copyload, ptr %.sroa.2860.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %67) #28 ; 2 uses
  %.fca.0.extract854 = extractvalue { ptr, i32 } %i.ia, 0 ; 2 uses
  %.fca.1.extract855 = extractvalue { ptr, i32 } %i.ia, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !567 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !568
  %.not.i1500 = icmp ult i32 %i.ic, %i.ie
  br i1 %.not.i1500, label %bb.bi, label %bb.bh, !prof !570

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract854, i32 %.fca.1.extract855)
  br label %.critedge1402

bb.bi:                                            ; preds = %bb.bg
  %i.if = zext i32 %i.ic to i64
  %i.ig = load ptr, ptr %2, align 8, !tbaa !19
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.if ; 2 uses
  store ptr %.fca.0.extract854, ptr %i.ih, align 1
  %.sroa.32.0..sroa_idx.i1501 = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 %.fca.1.extract855, ptr %.sroa.32.0..sroa_idx.i1501, align 1
  %i.ii = load i32, ptr %i.ib, align 8, !tbaa !567
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ib, align 8, !tbaa !567
  br label %.critedge1402

bb.bj:                                            ; preds = %bb.a, %bb.a
  %i.ik = tail call fastcc { ptr, i32 } @_ZL19customLegalizeToWOpPN4llvm6SDNodeERNS_12SelectionDAGEij(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 1, i32 noundef 229) ; 2 uses
  %.fca.0.extract848 = extractvalue { ptr, i32 } %i.ik, 0 ; 2 uses
  %.fca.1.extract849 = extractvalue { ptr, i32 } %i.ik, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !567 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.io = load i32, ptr %i.in, align 4, !tbaa !568
  %.not.i1503 = icmp ult i32 %i.im, %i.io
  br i1 %.not.i1503, label %bb.bl, label %bb.bk, !prof !570

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract848, i32 %.fca.1.extract849)
  br label %.critedge1402

bb.bl:                                            ; preds = %bb.bj
  %i.ip = zext i32 %i.im to i64
  %i.iq = load ptr, ptr %2, align 8, !tbaa !19
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.ip ; 2 uses
  store ptr %.fca.0.extract848, ptr %i.ir, align 1
  %.sroa.32.0..sroa_idx.i1504 = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 %.fca.1.extract849, ptr %.sroa.32.0..sroa_idx.i1504, align 1
  %i.is = load i32, ptr %i.il, align 8, !tbaa !567
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.il, align 8, !tbaa !567
  br label %.critedge1402

bb.bm:                                            ; preds = %bb.a
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !354 ; 23 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %.sroa.02014.0.copyload = load ptr, ptr %i.iw, align 8, !tbaa !361 ; 16 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 88
  %i.ix = load i64, ptr %.sroa.20.0..sroa_idx, align 8 ; 14 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !149, !nonnull !27, !align !150 ; 7 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 374
  %.sroa.0.0.copyload.i1506 = load i16, ptr %i.ja, align 2, !tbaa !31 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !355
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 88
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !356 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !359
  %i.ji = icmp ult i32 %i.jh, 65
  %i.jj = load ptr, ptr %i.jf, align 8
  %spec.select.i.i.i.i = select i1 %i.ji, ptr %i.jf, ptr %i.jj
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !151
  switch i64 %.0.i.i.i.i, label %bb.bn [
    i64 8016, label %bb.bo
    i64 6490, label %bb.bs
    i64 6492, label %bb.bt
    i64 6493, label %bb.bu
    i64 6494, label %bb.bv
    i64 6496, label %bb.bw
    i64 6497, label %bb.bx
    i64 6491, label %bb.by
    i64 6495, label %bb.bz
    i64 6498, label %bb.ca
    i64 6500, label %bb.cc
    i64 6502, label %bb.ce
    i64 6511, label %bb.cg
    i64 6499, label %bb.ci
    i64 6501, label %bb.ck
    i64 6503, label %bb.cm
    i64 6510, label %bb.co
    i64 6512, label %bb.cp
    i64 6513, label %bb.cq
    i64 6489, label %bb.cr
    i64 7276, label %bb.cs
  ]

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 346
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !35, !range !26, !noundef !27
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.35, i64 33, i1 noundef zeroext true)
  br label %.critedge1402

bb.bq:                                            ; preds = %bb.bo
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.02014.0.copyload, i64 88
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !356 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !359
  %i.js = icmp ult i32 %i.jr, 65
  %i.jt = load ptr, ptr %i.jp, align 8
  %spec.select.i.i.i.i1507 = select i1 %i.js, ptr %i.jp, ptr %i.jt
  %.0.i.i.i.i1508 = load i64, ptr %spec.select.i.i.i.i1507, align 8, !tbaa !151
  %i.ju = and i64 %.0.i.i.i.i1508, 4294967295     ; 2 uses
  %i.jv = icmp samesign ult i64 %i.ju, 4
  br i1 %i.jv, label %.thread2182, label %bb.br

.thread2182:                                      ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  store i64 %i.d, ptr %68, align 8, !tbaa !362
  %i.jw = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i32 %i.g, ptr %i.jw, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %71, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.jy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.ju, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1506, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract825 = extractvalue { ptr, i32 } %i.jy, 0
  %.fca.1.extract826 = extractvalue { ptr, i32 } %i.jy, 1
  store ptr %.fca.0.extract825, ptr %i.jx, align 8
  %.sroa.2828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %71, i64 24
  store i32 %.fca.1.extract826, ptr %.sroa.2828.0..sroa_idx, align 8
  store ptr %71, ptr %70, align 8, !tbaa !495
  %i.jz = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 2, ptr %i.jz, align 8, !tbaa !498
  %i.ka = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 580, ptr noundef nonnull align 8 dereferenceable(12) %68, ptr nonnull %69, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %70) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  %.sroa.0816.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2818.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract812 = extractvalue { ptr, i32 } %i.ka, 0 ; 2 uses
  store ptr %.fca.0.extract812, ptr %72, align 8
  %.sroa.2815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i32 0, ptr %.sroa.2815.0..sroa_idx, align 8
  %i.kb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0816.0.copyload, ptr %.sroa.2818.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %72) #28 ; 2 uses
  %.fca.0.extract808 = extractvalue { ptr, i32 } %i.kb, 0
  %.fca.1.extract809 = extractvalue { ptr, i32 } %i.kb, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract808, i32 %.fca.1.extract809)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract812, i32 1)
  br label %.critedge1402

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.33, i64 21, i1 noundef zeroext true)
  br label %.critedge1402

bb.bs:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %75, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %76, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2030 = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2030, align 8
  %i.kd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %76) #28 ; 2 uses
  %.fca.0.extract794 = extractvalue { ptr, i32 } %i.kd, 0
  %.fca.1.extract795 = extractvalue { ptr, i32 } %i.kd, 1
  store ptr %.fca.0.extract794, ptr %i.kc, align 8
  %.sroa.2797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %75, i64 24
  store i32 %.fca.1.extract795, ptr %.sroa.2797.0..sroa_idx, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %75, i64 32
  %i.kf = load ptr, ptr %i.iu, align 8, !tbaa !354
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 120
  %i.kh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.kg) #28 ; 2 uses
  %.fca.0.extract790 = extractvalue { ptr, i32 } %i.kh, 0
  %.fca.1.extract791 = extractvalue { ptr, i32 } %i.kh, 1
  store ptr %.fca.0.extract790, ptr %i.ke, align 8
  %.sroa.2793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %75, i64 40
  store i32 %.fca.1.extract791, ptr %.sroa.2793.0..sroa_idx, align 8
  store ptr %75, ptr %74, align 8, !tbaa !495
  %i.ki = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i64 3, ptr %i.ki, align 8, !tbaa !498
  %i.kj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 555, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %73, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %74) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  %.sroa.0781.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2783.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract777 = extractvalue { ptr, i32 } %i.kj, 0 ; 2 uses
  store ptr %.fca.0.extract777, ptr %77, align 8
  %.sroa.2780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i32 0, ptr %.sroa.2780.0..sroa_idx, align 8
  %i.kk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0781.0.copyload, ptr %.sroa.2783.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %77) #28 ; 2 uses
  %.fca.0.extract773 = extractvalue { ptr, i32 } %i.kk, 0
  %.fca.1.extract774 = extractvalue { ptr, i32 } %i.kk, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract773, i32 %.fca.1.extract774)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract777, i32 1)
  br label %.critedge1402

bb.bt:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %80, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %80, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %81, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2031 = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2031, align 8
  %i.km = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %81) #28 ; 2 uses
  %.fca.0.extract759 = extractvalue { ptr, i32 } %i.km, 0
  %.fca.1.extract760 = extractvalue { ptr, i32 } %i.km, 1
  store ptr %.fca.0.extract759, ptr %i.kl, align 8
  %.sroa.2762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %80, i64 24
  store i32 %.fca.1.extract760, ptr %.sroa.2762.0..sroa_idx, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %80, i64 32
  %i.ko = load ptr, ptr %i.iu, align 8, !tbaa !354
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 120
  %i.kq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.kp) #28 ; 2 uses
  %.fca.0.extract755 = extractvalue { ptr, i32 } %i.kq, 0
  %.fca.1.extract756 = extractvalue { ptr, i32 } %i.kq, 1
  store ptr %.fca.0.extract755, ptr %i.kn, align 8
  %.sroa.2758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %80, i64 40
  store i32 %.fca.1.extract756, ptr %.sroa.2758.0..sroa_idx, align 8
  store ptr %80, ptr %79, align 8, !tbaa !495
  %i.kr = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 3, ptr %i.kr, align 8, !tbaa !498
  %i.ks = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 557, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %78, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %79) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28
  %.sroa.0746.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2748.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract742 = extractvalue { ptr, i32 } %i.ks, 0 ; 2 uses
  store ptr %.fca.0.extract742, ptr %82, align 8
  %.sroa.2745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i32 0, ptr %.sroa.2745.0..sroa_idx, align 8
  %i.kt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0746.0.copyload, ptr %.sroa.2748.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %82) #28 ; 2 uses
  %.fca.0.extract738 = extractvalue { ptr, i32 } %i.kt, 0
  %.fca.1.extract739 = extractvalue { ptr, i32 } %i.kt, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract738, i32 %.fca.1.extract739)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract742, i32 1)
  br label %.critedge1402

bb.bu:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %85, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %86, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2032 = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2032, align 8
  %i.kv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %86) #28 ; 2 uses
  %.fca.0.extract724 = extractvalue { ptr, i32 } %i.kv, 0
  %.fca.1.extract725 = extractvalue { ptr, i32 } %i.kv, 1
  store ptr %.fca.0.extract724, ptr %i.ku, align 8
  %.sroa.2727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %85, i64 24
  store i32 %.fca.1.extract725, ptr %.sroa.2727.0..sroa_idx, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %85, i64 32
  %i.kx = load ptr, ptr %i.iu, align 8, !tbaa !354
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 120
  %i.kz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ky) #28 ; 2 uses
  %.fca.0.extract720 = extractvalue { ptr, i32 } %i.kz, 0
  %.fca.1.extract721 = extractvalue { ptr, i32 } %i.kz, 1
  store ptr %.fca.0.extract720, ptr %i.kw, align 8
  %.sroa.2723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %85, i64 40
  store i32 %.fca.1.extract721, ptr %.sroa.2723.0..sroa_idx, align 8
  store ptr %85, ptr %84, align 8, !tbaa !495
  %i.la = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 3, ptr %i.la, align 8, !tbaa !498
  %i.lb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 558, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %83, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %84) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  %.sroa.0711.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2713.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract707 = extractvalue { ptr, i32 } %i.lb, 0 ; 2 uses
  store ptr %.fca.0.extract707, ptr %87, align 8
  %.sroa.2710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %87, i64 8
  store i32 0, ptr %.sroa.2710.0..sroa_idx, align 8
  %i.lc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0711.0.copyload, ptr %.sroa.2713.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %87) #28 ; 2 uses
  %.fca.0.extract703 = extractvalue { ptr, i32 } %i.lc, 0
  %.fca.1.extract704 = extractvalue { ptr, i32 } %i.lc, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract703, i32 %.fca.1.extract704)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract707, i32 1)
  br label %.critedge1402

bb.bv:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %90, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %90, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %91, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2033 = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2033, align 8
  %i.le = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %91) #28 ; 2 uses
  %.fca.0.extract689 = extractvalue { ptr, i32 } %i.le, 0
  %.fca.1.extract690 = extractvalue { ptr, i32 } %i.le, 1
  store ptr %.fca.0.extract689, ptr %i.ld, align 8
  %.sroa.2692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %90, i64 24
  store i32 %.fca.1.extract690, ptr %.sroa.2692.0..sroa_idx, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %90, i64 32
  %i.lg = load ptr, ptr %i.iu, align 8, !tbaa !354
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 120
  %i.li = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.lh) #28 ; 2 uses
  %.fca.0.extract685 = extractvalue { ptr, i32 } %i.li, 0
  %.fca.1.extract686 = extractvalue { ptr, i32 } %i.li, 1
  store ptr %.fca.0.extract685, ptr %i.lf, align 8
  %.sroa.2688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %90, i64 40
  store i32 %.fca.1.extract686, ptr %.sroa.2688.0..sroa_idx, align 8
  store ptr %90, ptr %89, align 8, !tbaa !495
  %i.lj = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 3, ptr %i.lj, align 8, !tbaa !498
  %i.lk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %88, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %89) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  %.sroa.0676.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2678.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract672 = extractvalue { ptr, i32 } %i.lk, 0 ; 2 uses
  store ptr %.fca.0.extract672, ptr %92, align 8
  %.sroa.2675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %92, i64 8
  store i32 0, ptr %.sroa.2675.0..sroa_idx, align 8
  %i.ll = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0676.0.copyload, ptr %.sroa.2678.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %92) #28 ; 2 uses
  %.fca.0.extract668 = extractvalue { ptr, i32 } %i.ll, 0
  %.fca.1.extract669 = extractvalue { ptr, i32 } %i.ll, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract668, i32 %.fca.1.extract669)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract672, i32 1)
  br label %.critedge1402

bb.bw:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %93, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %95, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %95, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %96, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2034 = getelementptr inbounds nuw i8, ptr %96, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2034, align 8
  %i.ln = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %96) #28 ; 2 uses
  %.fca.0.extract654 = extractvalue { ptr, i32 } %i.ln, 0
  %.fca.1.extract655 = extractvalue { ptr, i32 } %i.ln, 1
  store ptr %.fca.0.extract654, ptr %i.lm, align 8
  %.sroa.2657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %95, i64 24
  store i32 %.fca.1.extract655, ptr %.sroa.2657.0..sroa_idx, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %95, i64 32
  %i.lp = load ptr, ptr %i.iu, align 8, !tbaa !354
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 120
  %i.lr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.lq) #28 ; 2 uses
  %.fca.0.extract650 = extractvalue { ptr, i32 } %i.lr, 0
  %.fca.1.extract651 = extractvalue { ptr, i32 } %i.lr, 1
  store ptr %.fca.0.extract650, ptr %i.lo, align 8
  %.sroa.2653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %95, i64 40
  store i32 %.fca.1.extract651, ptr %.sroa.2653.0..sroa_idx, align 8
  store ptr %95, ptr %94, align 8, !tbaa !495
  %i.ls = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i64 3, ptr %i.ls, align 8, !tbaa !498
  %i.lt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 553, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %93, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %94) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  %.sroa.0641.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2643.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract637 = extractvalue { ptr, i32 } %i.lt, 0 ; 2 uses
  store ptr %.fca.0.extract637, ptr %97, align 8
  %.sroa.2640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 0, ptr %.sroa.2640.0..sroa_idx, align 8
  %i.lu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0641.0.copyload, ptr %.sroa.2643.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %97) #28 ; 2 uses
  %.fca.0.extract633 = extractvalue { ptr, i32 } %i.lu, 0
  %.fca.1.extract634 = extractvalue { ptr, i32 } %i.lu, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract633, i32 %.fca.1.extract634)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract637, i32 1)
  br label %.critedge1402

bb.bx:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %98, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %100, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %100, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %101, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2035 = getelementptr inbounds nuw i8, ptr %101, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2035, align 8
  %i.lw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %101) #28 ; 2 uses
  %.fca.0.extract619 = extractvalue { ptr, i32 } %i.lw, 0
  %.fca.1.extract620 = extractvalue { ptr, i32 } %i.lw, 1
  store ptr %.fca.0.extract619, ptr %i.lv, align 8
  %.sroa.2622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %100, i64 24
  store i32 %.fca.1.extract620, ptr %.sroa.2622.0..sroa_idx, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %100, i64 32
  %i.ly = load ptr, ptr %i.iu, align 8, !tbaa !354
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 120
  %i.ma = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.lz) #28 ; 2 uses
  %.fca.0.extract615 = extractvalue { ptr, i32 } %i.ma, 0
  %.fca.1.extract616 = extractvalue { ptr, i32 } %i.ma, 1
  store ptr %.fca.0.extract615, ptr %i.lx, align 8
  %.sroa.2618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %100, i64 40
  store i32 %.fca.1.extract616, ptr %.sroa.2618.0..sroa_idx, align 8
  store ptr %100, ptr %99, align 8, !tbaa !495
  %i.mb = getelementptr inbounds nuw i8, ptr %99, i64 8
  store i64 3, ptr %i.mb, align 8, !tbaa !498
  %i.mc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 554, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %98, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %99) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  %.sroa.0606.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2608.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract602 = extractvalue { ptr, i32 } %i.mc, 0 ; 2 uses
  store ptr %.fca.0.extract602, ptr %102, align 8
  %.sroa.2605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i32 0, ptr %.sroa.2605.0..sroa_idx, align 8
  %i.md = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0606.0.copyload, ptr %.sroa.2608.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %102) #28 ; 2 uses
  %.fca.0.extract598 = extractvalue { ptr, i32 } %i.md, 0
  %.fca.1.extract599 = extractvalue { ptr, i32 } %i.md, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract598, i32 %.fca.1.extract599)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract602, i32 1)
  br label %.critedge1402

bb.by:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %105, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %105, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %i.me, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2042.a = getelementptr inbounds nuw i8, ptr %105, i64 24
  %.sroa.20.0.extract.trunc = trunc i64 %i.ix to i32
  store i32 %.sroa.20.0.extract.trunc, ptr %.sroa.20.0..sroa_idx2042.a, align 8, !tbaa !147
  %i.mf = getelementptr inbounds nuw i8, ptr %105, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  %i.mh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.mg) #28 ; 2 uses
  %.fca.0.extract584 = extractvalue { ptr, i32 } %i.mh, 0
  %.fca.1.extract585 = extractvalue { ptr, i32 } %i.mh, 1
  store ptr %.fca.0.extract584, ptr %i.mf, align 8
  %.sroa.2587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %105, i64 40
  store i32 %.fca.1.extract585, ptr %.sroa.2587.0..sroa_idx, align 8
  store ptr %105, ptr %104, align 8, !tbaa !495
  %i.mi = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i64 3, ptr %i.mi, align 8, !tbaa !498
  %i.mj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 556, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %103, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %104) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #28
  %.sroa.0575.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2577.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract571 = extractvalue { ptr, i32 } %i.mj, 0 ; 2 uses
  store ptr %.fca.0.extract571, ptr %106, align 8
  %.sroa.2574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 8
  store i32 0, ptr %.sroa.2574.0..sroa_idx, align 8
  %i.mk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0575.0.copyload, ptr %.sroa.2577.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %106) #28 ; 2 uses
  %.fca.0.extract567 = extractvalue { ptr, i32 } %i.mk, 0
  %.fca.1.extract568 = extractvalue { ptr, i32 } %i.mk, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract567, i32 %.fca.1.extract568)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract571, i32 1)
  br label %.critedge1402

bb.bz:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %107, ptr noundef nonnull align 8 dereferenceable(32) @constinit.51, i64 32, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %109, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %109, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %i.ml, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2043 = getelementptr inbounds nuw i8, ptr %109, i64 24
  %.sroa.20.0.extract.trunc2057 = trunc i64 %i.ix to i32
  store i32 %.sroa.20.0.extract.trunc2057, ptr %.sroa.20.0..sroa_idx2043, align 8, !tbaa !147
  %i.mm = getelementptr inbounds nuw i8, ptr %109, i64 32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  %i.mo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.mn) #28 ; 2 uses
  %.fca.0.extract553 = extractvalue { ptr, i32 } %i.mo, 0
  %.fca.1.extract554 = extractvalue { ptr, i32 } %i.mo, 1
  store ptr %.fca.0.extract553, ptr %i.mm, align 8
  %.sroa.2556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %109, i64 40
  store i32 %.fca.1.extract554, ptr %.sroa.2556.0..sroa_idx, align 8
  store ptr %109, ptr %108, align 8, !tbaa !495
  %i.mp = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i64 3, ptr %i.mp, align 8, !tbaa !498
  %i.mq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 552, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %107, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %108) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  %.sroa.0544.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2546.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract540 = extractvalue { ptr, i32 } %i.mq, 0 ; 2 uses
  store ptr %.fca.0.extract540, ptr %110, align 8
  %.sroa.2543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i32 0, ptr %.sroa.2543.0..sroa_idx, align 8
  %i.mr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0544.0.copyload, ptr %.sroa.2546.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %110) #28 ; 2 uses
  %.fca.0.extract536 = extractvalue { ptr, i32 } %i.mr, 0
  %.fca.1.extract537 = extractvalue { ptr, i32 } %i.mr, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract536, i32 %.fca.1.extract537)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract540, i32 1)
  br label %.critedge1402

bb.ca:                                            ; preds = %bb.bm
  %i.ms = getelementptr inbounds nuw i8, ptr %i.iz, i64 354
  %i.mt = load i8, ptr %i.ms, align 2, !tbaa !146, !range !26, !noundef !27
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %.critedge1402, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.34, i64 20, i1 noundef zeroext true)
  br label %.critedge1402

bb.cc:                                            ; preds = %bb.bm
  %i.mv = getelementptr inbounds nuw i8, ptr %i.iz, i64 354
  %i.mw = load i8, ptr %i.mv, align 2, !tbaa !146, !range !26, !noundef !27
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %.critedge1402, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.34, i64 20, i1 noundef zeroext true)
  br label %.critedge1402

bb.ce:                                            ; preds = %bb.bm
  %i.my = getelementptr inbounds nuw i8, ptr %i.iz, i64 354
  %i.mz = load i8, ptr %i.my, align 2, !tbaa !146, !range !26, !noundef !27
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %.critedge1402, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.34, i64 20, i1 noundef zeroext true)
  br label %.critedge1402

bb.cg:                                            ; preds = %bb.bm
  %i.nb = getelementptr inbounds nuw i8, ptr %i.iz, i64 354
  %i.nc = load i8, ptr %i.nb, align 2, !tbaa !146, !range !26, !noundef !27
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %.critedge1402, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.34, i64 20, i1 noundef zeroext true)
  br label %.critedge1402

bb.ci:                                            ; preds = %bb.bm
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.02014.0.copyload, i64 88
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !356 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !359
  %i.nj = icmp ult i32 %i.ni, 65
  %i.nk = load ptr, ptr %i.ng, align 8
  %spec.select.i.i.i.i1545 = select i1 %i.nj, ptr %i.ng, ptr %i.nk
  %.0.i.i.i.i1546 = load i64, ptr %spec.select.i.i.i.i1545, align 8, !tbaa !151
  %i.nl = and i64 %.0.i.i.i.i1546, 4294967295     ; 2 uses
  %i.nm = icmp samesign ult i64 %i.nl, 16384
  br i1 %i.nm, label %.thread2183, label %bb.cj

.thread2183:                                      ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #28
  store i16 %.sroa.0.0.copyload.i1506, ptr %111, align 8, !tbaa !31
  %i.nn = getelementptr inbounds nuw i8, ptr %111, i64 8
  store ptr null, ptr %i.nn, align 8, !tbaa !492
  %i.no = getelementptr inbounds nuw i8, ptr %111, i64 16
  store i16 1, ptr %i.no, align 8, !tbaa !494
  %i.np = getelementptr inbounds nuw i8, ptr %111, i64 24
  store ptr null, ptr %i.np, align 8, !tbaa !492
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %113, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.nr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.nl, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1506, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract508 = extractvalue { ptr, i32 } %i.nr, 0
  %.fca.1.extract509 = extractvalue { ptr, i32 } %i.nr, 1
  store ptr %.fca.0.extract508, ptr %i.nq, align 8
  %.sroa.2511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %113, i64 24
  store i32 %.fca.1.extract509, ptr %.sroa.2511.0..sroa_idx, align 8
  store ptr %113, ptr %112, align 8, !tbaa !495
  %i.ns = getelementptr inbounds nuw i8, ptr %112, i64 8
  store i64 2, ptr %i.ns, align 8, !tbaa !498
  %i.nt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 559, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %111, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %112) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #28
  %.sroa.0499.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2501.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract495 = extractvalue { ptr, i32 } %i.nt, 0 ; 2 uses
  store ptr %.fca.0.extract495, ptr %114, align 8
  %.sroa.2498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %114, i64 8
  store i32 0, ptr %.sroa.2498.0..sroa_idx, align 8
  %i.nu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0499.0.copyload, ptr %.sroa.2501.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %114) #28 ; 2 uses
  %.fca.0.extract491 = extractvalue { ptr, i32 } %i.nu, 0
  %.fca.1.extract492 = extractvalue { ptr, i32 } %i.nu, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract491, i32 %.fca.1.extract492)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract495, i32 1)
  br label %.critedge1402

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.33, i64 21, i1 noundef zeroext true)
  br label %.critedge1402

bb.ck:                                            ; preds = %bb.bm
  %i.nv = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !355
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 88
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !356 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !359
  %i.oc = icmp ult i32 %i.ob, 65
  %i.od = load ptr, ptr %i.nz, align 8
  %spec.select.i.i.i.i1551 = select i1 %i.oc, ptr %i.nz, ptr %i.od
  %.0.i.i.i.i1552 = load i64, ptr %spec.select.i.i.i.i1551, align 8, !tbaa !151
  %i.oe = and i64 %.0.i.i.i.i1552, 4294967295     ; 2 uses
  %i.of = icmp samesign ult i64 %i.oe, 16384
  br i1 %i.of, label %.thread2184, label %bb.cl

.thread2184:                                      ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #28
  store i16 %.sroa.0.0.copyload.i1506, ptr %115, align 8, !tbaa !31
  %i.og = getelementptr inbounds nuw i8, ptr %115, i64 8
  store ptr null, ptr %i.og, align 8, !tbaa !492
  %i.oh = getelementptr inbounds nuw i8, ptr %115, i64 16
  store i16 1, ptr %i.oh, align 8, !tbaa !494
  %i.oi = getelementptr inbounds nuw i8, ptr %115, i64 24
  store ptr null, ptr %i.oi, align 8, !tbaa !492
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %117, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %117, i64 16
  store ptr %.sroa.02014.0.copyload, ptr %118, align 8, !tbaa !361
  %.sroa.20.0..sroa_idx2036 = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i64 %i.ix, ptr %.sroa.20.0..sroa_idx2036, align 8
  %i.ok = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %118) #28 ; 2 uses
  %.fca.0.extract472 = extractvalue { ptr, i32 } %i.ok, 0
  %.fca.1.extract473 = extractvalue { ptr, i32 } %i.ok, 1
  store ptr %.fca.0.extract472, ptr %i.oj, align 8
  %.sroa.2475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %117, i64 24
  store i32 %.fca.1.extract473, ptr %.sroa.2475.0..sroa_idx, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %117, i64 32
  %i.om = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.oe, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0.0.copyload.i1506, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract467 = extractvalue { ptr, i32 } %i.om, 0
  %.fca.1.extract468 = extractvalue { ptr, i32 } %i.om, 1
  store ptr %.fca.0.extract467, ptr %i.ol, align 8
  %.sroa.2470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %117, i64 40
  store i32 %.fca.1.extract468, ptr %.sroa.2470.0..sroa_idx, align 8
  store ptr %117, ptr %116, align 8, !tbaa !495
  %i.on = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i64 3, ptr %i.on, align 8, !tbaa !498
  %i.oo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 560, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr nonnull %115, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %116) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #28
  %.sroa.0458.0.copyload = load i16, ptr %46, align 8, !tbaa !31
  %.sroa.2460.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !487
  %.fca.0.extract454 = extractvalue { ptr, i32 } %i.oo, 0 ; 2 uses
  store ptr %.fca.0.extract454, ptr %119, align 8
  %.sroa.2457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i32 0, ptr %.sroa.2457.0..sroa_idx, align 8
  %i.op = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %45, i16 %.sroa.0458.0.copyload, ptr %.sroa.2460.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %119) #28 ; 2 uses
  %.fca.0.extract450 = extractvalue { ptr, i32 } %i.op, 0
  %.fca.1.extract451 = extractvalue { ptr, i32 } %i.op, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract450, i32 %.fca.1.extract451)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract454, i32 1)
  br label %.critedge1402

bb.cl:                                            ; preds = %bb.ck
  tail call fastcc void @_ZL35emitErrorAndReplaceIntrinsicResultsPN4llvm6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGENS_9StringRefEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull @.str.33, i64 21, i1 noundef zeroext true)
  br label %.critedge1402

bb.cm:                                            ; preds = %bb.bm
  %i.oq = getelementptr inbounds nuw i8, ptr %i.iv, i64 160
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !355
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 88
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !356 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !359
  %i.ox = icmp ult i32 %i.ow, 65
  %i.oy = load ptr, ptr %i.ou, align 8
  %spec.select.i.i.i.i1557 = select i1 %i.ox, ptr %i.ou, ptr %i.oy
end_hunk_1
begin_hunk_2_@_ZN4llvm11SmallVectorIiLj16EEC2EmRKi:bb.a

_ZN4llvm15SmallVectorImplIiE6assignEmi.exit:      ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %middle.block16, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i
  %storemerge = trunc i64 %1 to i32
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !567
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %2 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load ptr, ptr %0, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !500
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !486
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !31 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !487 ; 2 uses
  %.fca.0.insert.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.h, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.i = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.i, 197
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.a
  %i.j = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  br i1 %i.j, label %bb.c, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.b:                                             ; preds = %.split.i
  %i.k = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.l = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !31
  %i.o = insertvalue { i16, ptr } poison, i16 %i.n, 0
  %i.p = insertvalue { i16, ptr } %i.o, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.q = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.b, %bb.c
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.q, %bb.c ], [ %i.p, %bb.b ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.fca.1.insert.i.i, %.split.i ] ; 2 uses
  %i.r = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  store i16 %i.r, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.t, ptr %i.s, align 8
  %.not.i.i1 = icmp eq i16 %i.r, 0
  br i1 %.not.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.u = zext i16 %i.r to i64
  %i.v = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.w, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.x = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #31
  %i.y = extractvalue { i64, i8 } %i.x, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit:         ; preds = %bb.d, %bb.e
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i64 %.pn.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm23LoongArchTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 14 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %19 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %21 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %23 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %28 = alloca %"class.llvm::SDLoc", align 8      ; 11 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %34 = alloca %"class.llvm::ArrayRef.201", align 8 ; 5 uses
  %35 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %39 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %40 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %41 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %42 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %43 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %48 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %49 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %50 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %51 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %52 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %53 = alloca %"struct.llvm::EVT", align 8       ; 12 uses
  %54 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %56 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %57 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %58 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %60 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %61 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %62 = alloca %"struct.llvm::EVT", align 8       ; 11 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %65 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %66 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %69 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %70 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %71 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %72 = alloca %"class.llvm::SDLoc", align 8      ; 14 uses
  %73 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %74 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %75 = alloca %"struct.std::pair.179", align 8   ; 7 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %78 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %80 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %81 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %82 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %85 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %86 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %87 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %88 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %89 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %90 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %91 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %92 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %93 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %94 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %95 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %97 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %98 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %99 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %100 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %101 = alloca %"struct.llvm::EVT", align 8      ; 13 uses
  %102 = alloca %"class.llvm::SDLoc", align 8     ; 33 uses
  %103 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %104 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %105 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %106 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %107 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %108 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %109 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %110 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %111 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %112 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %113 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %114 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %115 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %116 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %117 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %118 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %119 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %120 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %121 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %122 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %123 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %124 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %125 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %126 = alloca %"struct.llvm::KnownBits", align 8 ; 9 uses
  %127 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %128 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %129 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %130 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %131 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %132 = alloca %"struct.llvm::KnownBits", align 8 ; 9 uses
  %133 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %134 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %135 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %136 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %137 = alloca %"class.llvm::APInt", align 8     ; 15 uses
  %138 = alloca %"struct.llvm::KnownBits", align 8 ; 15 uses
  %139 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %140 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %141 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %142 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %143 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %144 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %145 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %146 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %147 = alloca %"struct.llvm::EVT", align 8      ; 9 uses
  %148 = alloca %"class.llvm::SDLoc", align 8     ; 10 uses
  %149 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %150 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %151 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %152 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %153 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %154 = alloca %"struct.llvm::EVT", align 8      ; 10 uses
  %155 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %156 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %157 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %158 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %159 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %160 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %161 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %162 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !847, !nonnull !27, !align !150 ; 125 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163  ; 2 uses
  switch i32 %i.h, label %bb.pd [
    i32 59, label %bb.b
    i32 193, label %bb.an
    i32 194, label %bb.bk
    i32 222, label %bb.ez
    i32 198, label %bb.fp
    i32 200, label %bb.gl
    i32 60, label %bb.gr
    i32 248, label %bb.gs
    i32 229, label %bb.iv
    i32 228, label %bb.iv
    i32 227, label %bb.iv
    i32 234, label %bb.jm
    i32 235, label %bb.kn
    i32 240, label %bb.kp
    i32 241, label %bb.kp
    i32 539, label %bb.lg
    i32 542, label %bb.lj
    i32 592, label %bb.ll
    i32 48, label %bb.mc
    i32 586, label %bb.md
    i32 581, label %bb.mf
    i32 555, label %bb.mh
    i32 557, label %bb.mh
    i32 551, label %bb.mh
    i32 553, label %bb.mh
    i32 625, label %bb.mh
    i32 649, label %bb.mh
    i32 595, label %bb.mn
    i32 604, label %bb.ng
    i32 165, label %bb.ny
    i32 220, label %bb.oc
    i32 627, label %bb.pc
    i32 629, label %bb.pc
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149, !nonnull !27, !align !150
  %i.k = getelementptr i8, ptr %i.j, i64 350
  %.val = load i8, ptr %i.k, align 2, !tbaa !140, !range !26, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %158)
  call void @llvm.lifetime.start.p0(ptr nonnull %160)
  call void @llvm.lifetime.start.p0(ptr nonnull %161)
  %i.l = tail call fastcc { ptr, i32 } @_ZL27performHorizWideningCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(920) %i.f, i8 %.val) ; 2 uses
  %.fca.0.extract38.i = extractvalue { ptr, i32 } %i.l, 0 ; 2 uses
  %.fca.1.extract39.i = extractvalue { ptr, i32 } %i.l, 1
  %.not.i = icmp eq ptr %.fca.0.extract38.i, null
  br i1 %.not.i, label %bb.c, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !850
  %i.o = icmp slt i32 %i.n, 2
  br i1 %i.o, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !486  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.q, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !487
  %i.r = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.r, 197
  br i1 %spec.select.i.i.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !750
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = zext nneg i16 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %.not44.i = icmp eq ptr %i.x, null
  br i1 %.not44.i, label %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i:     ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #28
  %i.y = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 6 uses
  store i16 %i.aa, ptr %154, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %154, i64 8
  store ptr null, ptr %i.ab, align 8
  %.not.i55.i = icmp eq i16 %i.aa, 0              ; 2 uses
  br i1 %.not.i55.i, label %_ZNK4llvm3EVT9isIntegerEv.exit.i, label %.split43.i

.split43.i:                                       ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.ac = add i16 %i.aa, -2
  %or.cond.i.i.i = icmp ult i16 %i.ac, 10
  %i.ad = add i16 %i.aa, -19
  %or.cond3.i.i.i = icmp ult i16 %i.ad, 86
  %or.cond4.i.i.i = or i1 %or.cond.i.i.i, %or.cond3.i.i.i
  %i.ae = add i16 %i.aa, -163
  %spec.select.i.i56.i = icmp ult i16 %i.ae, 32
  %i.af = or i1 %spec.select.i.i56.i, %or.cond4.i.i.i
  br i1 %i.af, label %bb.e, label %bb.am

_ZNK4llvm3EVT9isIntegerEv.exit.i:                 ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.ag = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %154) #31
  br i1 %i.ag, label %bb.e, label %bb.am

bb.e:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit.i, %.split43.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !354 ; 2 uses
  %.sroa.039.0.copyload.i = load ptr, ptr %i.ai, align 8, !tbaa !361 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.036.0.copyload.i = load ptr, ptr %i.aj, align 8, !tbaa !361 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload.i, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !163
  %i.am = icmp eq i32 %i.al, 193
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !163
  %i.ap = icmp eq i32 %i.ao, 193
  br i1 %i.ap, label %bb.g, label %bb.am

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.028.0.i = phi ptr [ %.sroa.039.0.copyload.i, %bb.e ], [ %.sroa.036.0.copyload.i, %bb.f ]
  %.sroa.020.0.i = phi ptr [ %.sroa.036.0.copyload.i, %bb.e ], [ %.sroa.039.0.copyload.i, %bb.f ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !163
  %.off.i = add i32 %i.ar, -199
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.h, label %bb.am

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !354 ; 4 uses
  %.sroa.011.0.copyload.i = load ptr, ptr %i.at, align 8, !tbaa !361 ; 3 uses
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.au = load <2 x i32>, ptr %.sroa.614.0..sroa_idx.i, align 8
  %.sroa.614.0.copyload.i = load i32, ptr %.sroa.614.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.028.0.copyload.i = load ptr, ptr %i.av, align 8, !tbaa !361 ; 2 uses
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.aw = load <2 x i32>, ptr %.sroa.530.0..sroa_idx.i, align 8
  %.sroa.530.0.copyload.i = load i32, ptr %.sroa.530.0..sroa_idx.i, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %155, i64 8 ; 3 uses
  store i32 1, ptr %i.ax, align 8, !tbaa !359
  store i64 0, ptr %155, align 8, !tbaa !151
  br i1 %.not.i55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_2
begin_hunk_3_@_ZNK4llvm23LoongArchTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.gz = getelementptr i8, ptr %i.gy, i64 -16
  %.sroa.0.0.copyload.i.i100.i = load i64, ptr %i.gz, align 16
  %.sroa.2.0..sroa_idx.i.i101.i = getelementptr i8, ptr %i.gy, i64 -8
  %.sroa.2.0.copyload.i.i102.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i101.i, align 8
  %.fca.0.insert.i.i103.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i100.i, 0
  %.fca.1.insert.i.i104.i = insertvalue { i64, i8 } %.fca.0.insert.i.i103.i, i8 %.sroa.2.0.copyload.i.i102.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit106.i

bb.bd:                                            ; preds = %bb.bb
  %i.ha = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %147) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit106.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit106.i:         ; preds = %bb.bd, %bb.bc
  %.pn.i105.i = phi { i64, i8 } [ %.fca.1.insert.i.i104.i, %bb.bc ], [ %i.ha, %bb.bd ] ; 2 uses
  %.fca.1.extract38.i = extractvalue { i64, i8 } %.pn.i105.i, 1
  %i.hb = trunc nuw i8 %.fca.1.extract38.i to i1
  br i1 %i.hb, label %bb.be, label %_ZNK4llvm8TypeSizecvmEv.exit107.i

bb.be:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit106.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit107.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit106.i
  %.fca.0.extract37.i = extractvalue { i64, i8 } %.pn.i105.i, 0
  %i.hc = icmp ult i64 %.fca.0.extract37.i, %i.gv
  br i1 %i.hc, label %.critedge.i184, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit107.i
  %.not83.i = icmp eq i64 %i.fw, 0
  br i1 %.not83.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload.i, i64 56
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !630 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not4.i.i.i, label %_ZNK4llvm6SDNode8use_sizeEv.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bg, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.hh, %.lr.ph.i.i.i ], [ 0, %bb.bg ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i ], [ %i.he, %bb.bg ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !854 ; 2 uses
  %i.hh = add nuw nsw i64 %.06.i.i.i, 1
  %.not.i.i108.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i108.i, label %_ZNK4llvm6SDNode8use_sizeEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !855

_ZNK4llvm6SDNode8use_sizeEv.exit.i:               ; preds = %.lr.ph.i.i.i
  %i.hi = icmp samesign ugt i64 %.06.i.i.i, 1
  %i.hj = and i64 %.0.i.i.i91.i, 4095
  %i.hk = icmp eq i64 %i.hj, 0
  %or.cond50.i = or i1 %i.hk, %i.hi
  br i1 %or.cond50.i, label %.critedge.i184, label %bb.bh

_ZNK4llvm6SDNode8use_sizeEv.exit.thread.i:        ; preds = %bb.bg
  %.old.i = and i64 %.0.i.i.i91.i, 4095
  %.old49.i = icmp eq i64 %.old.i, 0
  br i1 %.old49.i, label %.critedge.i184, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4llvm6SDNode8use_sizeEv.exit.thread.i, %_ZNK4llvm6SDNode8use_sizeEv.exit.i
  br i1 %i.fo, label %bb.bi, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i

bb.bi:                                            ; preds = %bb.bh
  %i.hl = icmp ne i32 %i.fn, 0
  %i.hm = sub nuw nsw i32 64, %i.fn
  %i.hn = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.ho = shl i64 %i.fq, %i.hn
  %i.hp = ashr exact i64 %i.ho, %i.hn             ; 2 uses
  %i.hq = icmp sgt i64 %i.hp, -2049
  %or.cond52.i = select i1 %i.hl, i1 %i.hq, i1 false
  br i1 %or.cond52.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i: ; preds = %bb.bh
  %i.hr = load i64, ptr %i.fp, align 8, !tbaa !488 ; 2 uses
  %i.hs = icmp sgt i64 %i.hr, -2049
  br i1 %i.hs, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i, %bb.bi
  %.0.i.i.i112.i = phi i64 [ %i.hp, %bb.bi ], [ %i.hr, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i ]
  %i.ht = icmp slt i64 %.0.i.i.i112.i, 0
  br i1 %i.ht, label %.critedge.i184, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i, %bb.bi, %bb.bf, %bb.az
  %.sroa.028.0.copyload.i189 = phi i16 [ %i.gn, %bb.az ], [ %i.gw, %bb.bi ], [ %i.gw, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i ], [ %i.gw, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i ], [ %i.gw, %bb.bf ]
  %.sroa.610.0.i = phi i32 [ %.sroa.610.0.copyload12.i, %bb.az ], [ %.sroa.727.0.copyload.i, %bb.bi ], [ %.sroa.727.0.copyload.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i ], [ %.sroa.727.0.copyload.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i ], [ %.sroa.727.0.copyload.i, %bb.bf ]
  %.sroa.07.0.i = phi ptr [ %.sroa.07.0.copyload8.i, %bb.az ], [ %.sroa.024.0.copyload.i, %bb.bi ], [ %.sroa.024.0.copyload.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i ], [ %.sroa.024.0.copyload.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i ], [ %.sroa.024.0.copyload.i, %bb.bf ]
  %.0.i = phi i64 [ %.0.i.i.i94.i, %bb.az ], [ %i.fw, %bb.bi ], [ %i.fw, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread44.i ], [ %i.fw, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i ], [ 0, %bb.bf ] ; 4 uses
  %i.hu = add nsw i64 %i.fx, -1
  %i.hv = add i64 %i.hu, %.0.i
  %.sroa.230.0.copyload.i = load ptr, ptr %i.eo, align 8, !tbaa !487
  store ptr %.sroa.07.0.i, ptr %149, align 8, !tbaa !361
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %149, i64 8
  store i32 %.sroa.610.0.i, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !147
  %i.hw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(12) %148, i16 %.sroa.0.0.copyload.i87.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract23.i = extractvalue { ptr, i32 } %i.hw, 0
  %.fca.1.extract24.i = extractvalue { ptr, i32 } %i.hw, 1
  store ptr %.fca.0.extract23.i, ptr %150, align 8
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %150, i64 8
  store i32 %.fca.1.extract24.i, ptr %.sroa.226.0..sroa_idx.i, align 8
  %i.hx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %148, i16 %.sroa.0.0.copyload.i87.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract18.i = extractvalue { ptr, i32 } %i.hx, 0
  %.fca.1.extract19.i = extractvalue { ptr, i32 } %i.hx, 1
  store ptr %.fca.0.extract18.i, ptr %151, align 8
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %151, i64 8
  store i32 %.fca.1.extract19.i, ptr %.sroa.221.0..sroa_idx.i, align 8
  %i.hy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 544, ptr noundef nonnull align 8 dereferenceable(12) %148, i16 %.sroa.028.0.copyload.i189, ptr %.sroa.230.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %149, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %150, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %151) #28 ; 2 uses
  %.fca.0.extract14.i = extractvalue { ptr, i32 } %i.hy, 0 ; 2 uses
  %.fca.1.extract15.i = extractvalue { ptr, i32 } %i.hy, 1 ; 2 uses
  %i.hz = icmp eq i64 %.0.i, 0
  %or.cond5.i = or i1 %or.cond.i188, %i.hz
  br i1 %or.cond5.i, label %.critedge.i184, label %bb.bj

bb.bj:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i
  %.sroa.011.0.copyload.i190 = load i16, ptr %147, align 8, !tbaa !31
  %.sroa.213.0.copyload.i = load ptr, ptr %i.eo, align 8, !tbaa !487
  store ptr %.fca.0.extract14.i, ptr %152, align 8, !tbaa !361
  %.sroa.5.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %152, i64 8
  store i32 %.fca.1.extract15.i, ptr %.sroa.5.0..sroa_idx33.i, align 8, !tbaa !147
  %i.ia = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %148, i16 %.sroa.0.0.copyload.i87.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ia, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ia, 1
  store ptr %.fca.0.extract6.i, ptr %153, align 8
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %153, i64 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.29.0..sroa_idx.i, align 8
  %i.ib = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %148, i16 %.sroa.011.0.copyload.i190, ptr %.sroa.213.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %152, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %153) #28 ; 2 uses
  %.fca.0.extract.i191 = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract.i192 = extractvalue { ptr, i32 } %i.ib, 1
  br label %.critedge.i184

.critedge.i184:                                   ; preds = %bb.bj, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i, %_ZNK4llvm6SDNode8use_sizeEv.exit.thread.i, %_ZNK4llvm6SDNode8use_sizeEv.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit107.i, %bb.ba, %_ZNK4llvm8TypeSizecvmEv.exit.i199, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i, %bb.au, %_ZN4llvm16isShiftedMask_64Em.exit.i.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.as, %bb.ar, %_ZL22combineAndNotIntoVANDNPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.i
  %.sroa.2429.0.i = phi i32 [ %.fca.1.extract.i.i, %_ZL22combineAndNotIntoVANDNPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.i ], [ 0, %bb.ar ], [ %.fca.1.extract15.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i ], [ 0, %bb.au ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i199 ], [ 0, %bb.ba ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit107.i ], [ 0, %_ZNK4llvm6SDNode8use_sizeEv.exit.i ], [ 0, %_ZNK4llvm6SDNode8use_sizeEv.exit.thread.i ], [ 0, %bb.as ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ %.fca.1.extract.i192, %bb.bj ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i ]
  %.sroa.028.0.i185 = phi ptr [ %.fca.0.extract.i.i, %_ZL22combineAndNotIntoVANDNPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGE.exit.i ], [ null, %bb.ar ], [ %.fca.0.extract14.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.thread.i ], [ null, %bb.au ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit114.i ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit.i199 ], [ null, %bb.ba ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit107.i ], [ null, %_ZNK4llvm6SDNode8use_sizeEv.exit.i ], [ null, %_ZNK4llvm6SDNode8use_sizeEv.exit.thread.i ], [ null, %bb.as ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ %.fca.0.extract.i191, %bb.bj ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #28
  br label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.an, %.critedge.i184
  %.sroa.2429.1.i = phi i32 [ %.sroa.2429.0.i, %.critedge.i184 ], [ 0, %bb.an ]
  %.sroa.028.1.i = phi ptr [ %.sroa.028.0.i185, %.critedge.i184 ], [ null, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %149)
  call void @llvm.lifetime.end.p0(ptr nonnull %150)
  call void @llvm.lifetime.end.p0(ptr nonnull %151)
  call void @llvm.lifetime.end.p0(ptr nonnull %152)
  call void @llvm.lifetime.end.p0(ptr nonnull %153)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.bk:                                            ; preds = %bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !149, !nonnull !27, !align !150 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val168 = load i32, ptr %i.ie, align 8
  %i.if = getelementptr i8, ptr %i.id, i64 344
  %.val169 = load i8, ptr %i.if, align 8
  %i.ig = getelementptr i8, ptr %i.id, i64 374
  %.val170 = load i16, ptr %i.ig, align 2, !tbaa !31 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %103)
  call void @llvm.lifetime.start.p0(ptr nonnull %104)
  call void @llvm.lifetime.start.p0(ptr nonnull %105)
  call void @llvm.lifetime.start.p0(ptr nonnull %106)
  call void @llvm.lifetime.start.p0(ptr nonnull %107)
  call void @llvm.lifetime.start.p0(ptr nonnull %108)
  call void @llvm.lifetime.start.p0(ptr nonnull %109)
  call void @llvm.lifetime.start.p0(ptr nonnull %110)
  call void @llvm.lifetime.start.p0(ptr nonnull %111)
  call void @llvm.lifetime.start.p0(ptr nonnull %112)
  call void @llvm.lifetime.start.p0(ptr nonnull %113)
  call void @llvm.lifetime.start.p0(ptr nonnull %114)
  call void @llvm.lifetime.start.p0(ptr nonnull %115)
  call void @llvm.lifetime.start.p0(ptr nonnull %116)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %118)
  call void @llvm.lifetime.start.p0(ptr nonnull %119)
  call void @llvm.lifetime.start.p0(ptr nonnull %120)
  call void @llvm.lifetime.start.p0(ptr nonnull %121)
  call void @llvm.lifetime.start.p0(ptr nonnull %122)
  call void @llvm.lifetime.start.p0(ptr nonnull %123)
  call void @llvm.lifetime.start.p0(ptr nonnull %124)
  call void @llvm.lifetime.start.p0(ptr nonnull %127)
  call void @llvm.lifetime.start.p0(ptr nonnull %128)
  call void @llvm.lifetime.start.p0(ptr nonnull %129)
  call void @llvm.lifetime.start.p0(ptr nonnull %130)
  call void @llvm.lifetime.start.p0(ptr nonnull %133)
  call void @llvm.lifetime.start.p0(ptr nonnull %134)
  call void @llvm.lifetime.start.p0(ptr nonnull %135)
  call void @llvm.lifetime.start.p0(ptr nonnull %136)
  call void @llvm.lifetime.start.p0(ptr nonnull %139)
  call void @llvm.lifetime.start.p0(ptr nonnull %140)
  call void @llvm.lifetime.start.p0(ptr nonnull %141)
  call void @llvm.lifetime.start.p0(ptr nonnull %142)
  call void @llvm.lifetime.start.p0(ptr nonnull %143)
  call void @llvm.lifetime.start.p0(ptr nonnull %144)
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #28
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i337.i = load i16, ptr %i.ii, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i202 = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.sroa.21.0.copyload.i.i203 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i202, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i337.i, ptr %101, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 9 uses
  store ptr %.sroa.21.0.copyload.i.i203, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !354 ; 5 uses
  %.sroa.0121.0.copyload.i = load ptr, ptr %i.il, align 8, !tbaa !361
  %.sroa.28141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %.sroa.28141.0.copyload.i = load i32, ptr %.sroa.28141.0..sroa_idx.i, align 8, !tbaa !147
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %.sroa.33.0.copyload.i = load i32, ptr %.sroa.33.0..sroa_idx.i, align 4 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %.sroa.080.0.copyload.i = load ptr, ptr %i.im, align 8, !tbaa !361
  %.sroa.39.sroa.8.0..sroa.39.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %.sroa.39.0.copyload.i = load i64, ptr %.sroa.39.sroa.8.0..sroa.39.0..sroa_idx.sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #28
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.io = load i64, ptr %i.in, align 8, !tbaa !362
  store i64 %i.io, ptr %102, align 8, !tbaa !362
  %i.ip = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !363
  store i32 %i.ir, ptr %i.ip, align 8, !tbaa !364
  %.not.i.i204 = icmp eq i16 %.sroa.0.0.copyload.i337.i, 0
  br i1 %.not.i.i204, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.is = zext i16 %.sroa.0.0.copyload.i337.i to i64
  %i.it = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.is ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -16
  %.sroa.0.0.copyload.i.i.i205 = load i64, ptr %i.iu, align 16
  %.sroa.2.0..sroa_idx.i.i.i206 = getelementptr i8, ptr %i.it, i64 -8
  %.sroa.2.0.copyload.i.i.i207 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i206, align 8
  %.fca.0.insert.i.i.i208 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i205, 0
  %.fca.1.insert.i.i.i209 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i208, i8 %.sroa.2.0.copyload.i.i.i207, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i210

bb.bm:                                            ; preds = %bb.bk
  %i.iv = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %101) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i210

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i210:         ; preds = %bb.bm, %bb.bl
  %.pn.i.i211 = phi { i64, i8 } [ %.fca.1.insert.i.i.i209, %bb.bl ], [ %i.iv, %bb.bm ] ; 2 uses
  %.fca.0.extract197.i = extractvalue { i64, i8 } %.pn.i.i211, 0 ; 3 uses
  %.fca.1.extract198.i = extractvalue { i64, i8 } %.pn.i.i211, 1
  %i.iw = trunc nuw i8 %.fca.1.extract198.i to i1
  br i1 %i.iw, label %bb.bn, label %_ZNK4llvm8TypeSizecvmEv.exit.i212

bb.bn:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i210
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i212:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i210
  %i.ix = trunc i64 %.fca.0.extract197.i to i32   ; 10 uses
  %i.iy = trunc nuw i8 %.val169 to i1
  %i.iz = icmp sgt i32 %.val168, 1
  %or.cond.not.i = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %or.cond.not.i, label %bb.bo, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.bo:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i212
  switch i32 %i.ix, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit [
    i32 64, label %.preheader315.i
    i32 32, label %.preheader315.i
  ]

.preheader315.i:                                  ; preds = %bb.bo, %bb.bo
  %i.ja = and i64 %.fca.0.extract197.i, 96
  %i.jb = getelementptr inbounds nuw i8, ptr %125, i64 8 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %126, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %126, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %131, i64 8 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %132, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %132, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %132, i64 8
  br label %bb.bp

bb.bp:                                            ; preds = %163, %.preheader315.i
  %.sroa.080.0.i = phi ptr [ %.sroa.0130.0.i, %163 ], [ %.sroa.080.0.copyload.i, %.preheader315.i ] ; 21 uses
  %.sroa.39.0.i = phi i64 [ %.sroa.39.0.insert.insert.i, %163 ], [ %.sroa.39.0.copyload.i, %.preheader315.i ] ; 4 uses
  %.sroa.0130.0.i = phi ptr [ %.sroa.080.0.i, %163 ], [ %.sroa.0121.0.copyload.i, %.preheader315.i ] ; 12 uses
  %.sroa.39.sroa.0.0.i = phi i32 [ %.sroa.39.0.extract.trunc.i, %163 ], [ %.sroa.28141.0.copyload.i, %.preheader315.i ] ; 7 uses
  %.0.i215 = phi i1 [ true, %163 ], [ false, %.preheader315.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.i, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !163
  %i.jl = icmp eq i32 %i.jk, 193
  br i1 %i.jl, label %bb.bq, label %._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread_crit_edge.i

._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread_crit_edge.i: ; preds = %bb.bp
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 24
  %.pre.i216 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i

bb.bq:                                            ; preds = %bb.bp
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.i, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !354 ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !355 ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !163 ; 5 uses
  switch i32 %i.jr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i229
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i229
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i229: ; preds = %bb.bq, %bb.bq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !356 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !359 ; 5 uses
  %i.jx = icmp ult i32 %i.jw, 65                  ; 2 uses
  br i1 %i.jx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i229
  %i.jy = load i64, ptr %i.ju, align 8            ; 4 uses
  %i.jz = icmp eq i32 %i.jw, 0
  %i.ka = sub nuw nsw i32 64, %i.jw
  %i.kb = zext nneg i32 %i.ka to i64              ; 2 uses
  %i.kc = shl i64 %i.jy, %i.kb
  %i.kd = ashr exact i64 %i.kc, %i.kb
  %i.ke = inttoptr i64 %i.jy to ptr               ; 2 uses
  br i1 %i.jz, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i231, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

bb.bs:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i229
  %i.kf = load ptr, ptr %i.ju, align 8            ; 3 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !488
  %i.kh = ptrtoint ptr %i.kf to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i: ; preds = %bb.bs, %bb.br
  %i.ki = phi i64 [ %i.jy, %bb.br ], [ %i.kh, %bb.bs ] ; 2 uses
  %i.kj = phi ptr [ %i.ke, %bb.br ], [ %i.kf, %bb.bs ] ; 2 uses
  %.0.i.i.i338.i = phi i64 [ %i.kd, %bb.br ], [ %i.kg, %bb.bs ] ; 3 uses
  %i.kk = xor i64 %.0.i.i.i338.i, -1
  %.not.i.i.i230 = icmp eq i64 %.0.i.i.i338.i, -1
  br i1 %.not.i.i.i230, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i231

_ZN4llvm16isShiftedMask_64Em.exit.i.i231:         ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i, %bb.br
  %i.kl = phi i64 [ %i.ki, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i ], [ %i.jy, %bb.br ] ; 9 uses
  %i.km = phi ptr [ %i.kj, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i ], [ %i.ke, %bb.br ] ; 9 uses
  %i.kn = phi i64 [ %i.kk, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i ], [ -1, %bb.br ] ; 3 uses
  %.0.i.i.i338485.i = phi i64 [ %.0.i.i.i338.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i ], [ 0, %bb.br ]
  %i.ko = sub nuw i64 -2, %.0.i.i.i338485.i
  %i.kp = or i64 %i.ko, %i.kn                     ; 2 uses
  %i.kq = add i64 %i.kp, 1
  %i.kr = and i64 %i.kq, %i.kp
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %bb.bt, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i

bb.bt:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i231
  %i.kt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kn, i1 true) ; 3 uses
  %i.ku = trunc nuw nsw i64 %i.kt to i32          ; 2 uses
  %i.kv = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.kn) ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 24
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !163
  %i.kz = icmp eq i32 %i.ky, 193
  br i1 %i.kz, label %bb.bu, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i

bb.bu:                                            ; preds = %bb.bt
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !354 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !355 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !163
  %i.lf = icmp eq i32 %i.le, 198
  br i1 %i.lf, label %bb.bv, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i

bb.bv:                                            ; preds = %bb.bu
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !355 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !163
  switch i32 %i.lj, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i: ; preds = %bb.bv, %bb.bv
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 88
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !356 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !359
  %i.lp = icmp ult i32 %i.lo, 65
  %i.lq = load ptr, ptr %i.lm, align 8
  %spec.select.i.i.i.i234 = select i1 %i.lp, ptr %i.lm, ptr %i.lq
  %.0.i.i.i341.i = load i64, ptr %spec.select.i.i.i.i234, align 8, !tbaa !151 ; 5 uses
  %.not.i.i342.i = icmp eq i64 %.0.i.i.i341.i, 0
  br i1 %.not.i.i342.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i343.i

_ZN4llvm16isShiftedMask_64Em.exit.i343.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i
  %i.lr = add i64 %.0.i.i.i341.i, -1
  %i.ls = or i64 %i.lr, %.0.i.i.i341.i            ; 2 uses
  %i.lt = add i64 %i.ls, 1
  %i.lu = and i64 %i.lt, %i.ls
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.bw, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i

bb.bw:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i343.i
  %i.lw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i341.i, i1 true)
  %i.lx = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i341.i)
  %i.ly = icmp eq i64 %i.kt, %i.lw
  %i.lz = icmp eq i64 %i.kv, %i.lx
  %or.cond311.i = select i1 %i.ly, i1 %i.lz, i1 false
  br i1 %or.cond311.i, label %bb.bx, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i

bb.bx:                                            ; preds = %bb.bw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lc, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !354 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !355 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !163
  switch i32 %i.mf, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i: ; preds = %bb.bx, %bb.bx
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 88
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !356 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !359
  %i.ml = icmp ult i32 %i.mk, 65
  %i.mm = load ptr, ptr %i.mi, align 8
  %spec.select.i.i.i347.i = select i1 %i.ml, ptr %i.mi, ptr %i.mm
  %.0.i.i.i348.i = load i64, ptr %spec.select.i.i.i347.i, align 8, !tbaa !151
  %i.mn = trunc i64 %.0.i.i.i348.i to i32
  %i.mo = icmp ne i32 %i.ku, %i.mn
  %i.mp = add nuw nsw i32 %i.ku, %i.kw            ; 2 uses
  %.not312.i = icmp ugt i32 %i.mp, %i.ix
  %or.cond.i235 = select i1 %i.mo, i1 true, i1 %.not312.i
  br i1 %or.cond.i235, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i
  %.sroa.0185.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.2187.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %103, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %104, ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i64 16, i1 false), !tbaa.struct !499
  %i.mq = add nsw i32 %i.mp, -1
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract180.i = extractvalue { ptr, i32 } %i.ms, 0
  %.fca.1.extract181.i = extractvalue { ptr, i32 } %i.ms, 1
  store ptr %.fca.0.extract180.i, ptr %105, align 8
  %.sroa.2183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %105, i64 8
  store i32 %.fca.1.extract181.i, ptr %.sroa.2183.0..sroa_idx.i, align 8
  %i.mt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.kt, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract175.i = extractvalue { ptr, i32 } %i.mt, 0
  %.fca.1.extract176.i = extractvalue { ptr, i32 } %i.mt, 1
  store ptr %.fca.0.extract175.i, ptr %106, align 8
  %.sroa.2178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %106, i64 8
  store i32 %.fca.1.extract176.i, ptr %.sroa.2178.0..sroa_idx.i, align 8
  %i.mu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0185.0.copyload.i, ptr %.sroa.2187.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %103, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %104, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %105, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %106) #28 ; 2 uses
  %.fca.0.extract171.i = extractvalue { ptr, i32 } %i.mu, 0
  %.fca.1.extract172.i = extractvalue { ptr, i32 } %i.mu, 1
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i, %bb.bx, %bb.bw, %_ZN4llvm16isShiftedMask_64Em.exit.i343.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i, %bb.bv, %bb.bu, %bb.bt, %_ZN4llvm16isShiftedMask_64Em.exit.i.i231, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %i.mv = phi i64 [ %i.kl, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i ], [ %i.kl, %bb.bx ], [ %i.kl, %bb.bw ], [ %i.kl, %_ZN4llvm16isShiftedMask_64Em.exit.i343.i ], [ %i.kl, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i ], [ %i.kl, %bb.bv ], [ %i.kl, %bb.bu ], [ %i.kl, %bb.bt ], [ %i.kl, %_ZN4llvm16isShiftedMask_64Em.exit.i.i231 ], [ %i.ki, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i ]
  %i.mw = phi ptr [ %i.km, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit346.i ], [ %i.km, %bb.bx ], [ %i.km, %bb.bw ], [ %i.km, %_ZN4llvm16isShiftedMask_64Em.exit.i343.i ], [ %i.km, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit340.i ], [ %i.km, %bb.bv ], [ %i.km, %bb.bu ], [ %i.km, %bb.bt ], [ %i.km, %_ZN4llvm16isShiftedMask_64Em.exit.i.i231 ], [ %i.kj, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i ]
  switch i32 %i.jr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.i: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i
  br i1 %i.jx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.i
  %i.mx = icmp eq i32 %i.jw, 0
  %i.my = sub nuw nsw i32 64, %i.jw
  %i.mz = zext nneg i32 %i.my to i64              ; 2 uses
  %i.na = shl i64 %i.mv, %i.mz
  %i.nb = ashr exact i64 %i.na, %i.mz
  br i1 %i.mx, label %_ZN4llvm16isShiftedMask_64Em.exit.i355.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i

bb.ca:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.i
  %i.nc = load i64, ptr %i.mw, align 8, !tbaa !488
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i351.i = phi i64 [ %i.nb, %bb.bz ], [ %i.nc, %bb.ca ] ; 3 uses
  %i.nd = xor i64 %.0.i.i.i351.i, -1
  %.not.i.i354.i = icmp eq i64 %.0.i.i.i351.i, -1
  br i1 %.not.i.i354.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i355.i

_ZN4llvm16isShiftedMask_64Em.exit.i355.i:         ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i, %bb.bz
  %i.ne = phi i64 [ %i.nd, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i ], [ -1, %bb.bz ] ; 3 uses
  %.0.i.i.i351489.i = phi i64 [ %.0.i.i.i351.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i ], [ 0, %bb.bz ]
  %i.nf = sub nuw i64 -2, %.0.i.i.i351489.i
  %i.ng = or i64 %i.nf, %i.ne                     ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK4llvm23LoongArchTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !355 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !163
  switch i32 %i.op, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit362.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit362.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit362.i: ; preds = %bb.ce, %bb.ce
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 88
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !356 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !359
  %i.ov = icmp ult i32 %i.ou, 65
  %i.ow = load ptr, ptr %i.os, align 8
  %spec.select.i.i.i363.i = select i1 %i.ov, ptr %i.os, ptr %i.ow
  %.0.i.i.i364.i = load i64, ptr %spec.select.i.i.i363.i, align 8, !tbaa !151 ; 5 uses
  %.not.i.i365.i = icmp eq i64 %.0.i.i.i364.i, 0
  br i1 %.not.i.i365.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i366.i

_ZN4llvm16isShiftedMask_64Em.exit.i366.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit362.i
  %i.ox = add i64 %.0.i.i.i364.i, -1
  %i.oy = or i64 %i.ox, %.0.i.i.i364.i            ; 2 uses
  %i.oz = add i64 %i.oy, 1
  %i.pa = and i64 %i.oz, %i.oy
  %i.pb = icmp eq i64 %i.pa, 0
  br i1 %i.pb, label %bb.cf, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i

bb.cf:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i366.i
  %i.pc = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i364.i)
  %i.pd = icmp eq i64 %i.nm, %i.pc
  %i.pe = trunc i64 %.0.i.i.i364.i to i1
  %or.cond6.i = and i1 %i.pd, %i.pe
  %i.pf = add nuw nsw i32 %i.nl, %i.nn            ; 2 uses
  %.not316.i = icmp ule i32 %i.pf, %i.ix
  %or.cond391.not.i = select i1 %or.cond6.i, i1 %.not316.i, i1 false
  br i1 %or.cond391.not.i, label %bb.cg, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i

bb.cg:                                            ; preds = %bb.cf
  %.sroa.0168.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.2170.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %107, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %108, ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i64 16, i1 false), !tbaa.struct !499
  %i.pg = add nsw i32 %i.pf, -1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.ph, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract163.i = extractvalue { ptr, i32 } %i.pi, 0
  %.fca.1.extract164.i = extractvalue { ptr, i32 } %i.pi, 1
  store ptr %.fca.0.extract163.i, ptr %109, align 8
  %.sroa.2166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %109, i64 8
  store i32 %.fca.1.extract164.i, ptr %.sroa.2166.0..sroa_idx.i, align 8
  %i.pj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.nk, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract158.i = extractvalue { ptr, i32 } %i.pj, 0
  %.fca.1.extract159.i = extractvalue { ptr, i32 } %i.pj, 1
  store ptr %.fca.0.extract158.i, ptr %110, align 8
  %.sroa.2161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i32 %.fca.1.extract159.i, ptr %.sroa.2161.0..sroa_idx.i, align 8
  %i.pk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0168.0.copyload.i, ptr %.sroa.2170.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %107, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %108, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %109, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %110) #28 ; 2 uses
  %.fca.0.extract154.i = extractvalue { ptr, i32 } %i.pk, 0
  %.fca.1.extract155.i = extractvalue { ptr, i32 } %i.pk, 1
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i: ; preds = %bb.cf, %_ZN4llvm16isShiftedMask_64Em.exit.i366.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit362.i, %bb.ce, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit358.i, %bb.cd, %bb.cc, %bb.cb, %_ZN4llvm16isShiftedMask_64Em.exit.i355.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit353.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread.i, %bb.bq
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 24 ; 4 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !163 ; 6 uses
  switch i32 %i.pm, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i [
    i32 193, label %bb.ch
    i32 198, label %bb.cr
  ]

bb.ch:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i
  switch i32 %i.jr, label %thread-pre-split.i.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit369.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit369.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit369.i: ; preds = %bb.ch, %bb.ch
  %i.pn = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !356 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !359 ; 5 uses
  %i.ps = icmp ult i32 %i.pr, 65                  ; 2 uses
  br i1 %i.ps, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit369.i
  %i.pt = load i64, ptr %i.pp, align 8            ; 4 uses
  %i.pu = icmp eq i32 %i.pr, 0
  %i.pv = sub nuw nsw i32 64, %i.pr
  %i.pw = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.px = shl i64 %i.pt, %i.pw
  %i.py = ashr exact i64 %i.px, %i.pw
  %i.pz = inttoptr i64 %i.pt to ptr               ; 2 uses
  br i1 %i.pu, label %_ZN4llvm16isShiftedMask_64Em.exit.i374.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i

bb.cj:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit369.i
  %i.qa = load ptr, ptr %i.pp, align 8            ; 3 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !488
  %i.qc = ptrtoint ptr %i.qa to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i: ; preds = %bb.cj, %bb.ci
  %i.qd = phi i64 [ %i.pt, %bb.ci ], [ %i.qc, %bb.cj ]
  %i.qe = phi ptr [ %i.pz, %bb.ci ], [ %i.qa, %bb.cj ]
  %.0.i.i.i370.i = phi i64 [ %i.py, %bb.ci ], [ %i.qb, %bb.cj ] ; 3 uses
  %i.qf = xor i64 %.0.i.i.i370.i, -1
  %.not.i.i373.i = icmp eq i64 %.0.i.i.i370.i, -1
  br i1 %.not.i.i373.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i374.i

_ZN4llvm16isShiftedMask_64Em.exit.i374.i:         ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i, %bb.ci
  %i.qg = phi i64 [ %i.qf, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i ], [ -1, %bb.ci ] ; 3 uses
  %.0.i.i.i370493.i = phi i64 [ %.0.i.i.i370.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i ], [ 0, %bb.ci ]
  %i.qh = phi ptr [ %i.qe, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i ], [ %i.pz, %bb.ci ]
  %i.qi = phi i64 [ %i.qd, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i ], [ %i.pt, %bb.ci ]
  %i.qj = sub nuw i64 -2, %.0.i.i.i370493.i
  %i.qk = or i64 %i.qj, %i.qg                     ; 2 uses
  %i.ql = add i64 %i.qk, 1
  %i.qm = and i64 %i.ql, %i.qk
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %bb.ck, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i

bb.ck:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i374.i
  %i.qo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qg, i1 true) ; 3 uses
  %i.qp = trunc nuw nsw i64 %i.qo to i32          ; 2 uses
  %i.qq = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.qg)
  %i.qr = trunc nuw nsw i64 %i.qq to i32          ; 2 uses
  %i.qs = add nuw nsw i32 %i.qp, %i.qr            ; 2 uses
  %i.qt = icmp samesign ult i32 %i.qs, 65
  br i1 %i.qt, label %bb.cl, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i

bb.cl:                                            ; preds = %bb.ck
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !354
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !355 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !163
  switch i32 %i.qz, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit377.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit377.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit377.i: ; preds = %bb.cl, %bb.cl
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 88
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !356 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !359 ; 3 uses
  %i.rf = icmp ult i32 %i.re, 65
  br i1 %i.rf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit377.i
  %i.rg = load i64, ptr %i.rc, align 8, !tbaa !151
  %i.rh = icmp eq i32 %i.re, 0
  %i.ri = sub nuw nsw i32 64, %i.re
  %i.rj = zext nneg i32 %i.ri to i64              ; 2 uses
  %i.rk = shl i64 %i.rg, %i.rj
  %i.rl = ashr exact i64 %i.rk, %i.rj
  %.0.i.i.i.i379.i = select i1 %i.rh, i64 0, i64 %i.rl
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit380.i

bb.cn:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit377.i
  %i.rm = load ptr, ptr %i.rc, align 8, !tbaa !151
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !488
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit380.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit380.i: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i378.i = phi i64 [ %.0.i.i.i.i379.i, %bb.cm ], [ %i.rn, %bb.cn ]
  br i1 %i.ps, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit380.i
  %i.ro = icmp eq i32 %i.pr, 0
  %i.rp = sub nuw nsw i32 64, %i.pr
  %i.rq = zext nneg i32 %i.rp to i64              ; 2 uses
  %i.rr = shl i64 %i.qi, %i.rq
  %i.rs = ashr exact i64 %i.rr, %i.rq
  %.0.i.i.i.i382.i = select i1 %i.ro, i64 0, i64 %i.rs
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit383.i

bb.cp:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit380.i
  %i.rt = load i64, ptr %i.qh, align 8, !tbaa !488
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit383.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit383.i: ; preds = %bb.cp, %bb.co
  %.0.i.i.i381.i = phi i64 [ %.0.i.i.i.i382.i, %bb.co ], [ %i.rt, %bb.cp ]
  %i.ru = and i64 %.0.i.i.i381.i, %.0.i.i.i378.i
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %bb.cq, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i

bb.cq:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit383.i
  %.sroa.0151.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.2153.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !499
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 48
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i384.i = load i16, ptr %i.rx, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i385.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.sroa.21.0.copyload.i386.i = load ptr, ptr %.sroa.21.0..sroa_idx.i385.i, align 8, !tbaa !487
  store ptr %.sroa.080.0.i, ptr %113, align 8, !tbaa !361
  %.sroa.39.sroa.8.0..sroa.39.0..sroa_idx116.sroa_idx.i = getelementptr inbounds nuw i8, ptr %113, i64 8
  store i64 %.sroa.39.0.i, ptr %.sroa.39.sroa.8.0..sroa.39.0..sroa_idx116.sroa_idx.i, align 8
  %i.ry = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.qo, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract144.i = extractvalue { ptr, i32 } %i.ry, 0
  %.fca.1.extract145.i = extractvalue { ptr, i32 } %i.ry, 1
  store ptr %.fca.0.extract144.i, ptr %114, align 8
  %.sroa.2147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %114, i64 8
  store i32 %.fca.1.extract145.i, ptr %.sroa.2147.0..sroa_idx.i, align 8
  %i.rz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0.0.copyload.i384.i, ptr %.sroa.21.0.copyload.i386.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %113, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %114) #28 ; 2 uses
  %.fca.0.extract140.i = extractvalue { ptr, i32 } %i.rz, 0
  %.fca.1.extract141.i = extractvalue { ptr, i32 } %i.rz, 1
  store ptr %.fca.0.extract140.i, ptr %112, align 8
  %.sroa.2143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %112, i64 8
  store i32 %.fca.1.extract141.i, ptr %.sroa.2143.0..sroa_idx.i, align 8
  %i.sa = icmp eq i32 %i.ix, 32
  %i.sb = and i32 %i.qr, 31
  %i.sc = add nuw nsw i32 %i.sb, %i.qp
  %.in330.i = select i1 %i.sa, i32 %i.sc, i32 %i.qs
  %i.sd = add nsw i32 %.in330.i, -1
  %i.se = zext i32 %i.sd to i64
  %i.sf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.se, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract135.i = extractvalue { ptr, i32 } %i.sf, 0
  %.fca.1.extract136.i = extractvalue { ptr, i32 } %i.sf, 1
  store ptr %.fca.0.extract135.i, ptr %115, align 8
  %.sroa.2138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i32 %.fca.1.extract136.i, ptr %.sroa.2138.0..sroa_idx.i, align 8
  %i.sg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.qo, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract130.i = extractvalue { ptr, i32 } %i.sg, 0
  %.fca.1.extract131.i = extractvalue { ptr, i32 } %i.sg, 1
  store ptr %.fca.0.extract130.i, ptr %116, align 8
  %.sroa.2133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i32 %.fca.1.extract131.i, ptr %.sroa.2133.0..sroa_idx.i, align 8
  %i.sh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0151.0.copyload.i, ptr %.sroa.2153.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %111, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %112, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %115, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %116) #28 ; 2 uses
  %.fca.0.extract126.i = extractvalue { ptr, i32 } %i.sh, 0
  %.fca.1.extract127.i = extractvalue { ptr, i32 } %i.sh, 1
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.cr:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i
  switch i32 %i.jr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.i: ; preds = %bb.cr, %bb.cr
  %i.si = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !356 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !359
  %i.sn = icmp ult i32 %i.sm, 65
  %i.so = load ptr, ptr %i.sk, align 8
  %spec.select.i.i.i391.i = select i1 %i.sn, ptr %i.sk, ptr %i.so
  %.0.i.i.i392.i = load i64, ptr %spec.select.i.i.i391.i, align 8, !tbaa !151 ; 5 uses
  %.not.i.i393.i = icmp eq i64 %.0.i.i.i392.i, 0
  br i1 %.not.i.i393.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i394.i

_ZN4llvm16isShiftedMask_64Em.exit.i394.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.i
  %i.sp = add i64 %.0.i.i.i392.i, -1
  %i.sq = or i64 %i.sp, %.0.i.i.i392.i            ; 2 uses
  %i.sr = add i64 %i.sq, 1
  %i.ss = and i64 %i.sr, %i.sq
  %i.st = icmp eq i64 %i.ss, 0
  br i1 %i.st, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit395.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i

_ZN4llvm16isShiftedMask_64EmRjS0_.exit395.i:      ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i394.i
  %i.su = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i392.i)
  %i.sv = trunc nuw nsw i64 %i.su to i32          ; 2 uses
  %i.sw = and i64 %.0.i.i.i392.i, 1
  %.not.i233 = icmp eq i64 %i.sw, 0
  br i1 %.not.i233, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm16isShiftedMask_64EmRjS0_.exit395.i
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !354 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !355 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !163
  switch i32 %i.tc, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit397.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit397.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit397.i: ; preds = %bb.cs, %bb.cs
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 88
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !356 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !359
  %i.ti = icmp ult i32 %i.th, 65
  %i.tj = load ptr, ptr %i.tf, align 8
  %spec.select.i.i.i398.i = select i1 %i.ti, ptr %i.tf, ptr %i.tj
  %.0.i.i.i399.i = load i64, ptr %spec.select.i.i.i398.i, align 8, !tbaa !151 ; 2 uses
  %i.tk = trunc i64 %.0.i.i.i399.i to i32
  %i.tl = icmp ne i32 %i.sv, %i.tk
  %.not321.i = icmp ugt i32 %i.sv, %i.ix
  %or.cond312.i = select i1 %i.tl, i1 true, i1 %.not321.i
  br i1 %or.cond312.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit397.i
  %.sroa.0123.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.2125.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, ptr noundef nonnull align 8 dereferenceable(16) %i.sy, i64 16, i1 false), !tbaa.struct !499
  %i.tm = add i64 %.fca.0.extract197.i, 4294967295
  %i.tn = and i64 %i.tm, 4294967295
  %i.to = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.tn, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract118.i = extractvalue { ptr, i32 } %i.to, 0
  %.fca.1.extract119.i = extractvalue { ptr, i32 } %i.to, 1
  store ptr %.fca.0.extract118.i, ptr %119, align 8
  %.sroa.2121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i32 %.fca.1.extract119.i, ptr %.sroa.2121.0..sroa_idx.i, align 8
  %i.tp = and i64 %.0.i.i.i399.i, 4294967295
  %i.tq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.tp, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract113.i = extractvalue { ptr, i32 } %i.tq, 0
  %.fca.1.extract114.i = extractvalue { ptr, i32 } %i.tq, 1
  store ptr %.fca.0.extract113.i, ptr %120, align 8
  %.sroa.2116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %120, i64 8
  store i32 %.fca.1.extract114.i, ptr %.sroa.2116.0..sroa_idx.i, align 8
  %i.tr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0123.0.copyload.i, ptr %.sroa.2125.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %117, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %118, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %119, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %120) #28 ; 2 uses
  %.fca.0.extract109.i = extractvalue { ptr, i32 } %i.tr, 0
  %.fca.1.extract110.i = extractvalue { ptr, i32 } %i.tr, 1
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit397.i, %bb.cs, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit395.i, %_ZN4llvm16isShiftedMask_64Em.exit.i394.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit383.i, %bb.cl, %bb.ck, %_ZN4llvm16isShiftedMask_64Em.exit.i374.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit372.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit350.thread.i
  switch i32 %i.jr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.i: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !356 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !359 ; 5 uses
  %i.tx = icmp ult i32 %i.tw, 65                  ; 2 uses
  br i1 %i.tx, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.i
  %i.ty = load i64, ptr %i.tu, align 8            ; 4 uses
  %i.tz = icmp eq i32 %i.tw, 0
  %i.ua = sub nuw nsw i32 64, %i.tw
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = shl i64 %i.ty, %i.ub
  %i.ud = ashr exact i64 %i.uc, %i.ub
  %i.ue = inttoptr i64 %i.ty to ptr               ; 2 uses
  br i1 %i.tz, label %_ZN4llvm16isShiftedMask_64Em.exit.i406.i, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i

bb.cv:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.i
  %i.uf = load ptr, ptr %i.tu, align 8            ; 3 uses
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !488
  %i.uh = ptrtoint ptr %i.uf to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i: ; preds = %bb.cv, %bb.cu
  %i.ui = phi i64 [ %i.ty, %bb.cu ], [ %i.uh, %bb.cv ]
  %i.uj = phi ptr [ %i.ue, %bb.cu ], [ %i.uf, %bb.cv ]
  %.0.i.i.i402.i = phi i64 [ %i.ud, %bb.cu ], [ %i.ug, %bb.cv ] ; 3 uses
  %i.uk = xor i64 %.0.i.i.i402.i, -1
  %.not.i.i405.i = icmp eq i64 %.0.i.i.i402.i, -1
  br i1 %.not.i.i405.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i406.i

_ZN4llvm16isShiftedMask_64Em.exit.i406.i:         ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i, %bb.cu
  %i.ul = phi i64 [ %i.uk, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i ], [ -1, %bb.cu ] ; 3 uses
  %.0.i.i.i402497.i = phi i64 [ %.0.i.i.i402.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i ], [ 0, %bb.cu ]
  %i.um = phi ptr [ %i.uj, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i ], [ %i.ue, %bb.cu ]
  %i.un = phi i64 [ %i.ui, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i ], [ %i.ty, %bb.cu ]
  %i.uo = sub nuw i64 -2, %.0.i.i.i402497.i
  %i.up = or i64 %i.uo, %i.ul                     ; 2 uses
  %i.uq = add i64 %i.up, 1
  %i.ur = and i64 %i.uq, %i.up
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %bb.cw, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i

bb.cw:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i406.i
  switch i32 %i.pm, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i232
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i232
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i232: ; preds = %bb.cw, %bb.cw
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 88
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !356 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !359 ; 5 uses
  %i.uy = icmp ult i32 %i.ux, 65                  ; 2 uses
  br i1 %i.uy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i232
  %i.uz = load i64, ptr %i.uv, align 8            ; 3 uses
  %i.va = icmp eq i32 %i.ux, 0
  %i.vb = sub nuw nsw i32 64, %i.ux
  %i.vc = zext nneg i32 %i.vb to i64              ; 2 uses
  %i.vd = shl i64 %i.uz, %i.vc
  %i.ve = ashr exact i64 %i.vd, %i.vc
  %.0.i.i.i.i410.i = select i1 %i.va, i64 0, i64 %i.ve
  %i.vf = inttoptr i64 %i.uz to ptr
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit411.i

bb.cy:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i232
  %i.vg = load ptr, ptr %i.uv, align 8            ; 3 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !488
  %i.vi = ptrtoint ptr %i.vg to i64
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit411.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit411.i: ; preds = %bb.cy, %bb.cx
  %i.vj = phi i64 [ %i.uz, %bb.cx ], [ %i.vi, %bb.cy ]
  %i.vk = phi ptr [ %i.vf, %bb.cx ], [ %i.vg, %bb.cy ]
  %.0.i.i.i409.i = phi i64 [ %.0.i.i.i.i410.i, %bb.cx ], [ %i.vh, %bb.cy ]
  br i1 %i.tx, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit411.i
  %i.vl = icmp eq i32 %i.tw, 0
  %i.vm = sub nuw nsw i32 64, %i.tw
  %i.vn = zext nneg i32 %i.vm to i64              ; 2 uses
  %i.vo = shl i64 %i.un, %i.vn
  %i.vp = ashr exact i64 %i.vo, %i.vn
  %.0.i.i.i.i413.i = select i1 %i.vl, i64 0, i64 %i.vp
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit414.i

bb.da:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit411.i
  %i.vq = load i64, ptr %i.um, align 8, !tbaa !488
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit414.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit414.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i412.i = phi i64 [ %.0.i.i.i.i413.i, %bb.cz ], [ %i.vq, %bb.da ]
  %i.vr = and i64 %.0.i.i.i412.i, %.0.i.i.i409.i
  %i.vs = icmp eq i64 %i.vr, 0
  br i1 %i.vs, label %bb.db, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

bb.db:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit414.i
  %i.vt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ul, i1 true) ; 3 uses
  %i.vu = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ul) ; 2 uses
  %.sroa.0106.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31 ; 2 uses
  %.sroa.2108.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %121, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i64 16, i1 false), !tbaa.struct !499
  br i1 %i.uy, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.vv = icmp eq i32 %i.ux, 0
  %i.vw = sub nuw nsw i32 64, %i.ux
  %i.vx = zext nneg i32 %i.vw to i64              ; 2 uses
  %i.vy = shl i64 %i.vj, %i.vx
  %i.vz = ashr exact i64 %i.vy, %i.vx
  %.0.i.i.i.i416.i = select i1 %i.vv, i64 0, i64 %i.vz
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit417.i

bb.dd:                                            ; preds = %bb.db
  %i.wa = load i64, ptr %i.vk, align 8, !tbaa !488
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit417.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit417.i: ; preds = %bb.dd, %bb.dc
  %.0.i.i.i415.i = phi i64 [ %.0.i.i.i.i416.i, %bb.dc ], [ %i.wa, %bb.dd ]
  %i.wb = ashr i64 %.0.i.i.i415.i, %i.vt
  %i.wc = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.wb, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0106.0.copyload.i, ptr %.sroa.2108.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract99.i = extractvalue { ptr, i32 } %i.wc, 0
  %.fca.1.extract100.i = extractvalue { ptr, i32 } %i.wc, 1
  store ptr %.fca.0.extract99.i, ptr %122, align 8
  %.sroa.2102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %122, i64 8
  store i32 %.fca.1.extract100.i, ptr %.sroa.2102.0..sroa_idx.i, align 8
  %i.wd = icmp eq i32 %i.ix, 32
  %i.we = and i64 %i.vu, 31
  %.in.v.i = select i1 %i.wd, i64 %i.we, i64 %i.vu
  %.in.i = add nuw nsw i64 %i.vt, 4294967295
  %i.wf = add nuw nsw i64 %.in.i, %.in.v.i
  %i.wg = and i64 %i.wf, 4294967295
  %i.wh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.wg, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract94.i = extractvalue { ptr, i32 } %i.wh, 0
  %.fca.1.extract95.i = extractvalue { ptr, i32 } %i.wh, 1
  store ptr %.fca.0.extract94.i, ptr %123, align 8
  %.sroa.297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %123, i64 8
  store i32 %.fca.1.extract95.i, ptr %.sroa.297.0..sroa_idx.i, align 8
  %i.wi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.vt, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract89.i = extractvalue { ptr, i32 } %i.wi, 0
  %.fca.1.extract90.i = extractvalue { ptr, i32 } %i.wi, 1
  store ptr %.fca.0.extract89.i, ptr %124, align 8
  %.sroa.292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %124, i64 8
  store i32 %.fca.1.extract90.i, ptr %.sroa.292.0..sroa_idx.i, align 8
  %i.wj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0106.0.copyload.i, ptr %.sroa.2108.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %121, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %122, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %123, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %124) #28 ; 2 uses
  %.fca.0.extract85.i = extractvalue { ptr, i32 } %i.wj, 0
  %.fca.1.extract86.i = extractvalue { ptr, i32 } %i.wj, 1
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i: ; preds = %bb.cw, %_ZN4llvm16isShiftedMask_64Em.exit.i406.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i, %._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread_crit_edge.i
  %i.wk = phi i32 [ %.pre.i216, %._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread_crit_edge.i ], [ %i.pm, %bb.cw ], [ %i.pm, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit404.i ], [ %i.pm, %_ZN4llvm16isShiftedMask_64Em.exit.i406.i ], [ %i.pm, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit390.thread.i ] ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 24 ; 2 uses
  %i.wm = icmp eq i32 %i.wk, 198
  br i1 %i.wm, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i.thread, label %thread-pre-split.i

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i.thread: ; preds = %bb.cr, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i
  %i.wn = phi ptr [ %i.wl, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i ], [ %i.pl, %bb.cr ] ; 9 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !354 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !355 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !163
  %i.wt = icmp eq i32 %i.ws, 193
  br i1 %i.wt, label %bb.de, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

bb.de:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i.thread
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 40
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !354
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 40
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !355 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !163
  switch i32 %i.wz, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit419.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit419.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit419.i: ; preds = %bb.de, %bb.de
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 88
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !356 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 24 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 32
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !359
  %i.xf = icmp ult i32 %i.xe, 65
  %i.xg = load ptr, ptr %i.xc, align 8
  %spec.select.i.i.i420.i = select i1 %i.xf, ptr %i.xc, ptr %i.xg ; 2 uses
  %.0.i.i.i421.i = load i64, ptr %spec.select.i.i.i420.i, align 8, !tbaa !151 ; 5 uses
  %.not.i.i422.i = icmp eq i64 %.0.i.i.i421.i, 0
  br i1 %.not.i.i422.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i423.i

_ZN4llvm16isShiftedMask_64Em.exit.i423.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit419.i
  %i.xh = add i64 %.0.i.i.i421.i, -1
  %i.xi = or i64 %i.xh, %.0.i.i.i421.i            ; 2 uses
  %i.xj = add i64 %i.xi, 1
  %i.xk = and i64 %i.xj, %i.xi
  %i.xl = icmp eq i64 %i.xk, 0
  br i1 %i.xl, label %_ZN4llvm16isShiftedMask_64EmRjS0_.exit424.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

_ZN4llvm16isShiftedMask_64EmRjS0_.exit424.i:      ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i423.i
  %i.xm = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i421.i) ; 2 uses
  %i.xn = and i64 %.0.i.i.i421.i, 1
  %.not314.i = icmp eq i64 %i.xn, 0
  br i1 %.not314.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i, label %bb.df

bb.df:                                            ; preds = %_ZN4llvm16isShiftedMask_64EmRjS0_.exit424.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !355 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !163
  switch i32 %i.xr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit426.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit426.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit426.i: ; preds = %bb.df, %bb.df
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 88
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !356 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !359
  %i.xx = icmp ult i32 %i.xw, 65
  %i.xy = load ptr, ptr %i.xu, align 8
  %spec.select.i.i.i427.i = select i1 %i.xx, ptr %i.xu, ptr %i.xy
  %.0.i.i.i428.i = load i64, ptr %spec.select.i.i.i427.i, align 8, !tbaa !151 ; 3 uses
  %i.xz = add i64 %.0.i.i.i428.i, %i.xm
  %.not326.i = icmp ugt i64 %i.xz, %i.ja
  br i1 %.not326.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i, label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit426.i
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #28
  %.0.i.i.i432.i = load i64, ptr %spec.select.i.i.i420.i, align 8, !tbaa !151
  %i.ya = and i64 %.0.i.i.i428.i, 4294967295      ; 2 uses
  %i.yb = shl i64 %.0.i.i.i432.i, %i.ya
  store i32 %i.ix, ptr %i.jb, align 8, !tbaa !359
  store i64 %i.yb, ptr %125, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #28
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %126, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr nonnull %.sroa.0130.0.i, i32 %.sroa.39.sroa.0.0.i, i32 noundef 0) #28
  %i.yc = load i32, ptr %i.jb, align 8, !tbaa !359
  %i.yd = icmp ult i32 %i.yc, 65
  br i1 %i.yd, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.ye = load i64, ptr %125, align 8, !tbaa !151
  %i.yf = load i64, ptr %126, align 8, !tbaa !151
  %i.yg = xor i64 %i.yf, -1
  %i.yh = and i64 %i.ye, %i.yg
  %i.yi = icmp eq i64 %i.yh, 0
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit.i

bb.dh:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.yj = call noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %125, ptr noundef nonnull align 8 dereferenceable(12) %126) #31
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit.i

_ZNK4llvm5APInt10isSubsetOfERKS0_.exit.i:         ; preds = %bb.dh, %bb.dg
  %.0.i.i = phi i1 [ %i.yi, %bb.dg ], [ %i.yj, %bb.dh ]
  %i.yk = load i32, ptr %i.jc, align 8, !tbaa !359
  %i.yl = icmp ugt i32 %i.yk, 64
  br i1 %i.yl, label %bb.di, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.di:                                            ; preds = %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit.i
  %i.ym = load ptr, ptr %i.jd, align 8, !tbaa !151 ; 2 uses
  %i.yn = icmp eq ptr %i.ym, null
  br i1 %i.yn, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZdaPv(ptr noundef nonnull %i.ym) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.dj, %bb.di, %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit.i
  %i.yo = load i32, ptr %i.je, align 8, !tbaa !359
  %i.yp = icmp ugt i32 %i.yo, 64
  br i1 %i.yp, label %bb.dk, label %_ZN4llvm9KnownBitsD2Ev.exit.i

bb.dk:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.yq = load ptr, ptr %126, align 8, !tbaa !151 ; 2 uses
  %i.yr = icmp eq ptr %i.yq, null
  br i1 %i.yr, label %_ZN4llvm9KnownBitsD2Ev.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZdaPv(ptr noundef nonnull %i.yq) #30
  br label %_ZN4llvm9KnownBitsD2Ev.exit.i

_ZN4llvm9KnownBitsD2Ev.exit.i:                    ; preds = %bb.dl, %bb.dk, %_ZN4llvm5APIntD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #28
  br i1 %.0.i.i, label %bb.dm, label %.critedge.i227

bb.dm:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit.i
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %.sroa.071.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.273.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  store ptr %.sroa.0130.0.i, ptr %127, align 8, !tbaa !361
  %.sroa.28141.0..sroa_idx142.i = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i32 %.sroa.39.sroa.0.0.i, ptr %.sroa.28141.0..sroa_idx142.i, align 8, !tbaa !147
  %.sroa.33.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %127, i64 12
  store i32 %.sroa.33.0.copyload.i, ptr %.sroa.33.0..sroa_idx153.i, align 4
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !354
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !355
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %128, ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i64 16, i1 false), !tbaa.struct !499
  %i.yx = add nuw nsw i64 %i.xm, 4294967295
  %i.yy = add i64 %i.yx, %.0.i.i.i428.i
  %i.yz = and i64 %i.yy, 4294967295
  %i.za = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.yz, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract66.i = extractvalue { ptr, i32 } %i.za, 0
  %.fca.1.extract67.i = extractvalue { ptr, i32 } %i.za, 1
  store ptr %.fca.0.extract66.i, ptr %129, align 8
  %.sroa.269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %129, i64 8
  store i32 %.fca.1.extract67.i, ptr %.sroa.269.0..sroa_idx.i, align 8
  %i.zb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.ya, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract61.i = extractvalue { ptr, i32 } %i.zb, 0
  %.fca.1.extract62.i = extractvalue { ptr, i32 } %i.zb, 1
  store ptr %.fca.0.extract61.i, ptr %130, align 8
  %.sroa.264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %130, i64 8
  store i32 %.fca.1.extract62.i, ptr %.sroa.264.0..sroa_idx.i, align 8
  %i.zc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.071.0.copyload.i, ptr %.sroa.273.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %127, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %128, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %129, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %130) #28 ; 2 uses
  %.fca.0.extract57.i = extractvalue { ptr, i32 } %i.zc, 0
  %.fca.1.extract58.i = extractvalue { ptr, i32 } %i.zc, 1
  %i.zd = load i32, ptr %i.jb, align 8, !tbaa !359
  %i.ze = icmp ugt i32 %i.zd, 64
  br i1 %i.ze, label %bb.dn, label %_ZN4llvm5APIntD2Ev.exit.i228

bb.dn:                                            ; preds = %bb.dm
  %i.zf = load ptr, ptr %125, align 8, !tbaa !151 ; 2 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %_ZN4llvm5APIntD2Ev.exit.i228, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.zf) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i228

_ZN4llvm5APIntD2Ev.exit.i228:                     ; preds = %bb.do, %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

.critedge.i227:                                   ; preds = %_ZN4llvm9KnownBitsD2Ev.exit.i
  %i.zh = load i32, ptr %i.jb, align 8, !tbaa !359
  %i.zi = icmp ugt i32 %i.zh, 64
  br i1 %i.zi, label %bb.dp, label %_ZN4llvm5APIntD2Ev.exit433.i

bb.dp:                                            ; preds = %.critedge.i227
  %i.zj = load ptr, ptr %125, align 8, !tbaa !151 ; 2 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %_ZN4llvm5APIntD2Ev.exit433.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_ZdaPv(ptr noundef nonnull %i.zj) #30
  br label %_ZN4llvm5APIntD2Ev.exit433.i

_ZN4llvm5APIntD2Ev.exit433.i:                     ; preds = %bb.dq, %bb.dp, %.critedge.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #28
  %.pr.pre.i = load i32, ptr %i.wn, align 8, !tbaa !163
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN4llvm5APIntD2Ev.exit433.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i
  %i.zl = phi ptr [ %i.wn, %_ZN4llvm5APIntD2Ev.exit433.i ], [ %i.wl, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i ] ; 2 uses
  %i.zm = phi i32 [ %.pr.pre.i, %_ZN4llvm5APIntD2Ev.exit433.i ], [ %i.wk, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i ]
  %i.zn = icmp eq i32 %i.zm, 193
  br i1 %i.zn, label %thread-pre-split.i.thread, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

thread-pre-split.i.thread:                        ; preds = %bb.ch, %thread-pre-split.i
  %i.zo = phi ptr [ %i.zl, %thread-pre-split.i ], [ %i.pl, %bb.ch ] ; 7 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !354 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 40
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !355 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 24
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !163
  switch i32 %i.zu, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.i: ; preds = %thread-pre-split.i.thread, %thread-pre-split.i.thread
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 88
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !356 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 24 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zz = load i32, ptr %i.zy, align 8, !tbaa !359
  %i.aaa = icmp ult i32 %i.zz, 65
  %i.aab = load ptr, ptr %i.zx, align 8
  %spec.select.i.i.i436.i = select i1 %i.aaa, ptr %i.zx, ptr %i.aab ; 2 uses
  %.0.i.i.i437.i = load i64, ptr %spec.select.i.i.i436.i, align 8, !tbaa !151 ; 5 uses
  %.not.i.i438.i = icmp eq i64 %.0.i.i.i437.i, 0
  br i1 %.not.i.i438.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i439.i

_ZN4llvm16isShiftedMask_64Em.exit.i439.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.i
  %i.aac = add i64 %.0.i.i.i437.i, -1
  %i.aad = or i64 %i.aac, %.0.i.i.i437.i          ; 2 uses
  %i.aae = add i64 %i.aad, 1
  %i.aaf = and i64 %i.aae, %i.aad
  %i.aag = icmp eq i64 %i.aaf, 0
  br i1 %i.aag, label %bb.dr, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

bb.dr:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i439.i
  %i.aah = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i437.i, i1 true) ; 3 uses
  %i.aai = load ptr, ptr %i.zq, align 8, !tbaa !355 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !163
  %i.aal = icmp eq i32 %i.aak, 198
  br i1 %i.aal, label %bb.ds, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

bb.ds:                                            ; preds = %bb.dr
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 40
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !354
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 40
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !355 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !163
  switch i32 %i.aar, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit442.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit442.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit442.i: ; preds = %bb.ds, %bb.ds
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 88
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !356 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 24 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 32
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !359
  %i.aax = icmp ult i32 %i.aaw, 65
  %i.aay = load ptr, ptr %i.aau, align 8
  %spec.select.i.i.i443.i = select i1 %i.aax, ptr %i.aau, ptr %i.aay
  %.0.i.i.i444.i = load i64, ptr %spec.select.i.i.i443.i, align 8, !tbaa !151
  %i.aaz = icmp eq i64 %.0.i.i.i444.i, %i.aah
  br i1 %i.aaz, label %_ZN4llvm5APIntC2Ejmbb.exit447.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

_ZN4llvm5APIntC2Ejmbb.exit447.i:                  ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit442.i
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #28
  %.0.i.i.i446.i = load i64, ptr %spec.select.i.i.i436.i, align 8, !tbaa !151
  store i32 %i.ix, ptr %i.jf, align 8, !tbaa !359
  store i64 %.0.i.i.i446.i, ptr %131, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #28
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %132, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr nonnull %.sroa.0130.0.i, i32 %.sroa.39.sroa.0.0.i, i32 noundef 0) #28
  %i.aba = load i32, ptr %i.jf, align 8, !tbaa !359
  %i.abb = icmp ult i32 %i.aba, 65
  br i1 %i.abb, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit447.i
  %i.abc = load i64, ptr %131, align 8, !tbaa !151
  %i.abd = load i64, ptr %132, align 8, !tbaa !151
  %i.abe = xor i64 %i.abd, -1
  %i.abf = and i64 %i.abc, %i.abe
  %i.abg = icmp eq i64 %i.abf, 0
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit449.i

bb.du:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit447.i
  %i.abh = call noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %131, ptr noundef nonnull align 8 dereferenceable(12) %132) #31
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit449.i

_ZNK4llvm5APInt10isSubsetOfERKS0_.exit449.i:      ; preds = %bb.du, %bb.dt
  %.0.i448.i = phi i1 [ %i.abg, %bb.dt ], [ %i.abh, %bb.du ]
  %i.abi = load i32, ptr %i.jg, align 8, !tbaa !359
  %i.abj = icmp ugt i32 %i.abi, 64
  br i1 %i.abj, label %bb.dv, label %_ZN4llvm5APIntD2Ev.exit.i450.i

bb.dv:                                            ; preds = %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit449.i
  %i.abk = load ptr, ptr %i.jh, align 8, !tbaa !151 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %_ZN4llvm5APIntD2Ev.exit.i450.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_ZdaPv(ptr noundef nonnull %i.abk) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i450.i

_ZN4llvm5APIntD2Ev.exit.i450.i:                   ; preds = %bb.dw, %bb.dv, %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit449.i
  %i.abm = load i32, ptr %i.ji, align 8, !tbaa !359
  %i.abn = icmp ugt i32 %i.abm, 64
  br i1 %i.abn, label %bb.dx, label %_ZN4llvm9KnownBitsD2Ev.exit451.i

bb.dx:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i450.i
  %i.abo = load ptr, ptr %132, align 8, !tbaa !151 ; 2 uses
  %i.abp = icmp eq ptr %i.abo, null
  br i1 %i.abp, label %_ZN4llvm9KnownBitsD2Ev.exit451.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_ZdaPv(ptr noundef nonnull %i.abo) #30
  br label %_ZN4llvm9KnownBitsD2Ev.exit451.i

_ZN4llvm9KnownBitsD2Ev.exit451.i:                 ; preds = %bb.dy, %bb.dx, %_ZN4llvm5APIntD2Ev.exit.i450.i
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #28
  br i1 %.0.i448.i, label %bb.dz, label %.critedge332.i

bb.dz:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit451.i
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.abr = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i437.i)
  %.sroa.051.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.253.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  store ptr %.sroa.0130.0.i, ptr %133, align 8, !tbaa !361
  %.sroa.28141.0..sroa_idx144.i = getelementptr inbounds nuw i8, ptr %133, i64 8
  store i32 %.sroa.39.sroa.0.0.i, ptr %.sroa.28141.0..sroa_idx144.i, align 8, !tbaa !147
  %.sroa.33.0..sroa_idx155.i = getelementptr inbounds nuw i8, ptr %133, i64 12
  store i32 %.sroa.33.0.copyload.i, ptr %.sroa.33.0..sroa_idx155.i, align 4
  %i.abs = load ptr, ptr %i.abq, align 8, !tbaa !354
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !355
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 40
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, ptr noundef nonnull align 8 dereferenceable(16) %i.abv, i64 16, i1 false), !tbaa.struct !499
  %i.abw = add nuw nsw i64 %i.abr, 4294967295
  %i.abx = add nuw nsw i64 %i.abw, %i.aah
  %i.aby = and i64 %i.abx, 4294967295
  %i.abz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.aby, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract46.i = extractvalue { ptr, i32 } %i.abz, 0
  %.fca.1.extract47.i = extractvalue { ptr, i32 } %i.abz, 1
  store ptr %.fca.0.extract46.i, ptr %135, align 8
  %.sroa.249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i32 %.fca.1.extract47.i, ptr %.sroa.249.0..sroa_idx.i, align 8
  %i.aca = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.aah, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract41.i223 = extractvalue { ptr, i32 } %i.aca, 0
  %.fca.1.extract42.i224 = extractvalue { ptr, i32 } %i.aca, 1
  store ptr %.fca.0.extract41.i223, ptr %136, align 8
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %136, i64 8
  store i32 %.fca.1.extract42.i224, ptr %.sroa.244.0..sroa_idx.i, align 8
  %i.acb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.051.0.copyload.i, ptr %.sroa.253.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %133, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %134, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %135, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %136) #28 ; 2 uses
  %.fca.0.extract37.i225 = extractvalue { ptr, i32 } %i.acb, 0
  %.fca.1.extract38.i226 = extractvalue { ptr, i32 } %i.acb, 1
  %i.acc = load i32, ptr %i.jf, align 8, !tbaa !359
  %i.acd = icmp ugt i32 %i.acc, 64
  br i1 %i.acd, label %bb.ea, label %_ZN4llvm5APIntD2Ev.exit452.i

bb.ea:                                            ; preds = %bb.dz
  %i.ace = load ptr, ptr %131, align 8, !tbaa !151 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, null
  br i1 %i.acf, label %_ZN4llvm5APIntD2Ev.exit452.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_ZdaPv(ptr noundef nonnull %i.ace) #30
  br label %_ZN4llvm5APIntD2Ev.exit452.i

_ZN4llvm5APIntD2Ev.exit452.i:                     ; preds = %bb.eb, %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #28
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

.critedge332.i:                                   ; preds = %_ZN4llvm9KnownBitsD2Ev.exit451.i
  %i.acg = load i32, ptr %i.jf, align 8, !tbaa !359
  %i.ach = icmp ugt i32 %i.acg, 64
  br i1 %i.ach, label %bb.ec, label %_ZN4llvm5APIntD2Ev.exit453.i

bb.ec:                                            ; preds = %.critedge332.i
  %i.aci = load ptr, ptr %131, align 8, !tbaa !151 ; 2 uses
  %i.acj = icmp eq ptr %i.aci, null
  br i1 %i.acj, label %_ZN4llvm5APIntD2Ev.exit453.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZdaPv(ptr noundef nonnull %i.aci) #30
  br label %_ZN4llvm5APIntD2Ev.exit453.i

_ZN4llvm5APIntD2Ev.exit453.i:                     ; preds = %bb.ed, %bb.ec, %.critedge332.i
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #28
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit414.i, %_ZN4llvm5APIntD2Ev.exit453.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit442.i, %bb.ds, %bb.dr, %_ZN4llvm16isShiftedMask_64Em.exit.i439.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.i, %thread-pre-split.i.thread, %thread-pre-split.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit426.i, %bb.df, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit424.i, %_ZN4llvm16isShiftedMask_64Em.exit.i423.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit419.i, %bb.de, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i.thread
  %i.ack = phi ptr [ %i.zl, %thread-pre-split.i ], [ %i.zo, %bb.ds ], [ %i.zo, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.i ], [ %i.zo, %_ZN4llvm16isShiftedMask_64Em.exit.i439.i ], [ %i.zo, %thread-pre-split.i.thread ], [ %i.zo, %_ZN4llvm5APIntD2Ev.exit453.i ], [ %i.zo, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit442.i ], [ %i.zo, %bb.dr ], [ %i.wn, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit426.i ], [ %i.wn, %_ZN4llvm16isShiftedMask_64EmRjS0_.exit424.i ], [ %i.wn, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit401.thread.i.thread ], [ %i.wn, %bb.de ], [ %i.wn, %_ZN4llvm16isShiftedMask_64Em.exit.i423.i ], [ %i.wn, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit419.i ], [ %i.wn, %bb.df ], [ %i.pl, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit414.i ]
  br i1 %.0.i215, label %.preheader.i, label %163

.preheader.i:                                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.i, i64 24
  %i.acm = getelementptr inbounds nuw i8, ptr %137, i64 8 ; 7 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %138, i64 24 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 2 uses
  %i.acq = load i32, ptr %i.ack, align 8, !tbaa !163
  %i.acr = icmp eq i32 %i.acq, 193
  br i1 %i.acr, label %bb.ee, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i

163:                                              ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit435.thread.i
  %.sroa.39.0.extract.trunc.i = trunc i64 %.sroa.39.0.i to i32
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.39.sroa.0.0.i to i64
  %.sroa.39.0.insert.mask.i = and i64 %.sroa.39.0.i, -4294967296
  %.sroa.39.0.insert.insert.i = or disjoint i64 %.sroa.39.0.insert.mask.i, %.sroa.39.0.insert.ext.i
  br label %bb.bp

bb.ee:                                            ; preds = %.preheader.i
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.080.0.i, i64 40
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !354
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 40
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !355 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  %i.acx = load i32, ptr %i.acw, align 8, !tbaa !163
  switch i32 %i.acx, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.i: ; preds = %bb.ee, %bb.ee
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 88
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !356 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 24 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 32
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !359
  %i.add = icmp ult i32 %i.adc, 65
  %i.ade = load ptr, ptr %i.ada, align 8
  %spec.select.i.i.i456.i = select i1 %i.add, ptr %i.ada, ptr %i.ade ; 2 uses
  %.0.i.i.i457.i = load i64, ptr %spec.select.i.i.i456.i, align 8, !tbaa !151 ; 4 uses
  %.not.i.i458.i = icmp eq i64 %.0.i.i.i457.i, 0
  br i1 %.not.i.i458.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i459.i

_ZN4llvm16isShiftedMask_64Em.exit.i459.i:         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.i
  %i.adf = add i64 %.0.i.i.i457.i, -1
  %i.adg = or i64 %i.adf, %.0.i.i.i457.i          ; 2 uses
  %i.adh = add i64 %i.adg, 1
  %i.adi = and i64 %i.adh, %i.adg
  %i.adj = icmp eq i64 %i.adi, 0
  br i1 %i.adj, label %_ZN4llvm5APIntC2Ejmbb.exit463.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i

_ZN4llvm5APIntC2Ejmbb.exit463.i:                  ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i459.i
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #28
  %.0.i.i.i462.i = load i64, ptr %spec.select.i.i.i456.i, align 8, !tbaa !151
  store i32 %i.ix, ptr %i.acm, align 8, !tbaa !359
  store i64 %.0.i.i.i462.i, ptr %137, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #28
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %138, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr nonnull %.sroa.0130.0.i, i32 %.sroa.39.sroa.0.0.i, i32 noundef 0) #28
  %i.adk = load i32, ptr %i.acm, align 8, !tbaa !359
  %i.adl = icmp ult i32 %i.adk, 65
  br i1 %i.adl, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit463.i
  %i.adm = load i64, ptr %137, align 8, !tbaa !151
  %i.adn = load i64, ptr %138, align 8, !tbaa !151
  %i.ado = xor i64 %i.adn, -1
  %i.adp = and i64 %i.adm, %i.ado
  %i.adq = icmp eq i64 %i.adp, 0
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.i

bb.eg:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit463.i
  %i.adr = call noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %137, ptr noundef nonnull align 8 dereferenceable(12) %138) #31
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.i

_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.i:      ; preds = %bb.eg, %bb.ef
  %.0.i464.i = phi i1 [ %i.adq, %bb.ef ], [ %i.adr, %bb.eg ]
  %i.ads = load i32, ptr %i.acn, align 8, !tbaa !359
  %i.adt = icmp ugt i32 %i.ads, 64
  br i1 %i.adt, label %bb.eh, label %_ZN4llvm5APIntD2Ev.exit.i466.i

bb.eh:                                            ; preds = %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.i
  %i.adu = load ptr, ptr %i.aco, align 8, !tbaa !151 ; 2 uses
  %i.adv = icmp eq ptr %i.adu, null
  br i1 %i.adv, label %_ZN4llvm5APIntD2Ev.exit.i466.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZdaPv(ptr noundef nonnull %i.adu) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i466.i

_ZN4llvm5APIntD2Ev.exit.i466.i:                   ; preds = %bb.ei, %bb.eh, %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.i
  %i.adw = load i32, ptr %i.acp, align 8, !tbaa !359
  %i.adx = icmp ugt i32 %i.adw, 64
  br i1 %i.adx, label %bb.ej, label %_ZN4llvm9KnownBitsD2Ev.exit467.i

bb.ej:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i466.i
  %i.ady = load ptr, ptr %138, align 8, !tbaa !151 ; 2 uses
  %i.adz = icmp eq ptr %i.ady, null
  br i1 %i.adz, label %_ZN4llvm9KnownBitsD2Ev.exit467.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZdaPv(ptr noundef nonnull %i.ady) #30
  br label %_ZN4llvm9KnownBitsD2Ev.exit467.i

_ZN4llvm9KnownBitsD2Ev.exit467.i:                 ; preds = %bb.ek, %bb.ej, %_ZN4llvm5APIntD2Ev.exit.i466.i
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #28
  br i1 %.0.i464.i, label %bb.el, label %.critedge334.i

bb.el:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit467.1.i, %_ZN4llvm9KnownBitsD2Ev.exit467.i
  %.sroa.080.1.lcssa.i = phi ptr [ %.sroa.080.0.i, %_ZN4llvm9KnownBitsD2Ev.exit467.i ], [ %.sroa.0130.0.i, %_ZN4llvm9KnownBitsD2Ev.exit467.1.i ] ; 2 uses
  %.sroa.0121.1.lcssa.i = phi ptr [ %.sroa.0130.0.i, %_ZN4llvm9KnownBitsD2Ev.exit467.i ], [ %.sroa.080.0.i, %_ZN4llvm9KnownBitsD2Ev.exit467.1.i ]
  %.sroa.28141.1.lcssa.i = phi i32 [ %.sroa.39.sroa.0.0.i, %_ZN4llvm9KnownBitsD2Ev.exit467.i ], [ %.sroa.39.0.extract.trunc123.i, %_ZN4llvm9KnownBitsD2Ev.exit467.1.i ]
  %.0.i.i.i457.lcssa.i = phi i64 [ %.0.i.i.i457.i, %_ZN4llvm9KnownBitsD2Ev.exit467.i ], [ %.0.i.i.i457.1.i, %_ZN4llvm9KnownBitsD2Ev.exit467.1.i ] ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.080.1.lcssa.i, i64 40
  %i.aeb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i457.lcssa.i, i1 true) ; 3 uses
  %i.aec = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i457.lcssa.i)
  %.sroa.032.0.copyload.i = load i16, ptr %101, align 8, !tbaa !31
  %.sroa.234.0.copyload.i = load ptr, ptr %i.ij, align 8, !tbaa !487
  store ptr %.sroa.0121.1.lcssa.i, ptr %139, align 8, !tbaa !361
  %.sroa.28141.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i32 %.sroa.28141.1.lcssa.i, ptr %.sroa.28141.0..sroa_idx146.i, align 8, !tbaa !147
  %.sroa.33.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %139, i64 12
  store i32 %.sroa.33.0.copyload.i, ptr %.sroa.33.0..sroa_idx157.i, align 4
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.080.1.lcssa.i, i64 48
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i468.i = load i16, ptr %i.aee, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i469.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %.sroa.21.0.copyload.i470.i = load ptr, ptr %.sroa.21.0..sroa_idx.i469.i, align 8, !tbaa !487
  %i.aef = load ptr, ptr %i.aea, align 8, !tbaa !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr noundef nonnull align 8 dereferenceable(16) %i.aef, i64 16, i1 false), !tbaa.struct !499
  %i.aeg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.aeb, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract25.i = extractvalue { ptr, i32 } %i.aeg, 0
  %.fca.1.extract26.i = extractvalue { ptr, i32 } %i.aeg, 1
  store ptr %.fca.0.extract25.i, ptr %142, align 8
  %.sroa.228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %142, i64 8
  store i32 %.fca.1.extract26.i, ptr %.sroa.228.0..sroa_idx.i, align 8
  %i.aeh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.0.0.copyload.i468.i, ptr %.sroa.21.0.copyload.i470.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %141, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %142) #28 ; 2 uses
  %.fca.0.extract21.i217 = extractvalue { ptr, i32 } %i.aeh, 0
  %.fca.1.extract22.i218 = extractvalue { ptr, i32 } %i.aeh, 1
  store ptr %.fca.0.extract21.i217, ptr %140, align 8
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 %.fca.1.extract22.i218, ptr %.sroa.224.0..sroa_idx.i, align 8
  %i.aei = add nuw nsw i64 %i.aec, 4294967295
  %i.aej = add nuw nsw i64 %i.aei, %i.aeb
  %i.aek = and i64 %i.aej, 4294967295
  %i.ael = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.aek, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract16.i = extractvalue { ptr, i32 } %i.ael, 0
  %.fca.1.extract17.i = extractvalue { ptr, i32 } %i.ael, 1
  store ptr %.fca.0.extract16.i, ptr %143, align 8
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %143, i64 8
  store i32 %.fca.1.extract17.i, ptr %.sroa.219.0..sroa_idx.i, align 8
  %i.aem = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i64 noundef %i.aeb, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.val170, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract11.i219 = extractvalue { ptr, i32 } %i.aem, 0
  %.fca.1.extract12.i220 = extractvalue { ptr, i32 } %i.aem, 1
  store ptr %.fca.0.extract11.i219, ptr %144, align 8
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %144, i64 8
  store i32 %.fca.1.extract12.i220, ptr %.sroa.214.0..sroa_idx.i, align 8
  %i.aen = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 543, ptr noundef nonnull align 8 dereferenceable(12) %102, i16 %.sroa.032.0.copyload.i, ptr %.sroa.234.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %139, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %140, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %143, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %144) #28 ; 2 uses
  %.fca.0.extract.i221 = extractvalue { ptr, i32 } %i.aen, 0
  %.fca.1.extract.i222 = extractvalue { ptr, i32 } %i.aen, 1
  %i.aeo = load i32, ptr %i.acm, align 8, !tbaa !359
  %i.aep = icmp ugt i32 %i.aeo, 64
  br i1 %i.aep, label %bb.em, label %_ZN4llvm5APIntD2Ev.exit473.i

bb.em:                                            ; preds = %bb.el
  %i.aeq = load ptr, ptr %137, align 8, !tbaa !151 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %_ZN4llvm5APIntD2Ev.exit473.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_ZdaPv(ptr noundef nonnull %i.aeq) #30
  br label %_ZN4llvm5APIntD2Ev.exit473.i

_ZN4llvm5APIntD2Ev.exit473.i:                     ; preds = %bb.en, %bb.em, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

.critedge334.i:                                   ; preds = %_ZN4llvm9KnownBitsD2Ev.exit467.i
  %i.aes = load i32, ptr %i.acm, align 8, !tbaa !359
  %i.aet = icmp ugt i32 %i.aes, 64
  br i1 %i.aet, label %bb.eo, label %_ZN4llvm5APIntD2Ev.exit474.i

bb.eo:                                            ; preds = %.critedge334.i
  %i.aeu = load ptr, ptr %137, align 8, !tbaa !151 ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, null
  br i1 %i.aev, label %_ZN4llvm5APIntD2Ev.exit474.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @_ZdaPv(ptr noundef nonnull %i.aeu) #30
  br label %_ZN4llvm5APIntD2Ev.exit474.i

_ZN4llvm5APIntD2Ev.exit474.i:                     ; preds = %bb.ep, %bb.eo, %.critedge334.i
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i: ; preds = %_ZN4llvm5APIntD2Ev.exit474.i, %_ZN4llvm16isShiftedMask_64Em.exit.i459.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.i, %bb.ee, %.preheader.i
  %.sroa.39.0.extract.trunc123.i = trunc i64 %.sroa.39.0.i to i32 ; 2 uses
  %i.aew = load i32, ptr %i.acl, align 8, !tbaa !163
  %i.aex = icmp eq i32 %i.aew, 193
  br i1 %i.aex, label %bb.eq, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.eq:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.i, i64 40
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !354
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 40
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !355 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !163
  switch i32 %i.afd, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i: ; preds = %bb.eq, %bb.eq
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 88
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !356 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 24 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load i32, ptr %i.afh, align 8, !tbaa !359
  %i.afj = icmp ult i32 %i.afi, 65
  %i.afk = load ptr, ptr %i.afg, align 8
  %spec.select.i.i.i456.1.i = select i1 %i.afj, ptr %i.afg, ptr %i.afk ; 2 uses
  %.0.i.i.i457.1.i = load i64, ptr %spec.select.i.i.i456.1.i, align 8, !tbaa !151 ; 4 uses
  %.not.i.i458.1.i = icmp eq i64 %.0.i.i.i457.1.i, 0
  br i1 %.not.i.i458.1.i, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.i459.1.i

_ZN4llvm16isShiftedMask_64Em.exit.i459.1.i:       ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i
  %i.afl = add i64 %.0.i.i.i457.1.i, -1
  %i.afm = or i64 %i.afl, %.0.i.i.i457.1.i        ; 2 uses
  %i.afn = add i64 %i.afm, 1
  %i.afo = and i64 %i.afn, %i.afm
  %i.afp = icmp eq i64 %i.afo, 0
  br i1 %i.afp, label %_ZN4llvm5APIntC2Ejmbb.exit463.1.i, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZN4llvm5APIntC2Ejmbb.exit463.1.i:                ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i459.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #28
  %.0.i.i.i462.1.i = load i64, ptr %spec.select.i.i.i456.1.i, align 8, !tbaa !151
  store i32 %i.ix, ptr %i.acm, align 8, !tbaa !359
  store i64 %.0.i.i.i462.1.i, ptr %137, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #28
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %138, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr nonnull %.sroa.080.0.i, i32 %.sroa.39.0.extract.trunc123.i, i32 noundef 0) #28
  %i.afq = load i32, ptr %i.acm, align 8, !tbaa !359
  %i.afr = icmp ult i32 %i.afq, 65
  br i1 %i.afr, label %bb.es, label %bb.er

bb.er:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit463.1.i
  %i.afs = call noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %137, ptr noundef nonnull align 8 dereferenceable(12) %138) #31
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.1.i

bb.es:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit463.1.i
  %i.aft = load i64, ptr %137, align 8, !tbaa !151
  %i.afu = load i64, ptr %138, align 8, !tbaa !151
  %i.afv = xor i64 %i.afu, -1
  %i.afw = and i64 %i.aft, %i.afv
  %i.afx = icmp eq i64 %i.afw, 0
  br label %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.1.i

_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.1.i:    ; preds = %bb.es, %bb.er
  %.0.i464.1.i = phi i1 [ %i.afx, %bb.es ], [ %i.afs, %bb.er ]
  %i.afy = load i32, ptr %i.acn, align 8, !tbaa !359
  %i.afz = icmp ugt i32 %i.afy, 64
  br i1 %i.afz, label %bb.et, label %_ZN4llvm5APIntD2Ev.exit.i466.1.i

bb.et:                                            ; preds = %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.1.i
  %i.aga = load ptr, ptr %i.aco, align 8, !tbaa !151 ; 2 uses
  %i.agb = icmp eq ptr %i.aga, null
  br i1 %i.agb, label %_ZN4llvm5APIntD2Ev.exit.i466.1.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_ZdaPv(ptr noundef nonnull %i.aga) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i466.1.i

_ZN4llvm5APIntD2Ev.exit.i466.1.i:                 ; preds = %bb.eu, %bb.et, %_ZNK4llvm5APInt10isSubsetOfERKS0_.exit465.1.i
  %i.agc = load i32, ptr %i.acp, align 8, !tbaa !359
  %i.agd = icmp ugt i32 %i.agc, 64
  br i1 %i.agd, label %bb.ev, label %_ZN4llvm9KnownBitsD2Ev.exit467.1.i

bb.ev:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i466.1.i
  %i.age = load ptr, ptr %138, align 8, !tbaa !151 ; 2 uses
  %i.agf = icmp eq ptr %i.age, null
  br i1 %i.agf, label %_ZN4llvm9KnownBitsD2Ev.exit467.1.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @_ZdaPv(ptr noundef nonnull %i.age) #30
  br label %_ZN4llvm9KnownBitsD2Ev.exit467.1.i

_ZN4llvm9KnownBitsD2Ev.exit467.1.i:               ; preds = %bb.ew, %bb.ev, %_ZN4llvm5APIntD2Ev.exit.i466.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #28
  br i1 %.0.i464.1.i, label %bb.el, label %.critedge334.1.i

.critedge334.1.i:                                 ; preds = %_ZN4llvm9KnownBitsD2Ev.exit467.1.i
  %i.agg = load i32, ptr %i.acm, align 8, !tbaa !359
  %i.agh = icmp ugt i32 %i.agg, 64
  br i1 %i.agh, label %bb.ex, label %_ZN4llvm5APIntD2Ev.exit474.1.i

bb.ex:                                            ; preds = %.critedge334.1.i
  %i.agi = load ptr, ptr %137, align 8, !tbaa !151 ; 2 uses
  %i.agj = icmp eq ptr %i.agi, null
  br i1 %i.agj, label %_ZN4llvm5APIntD2Ev.exit474.1.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @_ZdaPv(ptr noundef nonnull %i.agi) #30
  br label %_ZN4llvm5APIntD2Ev.exit474.1.i

_ZN4llvm5APIntD2Ev.exit474.1.i:                   ; preds = %bb.ey, %bb.ex, %.critedge334.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #28
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i212, %bb.bo, %bb.by, %bb.cg, %bb.cq, %bb.ct, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit417.i, %_ZN4llvm5APIntD2Ev.exit.i228, %_ZN4llvm5APIntD2Ev.exit452.i, %_ZN4llvm5APIntD2Ev.exit473.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i, %bb.eq, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i, %_ZN4llvm16isShiftedMask_64Em.exit.i459.1.i, %_ZN4llvm5APIntD2Ev.exit474.1.i
  %.sroa.17.1.i = phi i32 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i212 ], [ %.fca.1.extract38.i226, %_ZN4llvm5APIntD2Ev.exit452.i ], [ 0, %bb.bo ], [ %.fca.1.extract86.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit417.i ], [ %.fca.1.extract110.i, %bb.ct ], [ %.fca.1.extract127.i, %bb.cq ], [ %.fca.1.extract155.i, %bb.cg ], [ %.fca.1.extract172.i, %bb.by ], [ %.fca.1.extract58.i, %_ZN4llvm5APIntD2Ev.exit.i228 ], [ %.fca.1.extract.i222, %_ZN4llvm5APIntD2Ev.exit473.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i ], [ 0, %bb.eq ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.i459.1.i ], [ 0, %_ZN4llvm5APIntD2Ev.exit474.1.i ]
  %.sroa.0167.1.i = phi ptr [ null, %_ZNK4llvm8TypeSizecvmEv.exit.i212 ], [ %.fca.0.extract37.i225, %_ZN4llvm5APIntD2Ev.exit452.i ], [ null, %bb.bo ], [ %.fca.0.extract85.i, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit417.i ], [ %.fca.0.extract109.i, %bb.ct ], [ %.fca.0.extract126.i, %bb.cq ], [ %.fca.0.extract154.i, %bb.cg ], [ %.fca.0.extract171.i, %bb.by ], [ %.fca.0.extract57.i, %_ZN4llvm5APIntD2Ev.exit.i228 ], [ %.fca.0.extract.i221, %_ZN4llvm5APIntD2Ev.exit473.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.thread.i ], [ null, %bb.eq ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit455.1.i ], [ null, %_ZN4llvm16isShiftedMask_64Em.exit.i459.1.i ], [ null, %_ZN4llvm5APIntD2Ev.exit474.1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %104)
  call void @llvm.lifetime.end.p0(ptr nonnull %105)
  call void @llvm.lifetime.end.p0(ptr nonnull %106)
  call void @llvm.lifetime.end.p0(ptr nonnull %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %108)
  call void @llvm.lifetime.end.p0(ptr nonnull %109)
  call void @llvm.lifetime.end.p0(ptr nonnull %110)
  call void @llvm.lifetime.end.p0(ptr nonnull %111)
  call void @llvm.lifetime.end.p0(ptr nonnull %112)
  call void @llvm.lifetime.end.p0(ptr nonnull %113)
  call void @llvm.lifetime.end.p0(ptr nonnull %114)
  call void @llvm.lifetime.end.p0(ptr nonnull %115)
  call void @llvm.lifetime.end.p0(ptr nonnull %116)
  call void @llvm.lifetime.end.p0(ptr nonnull %117)
  call void @llvm.lifetime.end.p0(ptr nonnull %118)
  call void @llvm.lifetime.end.p0(ptr nonnull %119)
  call void @llvm.lifetime.end.p0(ptr nonnull %120)
  call void @llvm.lifetime.end.p0(ptr nonnull %121)
  call void @llvm.lifetime.end.p0(ptr nonnull %122)
  call void @llvm.lifetime.end.p0(ptr nonnull %123)
  call void @llvm.lifetime.end.p0(ptr nonnull %124)
  call void @llvm.lifetime.end.p0(ptr nonnull %127)
  call void @llvm.lifetime.end.p0(ptr nonnull %128)
  call void @llvm.lifetime.end.p0(ptr nonnull %129)
  call void @llvm.lifetime.end.p0(ptr nonnull %130)
  call void @llvm.lifetime.end.p0(ptr nonnull %133)
  call void @llvm.lifetime.end.p0(ptr nonnull %134)
  call void @llvm.lifetime.end.p0(ptr nonnull %135)
  call void @llvm.lifetime.end.p0(ptr nonnull %136)
  call void @llvm.lifetime.end.p0(ptr nonnull %139)
  call void @llvm.lifetime.end.p0(ptr nonnull %140)
  call void @llvm.lifetime.end.p0(ptr nonnull %141)
  call void @llvm.lifetime.end.p0(ptr nonnull %142)
  call void @llvm.lifetime.end.p0(ptr nonnull %143)
  call void @llvm.lifetime.end.p0(ptr nonnull %144)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.ez:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %96)
  call void @llvm.lifetime.start.p0(ptr nonnull %97)
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.lifetime.start.p0(ptr nonnull %100)
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !354 ; 4 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !355
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 88
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !624 ; 2 uses
  %i.agq = load ptr, ptr %i.agl, align 8, !tbaa !355 ; 3 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 24
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !163
  %.not.i236 = icmp eq i32 %i.ags, 193
  br i1 %.not.i236, label %bb.fa, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fa:                                            ; preds = %bb.ez
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agq, i64 40
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !354 ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 40
  %.sroa.045.0.copyload.i.a = load ptr, ptr %i.agv, align 8, !tbaa !361 ; 3 uses
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agu, i64 48
  %.sroa.648.0.copyload.i = load i32, ptr %.sroa.648.0..sroa_idx.i, align 8, !tbaa !147
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.045.0.copyload.i.a, i64 24
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !163
  %.not51.i = icmp eq i32 %i.agx, 228
  br i1 %.not51.i, label %bb.fb, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fb:                                            ; preds = %bb.fa
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agl, i64 40
  %.sroa.042.0.copyload.i = load ptr, ptr %i.agy, align 8, !tbaa !361 ; 3 uses
  %.sroa.034.0.copyload.i = load ptr, ptr %i.agu, align 8, !tbaa !361 ; 3 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload.i, i64 24
  %i.aha = load i32, ptr %i.agz, align 8, !tbaa !163
  switch i32 %i.aha, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit [
    i32 195, label %bb.fc
    i32 228, label %bb.fg
  ]

bb.fc:                                            ; preds = %bb.fb
  switch i32 %i.agp, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit [
    i32 22, label %bb.fd
    i32 17, label %bb.fd
  ]

bb.fd:                                            ; preds = %bb.fc, %bb.fc
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload.i, i64 40
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !354 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 40
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !355 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !163
  switch i32 %i.ahg, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i250
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i250
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i250: ; preds = %bb.fd, %bb.fd
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 88
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !356 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 24 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !359 ; 4 uses
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i, label %bb.fe

bb.fe:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i250
  %i.ahn = icmp ult i32 %i.ahl, 65
  br i1 %i.ahn, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.fe
  %i.aho = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ahj) #31
  %i.ahp = icmp eq i32 %i.aho, %i.ahl
  br i1 %i.ahp, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.i:     ; preds = %bb.fe
  %i.ahq = load i64, ptr %i.ahj, align 8, !tbaa !151
  %i.ahr = sub nuw nsw i32 64, %i.ahl
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = lshr i64 -1, %i.ahs
  %i.ahu = icmp eq i64 %i.ahq, %i.aht
  br i1 %i.ahu, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i: ; preds = %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.i, %.split.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i250
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload.i, i64 24
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !163
  switch i32 %i.ahw, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i251
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i251
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i251: ; preds = %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload.i, i64 88
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !356
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 1
  %i.aia = load i8, ptr %i.ahz, align 1
  %i.aib = icmp slt i8 %i.aia, 0
  br i1 %i.aib, label %bb.ff, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.ff:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i251
  %.sroa.034.0.copyload40.i = load ptr, ptr %i.ahc, align 8, !tbaa !361 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload40.i, i64 24
  %i.aid = load i32, ptr %i.aic, align 8, !tbaa !163
  %.not54.i = icmp eq i32 %i.aid, 228
  br i1 %.not54.i, label %bb.fh, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fg:                                            ; preds = %bb.fb
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %.sroa.544.0.copyload.i = load i32, ptr %.sroa.544.0..sroa_idx.i, align 8, !tbaa !147
  %i.aie = icmp ne ptr %.sroa.045.0.copyload.i.a, %.sroa.042.0.copyload.i
  %i.aif = icmp ne i32 %.sroa.648.0.copyload.i, %.sroa.544.0.copyload.i
  %.not3.i.i239 = select i1 %i.aie, i1 true, i1 %i.aif
  br i1 %.not3.i.i239, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.sroa.034.0.i = phi ptr [ %.sroa.034.0.copyload40.i, %bb.ff ], [ %.sroa.034.0.copyload.i, %bb.fg ]
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.034.0.i, i64 40
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !354
  %.sroa.031.0.copyload.i = load ptr, ptr %i.aih, align 8, !tbaa !361 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload.i, i64 24
  %i.aij = load i32, ptr %i.aii, align 8, !tbaa !163
  %.not55.i = icmp eq i32 %i.aij, 230
  br i1 %.not55.i, label %bb.fi, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fi:                                            ; preds = %bb.fh
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.045.0.copyload.i.a, i64 40
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !354
  %.sroa.028.0.copyload.i240 = load ptr, ptr %i.ail, align 8, !tbaa !361 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload.i240, i64 24
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !163
  %.not56.i = icmp eq i32 %i.ain, 230
  br i1 %.not56.i, label %bb.fj, label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fj:                                            ; preds = %bb.fi
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload.i, i64 40
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !354 ; 2 uses
  %.sroa.019.0.copyload.i = load ptr, ptr %i.aip, align 8, !tbaa !361 ; 3 uses
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.aiq = load <2 x i32>, ptr %.sroa.722.0..sroa_idx.i, align 8
  %i.air = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload.i240, i64 40
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !354 ; 3 uses
  %.sroa.08.0.copyload.i = load ptr, ptr %i.ais, align 8, !tbaa !361 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %.sroa.8.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.ais, i64 12
  %.sroa.8.0.copyload.i242 = load i32, ptr %.sroa.8.0..sroa_idx.i241, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ait = call fastcc noundef zeroext i1 @_ZL15checkValueWidthN4llvm7SDValueERNS_3ISD11LoadExtTypeE(ptr %.sroa.019.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.ait, label %bb.fk, label %.critedge.i243

bb.fk:                                            ; preds = %bb.fj
  %i.aiu = call fastcc noundef zeroext i1 @_ZL15checkValueWidthN4llvm7SDValueERNS_3ISD11LoadExtTypeE(ptr %.sroa.08.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br i1 %i.aiu, label %bb.fl, label %.critedge.i243

bb.fl:                                            ; preds = %bb.fk
  %i.aiv = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.i, i64 48
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i244 = load i16, ptr %i.aiw, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i245 = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %.sroa.21.0.copyload.i.i246 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i245, align 8, !tbaa !487 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload.i, i64 48
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i61.i = load i16, ptr %i.aiy, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %.sroa.21.0.copyload.i63.i = load ptr, ptr %.sroa.21.0..sroa_idx.i62.i, align 8, !tbaa !487
  %.not.i.i247 = icmp ne i16 %.sroa.0.0.copyload.i.i244, %.sroa.0.0.copyload.i61.i
  %i.aiz = icmp ne ptr %.sroa.21.0.copyload.i.i246, %.sroa.21.0.copyload.i63.i
  %i.aja = select i1 %.not.i.i247, i1 true, i1 %i.aiz
  br i1 %i.aja, label %.critedge.i243, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.agq, i64 48
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i66.i = load i16, ptr %i.ajc, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %.sroa.21.0.copyload.i68.i = load ptr, ptr %.sroa.21.0..sroa_idx.i67.i, align 8, !tbaa !487 ; 2 uses
  %.not.i76.i = icmp ne i16 %.sroa.0.0.copyload.i66.i, %.sroa.0.0.copyload.i.i244
  %i.ajd = icmp ne ptr %.sroa.21.0.copyload.i68.i, %.sroa.21.0.copyload.i.i246
  %i.aje = select i1 %.not.i76.i, i1 true, i1 %i.ajd
  br i1 %i.aje, label %.critedge.i243, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ajf = load i32, ptr %i.d, align 4, !tbaa !856
  %i.ajg = add i32 %i.ajf, -4
  %or.cond3.i = icmp ult i32 %i.ajg, -2
  %i.ajh = load i32, ptr %i.c, align 4
  %i.aji = icmp ne i32 %i.ajh, 2
  %or.cond5.i248 = select i1 %or.cond3.i, i1 %i.aji, i1 false
  br i1 %or.cond5.i248, label %.critedge.i243, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !362
  store i64 %i.ajk, ptr %95, align 8, !tbaa !362
  %i.ajl = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !363
  store i32 %i.ajn, ptr %i.ajl, align 8, !tbaa !364
  store ptr %.sroa.019.0.copyload.i, ptr %96, align 8, !tbaa !361
  %.sroa.722.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %96, i64 8
  store <2 x i32> %i.aiq, ptr %.sroa.722.0..sroa_idx23.i, align 8
  store ptr %.sroa.08.0.copyload.i, ptr %97, align 8, !tbaa !361
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx11.i, align 8, !tbaa !147
  %.sroa.8.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %97, i64 12
  store i32 %.sroa.8.0.copyload.i242, ptr %.sroa.8.0..sroa_idx15.i, align 4
  %i.ajo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %95, i16 %.sroa.0.0.copyload.i.i244, ptr %.sroa.21.0.copyload.i68.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %96, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %97) #28 ; 2 uses
  %.fca.0.extract10.i = extractvalue { ptr, i32 } %i.ajo, 0
  %.fca.1.extract11.i = extractvalue { ptr, i32 } %i.ajo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #28
  %i.ajp = load i64, ptr %i.ajj, align 8, !tbaa !362
  store i64 %i.ajp, ptr %98, align 8, !tbaa !362
  %i.ajq = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.ajr = load i32, ptr %i.ajm, align 4, !tbaa !363
  store i32 %i.ajr, ptr %i.ajq, align 8, !tbaa !364
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i82.i = load i16, ptr %i.ajt, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i83.i = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %.sroa.21.0.copyload.i84.i = load ptr, ptr %.sroa.21.0..sroa_idx.i83.i, align 8, !tbaa !487
  store ptr %.sroa.08.0.copyload.i, ptr %99, align 8, !tbaa !361
  %.sroa.7.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %99, i64 8
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx13.i, align 8, !tbaa !147
  %.sroa.8.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %99, i64 12
  store i32 %.sroa.8.0.copyload.i242, ptr %.sroa.8.0..sroa_idx17.i, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %100, i8 0, i64 16, i1 false)
  %i.aju = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %98, i16 %.sroa.0.0.copyload.i82.i, ptr %.sroa.21.0.copyload.i84.i, ptr %.fca.0.extract10.i, i32 %.fca.1.extract11.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %99, i32 noundef %i.agp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %100, i1 noundef zeroext false, i32 0)
  %.fca.0.extract.i249 = extractvalue { ptr, i32 } %i.aju, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr noundef nonnull %1, ptr noundef %.fca.0.extract.i249) #28
  br label %.critedge.i243

.critedge.i243:                                   ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj
  %.sroa.050.0.i = phi ptr [ null, %bb.fj ], [ null, %bb.fm ], [ %1, %bb.fo ], [ null, %bb.fk ], [ null, %bb.fl ], [ null, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %.split.i, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.i, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i251, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %.critedge.i243
  %.sroa.050.5.i = phi ptr [ null, %bb.ez ], [ null, %bb.fa ], [ null, %bb.fg ], [ null, %bb.fc ], [ null, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.i ], [ null, %bb.fb ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i251 ], [ null, %bb.ff ], [ null, %.split.i ], [ null, %bb.fi ], [ null, %bb.fd ], [ null, %bb.fh ], [ %.sroa.050.0.i, %.critedge.i243 ], [ null, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fp:                                            ; preds = %bb.a
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !149, !nonnull !27, !align !150
  call void @llvm.lifetime.start.p0(ptr nonnull %93)
  call void @llvm.lifetime.start.p0(ptr nonnull %94)
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !486 ; 2 uses
  %.sroa.0.0.copyload.i.i252 = load i16, ptr %i.ajy, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i253 = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %.sroa.21.0.copyload.i.i254 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i253, align 8, !tbaa !487
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !362
  store i64 %i.aka, ptr %88, align 8, !tbaa !362
  %i.akb = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !363
  store i32 %i.akd, ptr %i.akb, align 8, !tbaa !364
  %i.ake = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !354 ; 4 uses
  %.sroa.015.0.copyload.i = load ptr, ptr %i.akf, align 8, !tbaa !361 ; 3 uses
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %.sroa.719.0.copyload.i = load i32, ptr %.sroa.719.0..sroa_idx.i, align 8, !tbaa !147
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 40
  %.sroa.045.0.copyload.i255 = load ptr, ptr %i.akg, align 8, !tbaa !361
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 48
  %.sroa.446.0.copyload.i = load i32, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !147
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.i, i64 24
  %i.aki = load i32, ptr %i.akh, align 8, !tbaa !163 ; 2 uses
  %i.akj = icmp eq i32 %i.aki, 227
  %i.akk = add i32 %i.aki, -227
  %i.akl = icmp ult i32 %i.akk, 2
  br i1 %i.akl, label %bb.fq, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.fq:                                            ; preds = %bb.fp
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.i, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.akm, align 8, !tbaa !596 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %.lr.ph.i.i.i259

bb.fr:                                            ; preds = %.lr.ph.i.i.i259
  %.214.i.i.i = select i1 %i.akq, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.akn, align 8, !tbaa !596 ; 2 uses
  %.not.i.i.i260 = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i.i260, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %bb.fq, %bb.fr
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.fr ], [ %.sroa.018.022.i.i.i, %bb.fq ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.fr ], [ 1, %bb.fq ] ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.akp = load i32, ptr %i.ako, align 8, !tbaa !500
  %i.akq = icmp ne i32 %i.akp, %.sroa.719.0.copyload.i ; 2 uses
  %i.akr = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.akq, i1 true, i1 %i.akr
  br i1 %cond.i.i.i, label %bb.fr, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.fr
  %i.aks = icmp ne i32 %.214.i.i.i, 0
  %.not.i.i261 = icmp eq i16 %.sroa.0.0.copyload.i.i252, 0
  %or.cond.i262 = select i1 %i.aks, i1 true, i1 %.not.i.i261
  br i1 %or.cond.i262, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i263

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i263: ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  %i.akt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !750
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 112
  %i.akw = zext i16 %.sroa.0.0.copyload.i.i252 to i64 ; 3 uses
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.akv, i64 %i.akw
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !33
  %.not.i264 = icmp eq ptr %i.aky, null
  br i1 %.not.i264, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %_ZNK4llvm6SDNode18getValueSizeInBitsEj.exit.i

_ZNK4llvm6SDNode18getValueSizeInBitsEj.exit.i:    ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i263
  %i.akz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.akw ; 2 uses
  %i.ala = getelementptr i8, ptr %i.akz, i64 -16
  %.sroa.0.0.copyload.i.i.i.i265 = load i64, ptr %i.ala, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.akz, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.i, i64 40
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !354 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !355 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.alf = load i32, ptr %i.ale, align 8, !tbaa !500 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ald, i64 48
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !486
  %i.ali = zext i32 %i.alf to i64
  %i.alj = getelementptr inbounds nuw [16 x i8], ptr %i.alh, i64 %i.ali ; 2 uses
  %.sroa.0.0.copyload.i.i.i58.i = load i16, ptr %i.alj, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i.i58.i, ptr %87, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %87, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i, ptr %i.alk, align 8
  %.not.i.i59.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i58.i, 0
  br i1 %.not.i.i59.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZNK4llvm6SDNode18getValueSizeInBitsEj.exit.i
  %i.all = zext i16 %.sroa.0.0.copyload.i.i.i58.i to i64
  %i.alm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.all ; 2 uses
  %i.aln = getelementptr i8, ptr %i.alm, i64 -16
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %i.aln, align 16
  %.sroa.2.0..sroa_idx.i.i.i60.i = getelementptr i8, ptr %i.alm, i64 -8
  %.sroa.2.0.copyload.i.i.i61.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i60.i, align 8
  %.fca.0.insert.i.i4.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i.i, 0
  %.fca.1.insert.i.i5.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i.i, i8 %.sroa.2.0.copyload.i.i.i61.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i

bb.ft:                                            ; preds = %_ZNK4llvm6SDNode18getValueSizeInBitsEj.exit.i
  %i.alo = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %87) #31
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i:   ; preds = %bb.ft, %bb.fs
  %.pn.i.i62.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i.i, %bb.fs ], [ %i.alo, %bb.ft ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  %.fca.0.extract31.i = extractvalue { i64, i8 } %.pn.i.i62.i, 0
  %.fca.1.extract32.i = extractvalue { i64, i8 } %.pn.i.i62.i, 1
  %i.alp = shl i64 %.fca.0.extract31.i, 1
  %.not.i63.i = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i265, %i.alp
  %i.alq = icmp ne i8 %.sroa.2.0.copyload.i.i.i.i, %.fca.1.extract32.i
  %i.alr = select i1 %.not.i63.i, i1 true, i1 %i.alq
  br i1 %i.alr, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i
  %i.als = call fastcc { ptr, i32 } @_ZL22matchHalfOf128BitLanesN4llvm7SDValueEb(ptr nonnull %i.ald, i32 %i.alf, i1 noundef zeroext true) ; 2 uses
  %.fca.0.extract20.i = extractvalue { ptr, i32 } %i.als, 0 ; 3 uses
  %.fca.1.extract21.i = extractvalue { ptr, i32 } %i.als, 1 ; 2 uses
  %.not25.i = icmp eq ptr %.fca.0.extract20.i, null
  br i1 %.not25.i, label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28
  %i.alt = getelementptr inbounds nuw i8, ptr %.fca.0.extract20.i, i64 48
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !486
  %i.alv = zext i32 %.fca.1.extract21.i to i64
  %i.alw = getelementptr inbounds nuw [16 x i8], ptr %i.alu, i64 %i.alv ; 2 uses
  %.sroa.0.0.copyload.i.i64.i = load i16, ptr %i.alw, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i65.i = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %.sroa.21.0.copyload.i.i66.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i65.i, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i64.i, ptr %89, align 8
  %i.alx = getelementptr inbounds nuw i8, ptr %89, i64 8
  store ptr %.sroa.21.0.copyload.i.i66.i, ptr %i.alx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  %.not.i69.i = icmp eq i16 %.sroa.0.0.copyload.i.i64.i, 0
  br i1 %.not.i69.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aly = zext i16 %.sroa.0.0.copyload.i.i64.i to i64
  %i.alz = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aly
  %i.ama = getelementptr i8, ptr %i.alz, i64 -2
  %i.amb = load i16, ptr %i.ama, align 2, !tbaa !31
  %i.amc = insertvalue { i16, ptr } poison, i16 %i.amb, 0
  %i.amd = insertvalue { i16, ptr } %i.amc, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit72.i

bb.fx:                                            ; preds = %bb.fv
  %i.ame = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %89) #28
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit72.i

_ZNK4llvm3EVT20getVectorElementTypeEv.exit72.i:   ; preds = %bb.fx, %bb.fw
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.amd, %bb.fw ], [ %i.ame, %bb.fx ] ; 2 uses
  %i.amf = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.amf, ptr %90, align 8
  %i.amg = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.amh = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.amh, ptr %i.amg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28
  %i.ami = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.akw
  %i.amj = getelementptr i8, ptr %i.ami, i64 -2
  %i.amk = load i16, ptr %i.amj, align 2, !tbaa !31 ; 3 uses
  store i16 %i.amk, ptr %91, align 8
  %i.aml = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr null, ptr %i.aml, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28
  %i.amm = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 3 uses
  store i32 1, ptr %i.amm, align 8, !tbaa !359
  store i64 0, ptr %92, align 8, !tbaa !151
  %.not.i73.i = icmp eq i16 %i.amk, 0
  br i1 %.not.i73.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit72.i
  %i.amn = zext i16 %i.amk to i64
  %i.amo = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.amn ; 2 uses
  %i.amp = getelementptr i8, ptr %i.amo, i64 -16
  %.sroa.0.0.copyload.i.i74.i = load i64, ptr %i.amp, align 16
  %.sroa.2.0..sroa_idx.i.i.i266 = getelementptr i8, ptr %i.amo, i64 -8
  %.sroa.2.0.copyload.i.i.i267 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i266, align 8
  %.fca.0.insert.i.i75.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i74.i, 0
  %.fca.1.insert.i.i76.i = insertvalue { i64, i8 } %.fca.0.insert.i.i75.i, i8 %.sroa.2.0.copyload.i.i.i267, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i268

bb.fz:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit72.i
  %i.amq = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %91) #31
end_hunk_4
begin_hunk_5_@_ZNK4llvm23LoongArchTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.bvd = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 24
  %i.bve = load i32, ptr %i.bvd, align 8, !tbaa !163
  %.not.i632 = icmp eq i32 %i.bve, 222
  br i1 %.not.i632, label %bb.of, label %bb.pb

bb.of:                                            ; preds = %bb.oe
  %i.bvf = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload.i, i64 40 ; 2 uses
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !354
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 40
  %i.bvi = load ptr, ptr %i.bvh, align 8, !tbaa !355
  %i.bvj = call noundef zeroext i1 @_ZN4llvm3ISD29isConstantSplatVectorAllZerosEPKNS_6SDNodeEb(ptr noundef %i.bvi, i1 noundef zeroext false) #28
  br i1 %i.bvj, label %bb.og, label %bb.pb

bb.og:                                            ; preds = %bb.of
  %i.bvk = load ptr, ptr %i.bvf, align 8, !tbaa !354 ; 3 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 80
  %i.bvm = load ptr, ptr %i.bvl, align 8, !tbaa !355
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 88
  %i.bvo = load i32, ptr %i.bvn, align 8, !tbaa !624
  %.not31.i = icmp eq i32 %i.bvo, 17
  br i1 %.not31.i, label %bb.oh, label %bb.pb

bb.oh:                                            ; preds = %bb.og
  %.sroa.040.0.copyload.i = load ptr, ptr %i.bvk, align 8, !tbaa !361 ; 3 uses
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8 ; 2 uses
  %i.bvp = load <2 x i32>, ptr %.sroa.643.0..sroa_idx.i, align 8
  %.sroa.643.0.copyload.i = load i32, ptr %.sroa.643.0..sroa_idx.i, align 8, !tbaa !147 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %.sroa.050.0.copyload.i631, i64 24
  %i.bvr = load i32, ptr %i.bvq, align 8, !tbaa !163
  %.not32.i = icmp eq i32 %i.bvr, 59
  br i1 %.not32.i, label %bb.oi, label %bb.pb

bb.oi:                                            ; preds = %bb.oh
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sroa.050.0.copyload.i631, i64 40
  %i.bvt = load ptr, ptr %i.bvs, align 8, !tbaa !354 ; 2 uses
  %.sroa.027.0.copyload.i = load ptr, ptr %i.bvt, align 8, !tbaa !361 ; 3 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 40
  %.sroa.024.0.copyload.i633 = load ptr, ptr %i.bvu, align 8, !tbaa !361 ; 3 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload.i, i64 24
  %i.bvw = load i32, ptr %i.bvv, align 8, !tbaa !163
  %i.bvx = icmp eq i32 %i.bvw, 193
  br i1 %i.bvx, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bvy = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload.i633, i64 24
  %i.bvz = load i32, ptr %i.bvy, align 8, !tbaa !163
  %i.bwa = icmp eq i32 %i.bvz, 193
  br i1 %i.bwa, label %bb.ok, label %bb.pb

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %.sroa.018.0.i = phi ptr [ %.sroa.027.0.copyload.i, %bb.oi ], [ %.sroa.024.0.copyload.i633, %bb.oj ]
  %.sroa.010.0.i = phi ptr [ %.sroa.024.0.copyload.i633, %bb.oi ], [ %.sroa.027.0.copyload.i, %bb.oj ] ; 2 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 24 ; 2 uses
  %i.bwc = load i32, ptr %i.bwb, align 8, !tbaa !163
  %.off.i634 = add i32 %i.bwc, -199
  %switch.i635 = icmp ult i32 %.off.i634, 2
  br i1 %switch.i635, label %bb.ol, label %bb.pb

bb.ol:                                            ; preds = %bb.ok
  %i.bwd = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 40
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !354 ; 4 uses
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !355
  %i.bwg = icmp ne ptr %i.bwf, %.sroa.054.0.copyload.i
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  %i.bwi = load i32, ptr %i.bwh, align 8
  %i.bwj = icmp ne i32 %i.bwi, %.sroa.455.0.copyload.i
  %.not3.i.i636 = select i1 %i.bwg, i1 true, i1 %i.bwj
  br i1 %.not3.i.i636, label %bb.pb, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwe, i64 40
  %i.bwl = load ptr, ptr %i.bwk, align 8, !tbaa !355
  %i.bwm = icmp ne ptr %i.bwl, %.sroa.040.0.copyload.i
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwe, i64 48
  %i.bwo = load i32, ptr %i.bwn, align 8
  %i.bwp = icmp ne i32 %i.bwo, %.sroa.643.0.copyload.i
  %.not3.i41.i = select i1 %i.bwm, i1 true, i1 %i.bwp
  br i1 %.not3.i41.i, label %bb.pb, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.bwq = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 40
  %i.bwr = load ptr, ptr %i.bwq, align 8, !tbaa !354 ; 3 uses
  %.sroa.06.0.copyload.i637 = load ptr, ptr %i.bwr, align 8, !tbaa !361 ; 2 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwr, i64 40
  %.sroa.018.0.copyload.i638 = load ptr, ptr %i.bws, align 8, !tbaa !361
  %.sroa.6.0..sroa_idx.i639 = getelementptr inbounds nuw i8, ptr %i.bwr, i64 48
  %.sroa.6.0.copyload.i640 = load i32, ptr %.sroa.6.0..sroa_idx.i639, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bwt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.bwt, align 8, !tbaa !359
  store i64 0, ptr %4, align 8, !tbaa !151
  %i.bwu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.i637, i64 24
  %i.bwv = load i32, ptr %i.bwu, align 8, !tbaa !163
  %.not35.i641 = icmp eq i32 %i.bwv, 200
  br i1 %.not35.i641, label %bb.oo, label %_ZN4llvm5APIntD2Ev.exit.i642

bb.oo:                                            ; preds = %bb.on
  %i.bww = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.018.0.copyload.i638, i32 %.sroa.6.0.copyload.i640) #28 ; 2 uses
  %.fca.0.extract10.i643 = extractvalue { ptr, i32 } %i.bww, 0
  %.fca.1.extract11.i644 = extractvalue { ptr, i32 } %i.bww, 1
  %i.bwx = load i16, ptr %3, align 8, !tbaa !501  ; 2 uses
  %.not.i42.i = icmp eq i16 %i.bwx, 0
  br i1 %.not.i42.i, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.bwy = zext i16 %i.bwx to i64
  %i.bwz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bwy ; 2 uses
  %i.bxa = getelementptr i8, ptr %i.bwz, i64 -16
  %.sroa.0.0.copyload.i.i.i645 = load i64, ptr %i.bxa, align 16
  %.sroa.2.0..sroa_idx.i.i.i646 = getelementptr i8, ptr %i.bwz, i64 -8
  %.sroa.2.0.copyload.i.i.i647 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i646, align 8
  %.fca.0.insert.i.i.i648 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i645, 0
  %.fca.1.insert.i.i.i649 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i648, i8 %.sroa.2.0.copyload.i.i.i647, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i650

bb.oq:                                            ; preds = %bb.oo
  %i.bxb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i650

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i650:         ; preds = %bb.oq, %bb.op
  %.pn.i.i651 = phi { i64, i8 } [ %.fca.1.insert.i.i.i649, %bb.op ], [ %i.bxb, %bb.oq ] ; 2 uses
  %.fca.1.extract5.i652 = extractvalue { i64, i8 } %.pn.i.i651, 1
  %i.bxc = trunc nuw i8 %.fca.1.extract5.i652 to i1
  br i1 %i.bxc, label %bb.or, label %_ZNK4llvm8TypeSizecvmEv.exit.i653

bb.or:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i650
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i653:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i650
  %.fca.0.extract4.i654 = extractvalue { i64, i8 } %.pn.i.i651, 0
  %i.bxd = trunc i64 %.fca.0.extract4.i654 to i32
  %i.bxe = call fastcc noundef zeroext i1 @_ZL21isConstantSplatVectorN4llvm7SDValueERNS_5APIntEj(ptr %.fca.0.extract10.i643, i32 %.fca.1.extract11.i644, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.bxd)
  br i1 %i.bxe, label %bb.os, label %bb.oy

bb.os:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i653
  %i.bxf = call noundef zeroext i1 @_ZNK4llvm5APIntneEm(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef 1)
  br i1 %i.bxf, label %bb.oy, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.bxg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.i637, i64 40
  %i.bxh = load ptr, ptr %i.bxg, align 8, !tbaa !354 ; 3 uses
  %i.bxi = load ptr, ptr %i.bxh, align 8, !tbaa !355
  %i.bxj = icmp ne ptr %i.bxi, %.sroa.054.0.copyload.i
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxh, i64 8
  %i.bxl = load i32, ptr %i.bxk, align 8
  %i.bxm = icmp ne i32 %i.bxl, %.sroa.455.0.copyload.i
  %.not3.i43.i = select i1 %i.bxj, i1 true, i1 %i.bxm
  br i1 %.not3.i43.i, label %bb.oy, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxh, i64 40
  %.sroa.0.0.copyload.i655 = load ptr, ptr %i.bxn, align 8, !tbaa !361 ; 2 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i655, i64 24
  %i.bxp = load i32, ptr %i.bxo, align 8, !tbaa !163
  %.not36.i = icmp eq i32 %i.bxp, 59
  br i1 %.not36.i, label %bb.ov, label %bb.oy

bb.ov:                                            ; preds = %bb.ou
  %i.bxq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i655, i64 40
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !354 ; 3 uses
  %i.bxs = load ptr, ptr %i.bxr, align 8, !tbaa !355
  %i.bxt = icmp ne ptr %i.bxs, %.sroa.040.0.copyload.i
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxr, i64 8
  %i.bxv = load i32, ptr %i.bxu, align 8
  %i.bxw = icmp ne i32 %i.bxv, %.sroa.643.0.copyload.i
  %.not3.i44.i = select i1 %i.bxt, i1 true, i1 %i.bxw
  br i1 %.not3.i44.i, label %bb.oy, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxr, i64 40
  %i.bxy = load ptr, ptr %i.bxx, align 8, !tbaa !355
  %i.bxz = call noundef zeroext i1 @_ZN4llvm3ISD28isConstantSplatVectorAllOnesEPKNS_6SDNodeEb(ptr noundef %i.bxy, i1 noundef zeroext false) #28
  br i1 %i.bxz, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bya = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.byb = load i64, ptr %i.bya, align 8, !tbaa !362
  store i64 %i.byb, ptr %5, align 8, !tbaa !362
  %i.byc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.byd = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bye = load i32, ptr %i.byd, align 4, !tbaa !363
  store i32 %i.bye, ptr %i.byc, align 8, !tbaa !364
  %i.byf = load i32, ptr %i.bwb, align 8, !tbaa !163
  %i.byg = icmp eq i32 %i.byf, 200
  %i.byh = select i1 %i.byg, i32 645, i32 643
  store ptr %.sroa.054.0.copyload.i, ptr %6, align 8, !tbaa !361
  %.sroa.633.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x i32> %i.bvb, ptr %.sroa.633.0..sroa_idx34.i, align 8
  store ptr %.sroa.040.0.copyload.i, ptr %7, align 8, !tbaa !361
  %.sroa.643.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x i32> %i.bvp, ptr %.sroa.643.0..sroa_idx44.i, align 8
  %i.byi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.f, i32 noundef %i.byh, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i619, ptr %.sroa.21.0.copyload.i.i621, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #28 ; 2 uses
  %.fca.0.extract.i656 = extractvalue { ptr, i32 } %i.byi, 0
  %.fca.1.extract.i657 = extractvalue { ptr, i32 } %i.byi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %_ZNK4llvm8TypeSizecvmEv.exit.i653
  %.sroa.40.1.ph.i = phi i32 [ 0, %bb.ow ], [ 0, %bb.ov ], [ %.fca.1.extract.i657, %bb.ox ], [ 0, %bb.ou ], [ 0, %bb.ot ], [ 0, %bb.os ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i653 ] ; 3 uses
  %.sroa.061.1.ph.i = phi ptr [ null, %bb.ow ], [ null, %bb.ov ], [ %.fca.0.extract.i656, %bb.ox ], [ null, %bb.ou ], [ null, %bb.ot ], [ null, %bb.os ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit.i653 ] ; 3 uses
  %.pr.i = load i32, ptr %i.bwt, align 8, !tbaa !359
  %i.byj = icmp ugt i32 %.pr.i, 64
  br i1 %i.byj, label %bb.oz, label %_ZN4llvm5APIntD2Ev.exit.i642

bb.oz:                                            ; preds = %bb.oy
  %i.byk = load ptr, ptr %4, align 8, !tbaa !151  ; 2 uses
  %i.byl = icmp eq ptr %i.byk, null
  br i1 %i.byl, label %_ZN4llvm5APIntD2Ev.exit.i642, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  call void @_ZdaPv(ptr noundef nonnull %i.byk) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i642

_ZN4llvm5APIntD2Ev.exit.i642:                     ; preds = %bb.pa, %bb.oz, %bb.oy, %bb.on
  %.sroa.061.167.i = phi ptr [ %.sroa.061.1.ph.i, %bb.pa ], [ %.sroa.061.1.ph.i, %bb.oy ], [ %.sroa.061.1.ph.i, %bb.oz ], [ null, %bb.on ]
  %.sroa.40.166.i = phi i32 [ %.sroa.40.1.ph.i, %bb.pa ], [ %.sroa.40.1.ph.i, %bb.oy ], [ %.sroa.40.1.ph.i, %bb.oz ], [ 0, %bb.on ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.pb

bb.pb:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i642, %bb.om, %bb.ol, %bb.ok, %bb.oj, %bb.oh, %bb.og, %bb.of, %bb.oe, %_ZNK4llvm3EVT9isIntegerEv.exit.i658, %.split62.i
  %.sroa.40.5.i = phi i32 [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit.i658 ], [ 0, %.split62.i ], [ 0, %bb.og ], [ 0, %bb.of ], [ 0, %bb.oe ], [ 0, %bb.oh ], [ 0, %bb.ok ], [ 0, %bb.ol ], [ %.sroa.40.166.i, %_ZN4llvm5APIntD2Ev.exit.i642 ], [ 0, %bb.oj ], [ 0, %bb.om ]
  %.sroa.061.5.i = phi ptr [ null, %_ZNK4llvm3EVT9isIntegerEv.exit.i658 ], [ null, %.split62.i ], [ null, %bb.og ], [ null, %bb.of ], [ null, %bb.oe ], [ null, %bb.oh ], [ null, %bb.ok ], [ null, %bb.ol ], [ %.sroa.061.167.i, %_ZN4llvm5APIntD2Ev.exit.i642 ], [ null, %bb.oj ], [ null, %bb.om ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.oc, %bb.od, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i625, %bb.pb
  %.sroa.40.7.i = phi i32 [ 0, %bb.oc ], [ %.sroa.40.5.i, %bb.pb ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i625 ], [ 0, %bb.od ]
  %.sroa.061.7.i = phi ptr [ null, %bb.oc ], [ %.sroa.061.5.i, %bb.pb ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i625 ], [ null, %bb.od ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.pc:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #28
  %i.bym = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.byn = load i64, ptr %i.bym, align 8, !tbaa !362
  store i64 %i.byn, ptr %162, align 8, !tbaa !362
  %i.byo = getelementptr inbounds nuw i8, ptr %162, i64 8
  %i.byp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !363
  store i32 %i.byq, ptr %i.byo, align 8, !tbaa !364
  %i.byr = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !149, !nonnull !27, !align !150
  %i.byt = call fastcc { ptr, i32 } @_ZL15combineFP_ROUNDN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr nonnull %1, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %162, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr noundef nonnull align 8 dereferenceable(519320) %i.bys) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.byt, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.byt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #28
  %.not = icmp eq ptr %.fca.0.extract, null
  br i1 %.not, label %bb.pd, label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

bb.pd:                                            ; preds = %bb.pc, %bb.a
  br label %_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit

_ZL22performBITREV_WCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit: ; preds = %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.li, %bb.lh, %bb.lg, %bb.pc, %bb.pd, %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL19performVANDNCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL28performSPLIT_PAIR_F64CombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL26performDemandedBitsCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoE.exit, %bb.mc, %_ZL23performSELECT_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL19performBR_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL23performFP_TO_INTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL24performSINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL20performEXTENDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL21performBITCASTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %bb.gr, %_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit, %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit
  %.sroa.0659.0 = phi ptr [ null, %bb.pd ], [ %.sroa.042.6.i, %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.028.1.i, %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.0167.1.i, %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.050.5.i, %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.021.2.i, %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.09.1.i, %_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.fca.0.extract.i299, %bb.gr ], [ %.sroa.037.3.i, %_ZL21performBITCASTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.015.1.i, %_ZL20performEXTENDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.023.0.i, %_ZL24performSINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.01.0.i, %_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.017.1.i, %_ZL23performFP_TO_INTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.fca.0.extract, %bb.pc ], [ %.sroa.0.0.i, %_ZL19performBR_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.045.0.i, %_ZL23performSELECT_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.fca.0.extract29, %bb.mc ], [ null, %bb.lh ], [ null, %bb.md ], [ %spec.select.i557, %_ZL26performDemandedBitsCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoE.exit ], [ %.sroa.011.0.i, %_ZL28performSPLIT_PAIR_F64CombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.077.1.i, %_ZL19performVANDNCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.01.0.i612, %_ZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.061.7.i, %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ null, %bb.lg ], [ %.fca.0.extract.i507, %bb.li ], [ %.sroa.02.0.copyload.i543, %bb.me ], [ %.sroa.02.0.copyload.i551, %bb.mg ], [ null, %bb.mf ]
  %.sroa.28.0 = phi i32 [ 0, %bb.pd ], [ %.sroa.34.6.i, %_ZL17performADDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.2429.1.i, %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.17.1.i, %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ 0, %_ZL19performSETCCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.14.2.i, %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.12.1.i, %_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %spec.select.i, %bb.gr ], [ %.sroa.1338.3.i, %_ZL21performBITCASTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.9.1.i, %_ZL20performEXTENDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.18.0.i, %_ZL24performSINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.42.0.i, %_ZL24performUINT_TO_FPCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.16.1.i, %_ZL23performFP_TO_INTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.fca.1.extract, %bb.pc ], [ %.sroa.4.0.i, %_ZL19performBR_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.6.0.i, %_ZL23performSELECT_CCCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.fca.1.extract30, %bb.mc ], [ 0, %bb.lh ], [ 0, %bb.md ], [ 0, %_ZL26performDemandedBitsCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoE.exit ], [ %.sroa.6.0.i572, %_ZL28performSPLIT_PAIR_F64CombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.12.1.i585, %_ZL19performVANDNCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.5.0.i, %_ZL28performCONCAT_VECTORSCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ %.sroa.40.7.i, %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE.exit ], [ 0, %bb.lg ], [ %.fca.1.extract.i508, %bb.li ], [ %.sroa.4.0.copyload.i545, %bb.me ], [ %.sroa.4.0.copyload.i553, %bb.mg ], [ 0, %bb.mf ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0659.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.28.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL32performINTRINSIC_WO_CHAINCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_18LoongArchSubtargetE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519320) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 67 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %56 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %69 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %70 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %71 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %72 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %73 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %74 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %75 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %78 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %80 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %81 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %82 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %85 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %86 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %87 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %88 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %89 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %90 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %91 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %92 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %93 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %94 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %95 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !362  ; 10 uses
  store i64 %i.b, ptr %8, align 8, !tbaa !362
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !363  ; 10 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !364
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !354  ; 91 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !355
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !356  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !359
  %i.n = icmp ult i32 %i.m, 65
  %i.o = load ptr, ptr %i.k, align 8
  %spec.select.i.i.i.i = select i1 %i.n, ptr %i.k, ptr %i.o
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !151
  switch i64 %.0.i.i.i.i, label %bb.cx [
    i64 7296, label %bb.b
    i64 7298, label %bb.b
    i64 7300, label %bb.b
    i64 7297, label %bb.b
    i64 6566, label %bb.b
    i64 6568, label %bb.b
    i64 6570, label %bb.b
    i64 6567, label %bb.b
    i64 7305, label %bb.c
    i64 7307, label %bb.c
    i64 7308, label %bb.c
    i64 7306, label %bb.c
    i64 6575, label %bb.c
    i64 6577, label %bb.c
    i64 6578, label %bb.c
    i64 6576, label %bb.c
    i64 7971, label %bb.d
    i64 7973, label %bb.d
    i64 7975, label %bb.d
    i64 7972, label %bb.d
    i64 7249, label %bb.d
end_hunk_5
begin_hunk_6_@_ZL22matchHalfOf128BitLanesN4llvm7SDValueEb:bb.a
  br i1 %spec.select.i.i, label %.split.i, label %bb.z

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br i1 %i.h, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %bb.z

.split.i:                                         ; preds = %.split
  %i.i = add nsw i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.i, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #29
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.k = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.l = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !142
  %i.o = zext i16 %i.n to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.p = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.q = phi i32 [ %i.o, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.p, %bb.c ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.fca.0.extract44, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !163  ; 2 uses
  %i.t = icmp eq i32 %i.s, 167
  br i1 %i.t, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.fca.0.extract44, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !354  ; 3 uses
  %.sroa.0164.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !361 ; 2 uses
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5166.0.copyload = load i32, ptr %.sroa.5166.0..sroa_idx, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0164.0.copyload, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !486
  %i.y = zext i32 %.sroa.5166.0.copyload to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %.sroa.0.0.copyload.i.i66 = load i16, ptr %i.z, align 8, !tbaa !31 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.21.0.copyload.i.i68 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i67, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i66, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i68, ptr %i.aa, align 8
  %.not.i71 = icmp eq i16 %.sroa.0.0.copyload.i.i66, 0 ; 2 uses
  br i1 %.not.i71, label %_ZNK4llvm3EVT8isVectorEv.exit73, label %.split179

.split179:                                        ; preds = %bb.d
  %i.ab = add i16 %.sroa.0.0.copyload.i.i66, -19
  %or.cond = icmp ult i16 %i.ab, 144
  br i1 %or.cond, label %_ZNK4llvm3EVT14is128BitVectorEv.exit, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

_ZNK4llvm3EVT8isVectorEv.exit73:                  ; preds = %bb.d
  %i.ac = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br i1 %i.ac, label %.split181, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

.split181:                                        ; preds = %_ZNK4llvm3EVT8isVectorEv.exit73
  %i.ad = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br i1 %i.ad, label %bb.f, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

_ZNK4llvm3EVT14is128BitVectorEv.exit:             ; preds = %.split179
  %i.ae = zext nneg i16 %.sroa.0.0.copyload.i.i66 to i64
  %i.af = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ae ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ag, align 16
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 128
  br i1 %i.ah, label %bb.e, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm3EVT14is128BitVectorEv.exit
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.af, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.1.insert.i.i79 = insertvalue { i64, i8 } { i64 128, i8 poison }, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.f:                                             ; preds = %.split181
  %i.ai = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.e, %bb.f
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i79, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %.fca.0.extract32 = extractvalue { i64, i8 } %.pn.i, 0
  %.fca.1.extract33 = extractvalue { i64, i8 } %.pn.i, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.aj = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %.sroa.0.0.copyload.i.i81 = load i64, ptr %i.al, align 16
  %.sroa.2.0..sroa_idx.i.i82 = getelementptr i8, ptr %i.ak, i64 -8
  %.sroa.2.0.copyload.i.i83 = load i8, ptr %.sroa.2.0..sroa_idx.i.i82, align 8
  %.fca.0.insert.i.i84 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i81, 0
  %.fca.1.insert.i.i85 = insertvalue { i64, i8 } %.fca.0.insert.i.i84, i8 %.sroa.2.0.copyload.i.i83, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit87

bb.h:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.am = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit87

_ZNK4llvm3EVT13getSizeInBitsEv.exit87:            ; preds = %bb.g, %bb.h
  %.pn.i86 = phi { i64, i8 } [ %.fca.1.insert.i.i85, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %.fca.0.extract28 = extractvalue { i64, i8 } %.pn.i86, 0
  %.fca.1.extract29 = extractvalue { i64, i8 } %.pn.i86, 1
  %i.an = shl i64 %.fca.0.extract28, 1
  %.not.i90 = icmp ne i64 %.fca.0.extract32, %i.an
  %i.ao = icmp ne i8 %.fca.1.extract33, %.fca.1.extract29
  %i.ap = select i1 %.not.i90, i1 true, i1 %i.ao
  br i1 %i.ap, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit87
  br i1 %.not.i71, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94

_ZNK4llvm3EVT16isScalableVectorEv.exit.i95:       ; preds = %bb.i
  %i.aq = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #29
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94:   ; preds = %bb.i
  %i.ar = zext nneg i16 %.sroa.0.0.copyload.i.i66 to i64
  %i.as = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !142
  %i.av = zext i16 %i.au to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96

bb.k:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95
  %i.aw = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96

_ZNK4llvm3EVT20getVectorNumElementsEv.exit96:     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94, %bb.k
  %i.ax = phi i32 [ %i.av, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94 ], [ %i.aw, %bb.k ]
  %i.ay = shl i32 %i.q, 1
  %.not64 = icmp eq i32 %i.ax, %i.ay
  br i1 %.not64, label %bb.l, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

bb.l:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !355
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !356 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !359
  %i.bg = icmp ult i32 %i.bf, 65
  %i.bh = load ptr, ptr %i.bd, align 8
  %spec.select.i.i.i.i.i = select i1 %i.bg, ptr %i.bd, ptr %i.bh
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !151
  %i.bi = zext i32 %i.q to i64
  %i.bj = select i1 %2, i64 0, i64 %i.bi
  %.not65 = icmp eq i64 %.0.i.i.i.i.i, %i.bj      ; 2 uses
  %spec.select = select i1 %.not65, i32 %.sroa.5166.0.copyload, i32 0
  %spec.select215 = select i1 %.not65, ptr %.sroa.0164.0.copyload, ptr null
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

_ZNK4llvm3EVT14is128BitVectorEv.exit.thread:      ; preds = %bb.l, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96, %_ZNK4llvm3EVT13getSizeInBitsEv.exit87, %_ZNK4llvm3EVT8isVectorEv.exit73, %_ZNK4llvm3EVT14is128BitVectorEv.exit, %.split179, %.split181
  %.sroa.33.0 = phi i32 [ 0, %_ZNK4llvm3EVT8isVectorEv.exit73 ], [ 0, %_ZNK4llvm3EVT14is128BitVectorEv.exit ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96 ], [ 0, %_ZNK4llvm3EVT13getSizeInBitsEv.exit87 ], [ 0, %.split181 ], [ %spec.select, %bb.l ], [ 0, %.split179 ]
  %.sroa.0178.0 = phi ptr [ null, %_ZNK4llvm3EVT8isVectorEv.exit73 ], [ null, %_ZNK4llvm3EVT14is128BitVectorEv.exit ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96 ], [ null, %_ZNK4llvm3EVT13getSizeInBitsEv.exit87 ], [ null, %.split181 ], [ %spec.select215, %bb.l ], [ null, %.split179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.z

bb.m:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.bk = icmp eq i32 %i.s, 162
  %i.bl = and i32 %i.q, 1
  %.not58 = icmp eq i32 %i.bl, 0
  %or.cond216 = select i1 %i.bk, i1 %.not58, i1 false
  br i1 %or.cond216, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 8, !tbaa !494
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !492
  %.not59220 = icmp eq i32 %i.q, 0
  br i1 %.not59220, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.fca.0.extract44, i64 40
  %i.bo = shl i32 %i.q, 1
  %i.bp = lshr exact i32 %i.q, 1                  ; 3 uses
  %i.bq = select i1 %2, i32 0, i32 %i.bp
  %i.br = zext i32 %i.q to i64
  %i.bs = zext nneg i32 %i.bp to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %.thread199
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread199 ] ; 4 uses
  %.sroa.0151.0222 = phi ptr [ null, %.lr.ph ], [ %.sroa.0151.3, %.thread199 ] ; 4 uses
  %.sroa.8.0221 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.3, %.thread199 ] ; 3 uses
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !354
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %indvars.iv
  %.sroa.0147.0.copyload = load ptr, ptr %i.bu, align 8, !tbaa !361 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0147.0.copyload, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !163 ; 2 uses
  %i.bx = add i32 %i.bw, -53
  %spec.select.i.i98 = icmp ult i32 %i.bx, 2
  br i1 %spec.select.i.i98, label %.thread199, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not60 = icmp eq i32 %i.bw, 164
  br i1 %.not60, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0147.0.copyload, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !354 ; 3 uses
  %.sroa.0142.0.copyload = load ptr, ptr %i.bz, align 8, !tbaa !361 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !147 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.0140.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !361 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0140.0.copyload, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !163
  switch i32 %i.cc, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.q, %bb.q
  %.not219 = icmp eq ptr %.sroa.0151.0222, null
  br i1 %.not219, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.copyload, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !486
  %i.cf = zext i32 %.sroa.5.0.copyload to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %.sroa.0.0.copyload.i.i99 = load i16, ptr %i.cg, align 8, !tbaa !31 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.21.0.copyload.i.i101 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i100, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i99, ptr %5, align 8, !tbaa !31
  store ptr %.sroa.21.0.copyload.i.i101, ptr %i.bm, align 8, !tbaa !487
  %.not.i104 = icmp eq i16 %.sroa.0.0.copyload.i.i99, 0
  br i1 %.not.i104, label %_ZNK4llvm3EVT8isVectorEv.exit106, label %.split185

.split185:                                        ; preds = %bb.r
  %i.ch = add i16 %.sroa.0.0.copyload.i.i99, -19
  %or.cond217 = icmp ult i16 %i.ch, 144
  br i1 %or.cond217, label %_ZNK4llvm3EVT14is256BitVectorEv.exit, label %.critedge

_ZNK4llvm3EVT8isVectorEv.exit106:                 ; preds = %bb.r
  %i.ci = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  br i1 %i.ci, label %.split187, label %.critedge

.split187:                                        ; preds = %_ZNK4llvm3EVT8isVectorEv.exit106
  %i.cj = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  br i1 %i.cj, label %bb.t, label %.critedge

_ZNK4llvm3EVT14is256BitVectorEv.exit:             ; preds = %.split185
  %i.ck = zext nneg i16 %.sroa.0.0.copyload.i.i99 to i64
  %i.cl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ck ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16
  %.sroa.0.0.copyload.i.i.i.i109 = load i64, ptr %i.cm, align 16
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i109, 256
  br i1 %i.cn, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK4llvm3EVT14is256BitVectorEv.exit
  %.sroa.2.0..sroa_idx.i.i112 = getelementptr i8, ptr %i.cl, i64 -8
  %.sroa.2.0.copyload.i.i113 = load i8, ptr %.sroa.2.0..sroa_idx.i.i112, align 8
  %.fca.1.insert.i.i115 = insertvalue { i64, i8 } { i64 256, i8 poison }, i8 %.sroa.2.0.copyload.i.i113, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit117

bb.t:                                             ; preds = %.split187
  %i.co = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit117

_ZNK4llvm3EVT13getSizeInBitsEv.exit117:           ; preds = %bb.s, %bb.t
  %.pn.i116 = phi { i64, i8 } [ %.fca.1.insert.i.i115, %bb.s ], [ %i.co, %bb.t ] ; 2 uses
  %.fca.0.extract9 = extractvalue { i64, i8 } %.pn.i116, 0
  %.fca.1.extract10 = extractvalue { i64, i8 } %.pn.i116, 1
  %i.cp = load i16, ptr %3, align 8, !tbaa !501   ; 2 uses
  %.not.i118 = icmp eq i16 %i.cp, 0
  br i1 %.not.i118, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit117
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cq ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16
  %.sroa.0.0.copyload.i.i119 = load i64, ptr %i.cs, align 16
  %.sroa.2.0..sroa_idx.i.i120 = getelementptr i8, ptr %i.cr, i64 -8
  %.sroa.2.0.copyload.i.i121 = load i8, ptr %.sroa.2.0..sroa_idx.i.i120, align 8
  %.fca.0.insert.i.i122 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i119, 0
  %.fca.1.insert.i.i123 = insertvalue { i64, i8 } %.fca.0.insert.i.i122, i8 %.sroa.2.0.copyload.i.i121, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit125

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit117
  %i.ct = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit125

_ZNK4llvm3EVT13getSizeInBitsEv.exit125:           ; preds = %bb.u, %bb.v
  %.pn.i124 = phi { i64, i8 } [ %.fca.1.insert.i.i123, %bb.u ], [ %i.ct, %bb.v ] ; 2 uses
  %.fca.0.extract5 = extractvalue { i64, i8 } %.pn.i124, 0
  %.fca.1.extract6 = extractvalue { i64, i8 } %.pn.i124, 1
  %i.cu = shl i64 %.fca.0.extract5, 1
  %.not.i131 = icmp ne i64 %.fca.0.extract9, %i.cu
  %i.cv = icmp ne i8 %.fca.1.extract10, %.fca.1.extract6
  %i.cw = select i1 %.not.i131, i1 true, i1 %i.cv
  br i1 %i.cw, label %.critedge, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit125
  %i.cx = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.not62 = icmp eq i32 %i.cx, %i.bo
  br i1 %.not62, label %bb.y, label %.critedge

bb.x:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cy = icmp ne ptr %.sroa.0142.0.copyload, %.sroa.0151.0222
  %i.cz = icmp ne i32 %.sroa.5.0.copyload, %.sroa.8.0221
  %.not3.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %.not3.i, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.8.1 = phi i32 [ %.sroa.8.0221, %bb.x ], [ %.sroa.5.0.copyload, %bb.w ]
  %.sroa.0151.1 = phi ptr [ %.sroa.0151.0222, %bb.x ], [ %.sroa.0142.0.copyload, %bb.w ]
  %i.da = icmp samesign ult i64 %indvars.iv, %i.bs
  %i.db = select i1 %i.da, i32 0, i32 %i.bp
  %i.dc = trunc nuw i64 %indvars.iv to i32
  %i.dd = add i32 %i.bq, %i.dc
  %i.de = add i32 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0140.0.copyload, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !356 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !359
  %i.dk = icmp ult i32 %i.dj, 65
  %i.dl = load ptr, ptr %i.dh, align 8
  %spec.select.i.i.i132 = select i1 %i.dk, ptr %i.dh, ptr %i.dl
  %.0.i.i.i133 = load i64, ptr %spec.select.i.i.i132, align 8, !tbaa !151
  %i.dm = zext i32 %i.de to i64
  %.not63 = icmp eq i64 %.0.i.i.i133, %i.dm
  br i1 %.not63, label %.thread199, label %.critedge

.thread199:                                       ; preds = %bb.o, %bb.y
  %.sroa.8.3 = phi i32 [ %.sroa.8.0221, %bb.o ], [ %.sroa.8.1, %bb.y ] ; 2 uses
  %.sroa.0151.3 = phi ptr [ %.sroa.0151.0222, %bb.o ], [ %.sroa.0151.1, %bb.y ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not59 = icmp eq i64 %indvars.iv.next, %i.br
  br i1 %.not59, label %.critedge, label %bb.o, !llvm.loop !1718

.critedge:                                        ; preds = %bb.p, %bb.w, %_ZNK4llvm3EVT14is256BitVectorEv.exit, %_ZNK4llvm3EVT13getSizeInBitsEv.exit125, %_ZNK4llvm3EVT8isVectorEv.exit106, %bb.q, %.split185, %.split187, %bb.x, %.thread199, %bb.y, %bb.n
  %.sroa.33.4 = phi i32 [ 0, %bb.n ], [ %.sroa.8.3, %.thread199 ], [ 0, %bb.w ], [ 0, %_ZNK4llvm3EVT14is256BitVectorEv.exit ], [ 0, %_ZNK4llvm3EVT13getSizeInBitsEv.exit125 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit106 ], [ 0, %bb.q ], [ 0, %.split185 ], [ 0, %.split187 ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.p ]
  %.sroa.0178.4 = phi ptr [ null, %bb.n ], [ %.sroa.0151.3, %.thread199 ], [ null, %bb.w ], [ null, %_ZNK4llvm3EVT14is256BitVectorEv.exit ], [ null, %_ZNK4llvm3EVT13getSizeInBitsEv.exit125 ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit106 ], [ null, %bb.q ], [ null, %.split185 ], [ null, %.split187 ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread, %.critedge
  %.sroa.33.5 = phi i32 [ %.sroa.33.0, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.33.4, %.critedge ], [ 0, %bb.m ], [ 0, %.split ]
  %.sroa.0178.5 = phi ptr [ %.sroa.0178.0, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.0178.4, %.critedge ], [ null, %bb.m ], [ null, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0178.5, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.33.5, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3ultEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !359  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #31
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !151
  %i.h = icmp ult i64 %.0.i, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.i = phi i1 [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25checkBitcastSrcVectorSizeN4llvm7SDValueEjj(ptr %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = icmp samesign ugt i32 %1, 5
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr4250 = phi i32 [ %.tr42.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %.tr49 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr49, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  switch i32 %i.c, label %.loopexit [
    i32 222, label %bb.b
    i32 230, label %bb.b
    i32 55, label %bb.f
    i32 193, label %bb.g
    i32 195, label %bb.g
    i32 194, label %bb.g
    i32 219, label %bb.i
    i32 220, label %bb.i
    i32 162, label %bb.p
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.tr49, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !354  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !355
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !500
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.l, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.m, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.o = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.p, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.q = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.c, %bb.d
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.fca.1.extract = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.r = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.r, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.e:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.s = icmp eq i64 %.fca.0.extract, 256
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr49, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !354
  %i.v = add nuw nsw i32 %.tr4250, 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.f, %bb.h
  %.tr.be.in = phi ptr [ %i.u, %bb.f ], [ %i.ac, %bb.h ]
  %.tr42.be = phi i32 [ %i.v, %bb.f ], [ %i.z, %bb.h ] ; 2 uses
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !tbaa !361
  %i.w = icmp samesign ugt i32 %.tr42.be, 5
  br i1 %i.w, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr49, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !354
  %.sroa.07.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !361
  %i.z = add nuw nsw i32 %.tr4250, 1              ; 2 uses
  %i.aa = tail call fastcc noundef zeroext i1 @_ZL25checkBitcastSrcVectorSizeN4llvm7SDValueEjj(ptr %.sroa.07.0.copyload, i32 noundef %i.z)
  br i1 %i.aa, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !354
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  br label %tailrecurse.backedge

bb.i:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr49, i64 40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !354 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !355
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !500
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !486
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i.i.i27 = load i16, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i28 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.21.0.copyload.i.i.i29 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i28, align 8, !tbaa !487 ; 2 uses
  %.fca.0.insert.i.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i27, 0
  %.fca.1.insert.i.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.21.0.copyload.i.i.i29, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i27, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i29, ptr %i.am, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i27, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.an = add i16 %.sroa.0.0.copyload.i.i.i27, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.an, 197
  br i1 %spec.select.i.i.i.i, label %bb.j, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.i
  %i.ao = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  br i1 %i.ao, label %bb.k, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.j:                                             ; preds = %.split.i.i
  %i.ap = zext nneg i16 %.sroa.0.0.copyload.i.i.i27 to i64
  %i.aq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !31
  %i.at = insertvalue { i16, ptr } poison, i16 %i.as, 0
  %i.au = insertvalue { i16, ptr } %i.at, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.k:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.av = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.k, %bb.j, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.av, %bb.k ], [ %i.au, %bb.j ], [ %.fca.1.insert.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i.i.i, %.split.i.i ] ; 2 uses
  %i.aw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.aw, ptr %2, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ay, ptr %i.ax, align 8
  %.not.i.i1.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.az = zext i16 %i.aw to i64
  %i.ba = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
end_hunk_6
begin_hunk_7_@_ZL10combine_CCRN4llvm7SDValueES1_S1_RKNS_5SDLocERNS_12SelectionDAGERKNS_18LoongArchSubtargetE:bb.a
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !487
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 374
  %.sroa.0.0.copyload.i = load i16, ptr %i.ac, align 2, !tbaa !31
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i
  %i.ad = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %.not4.i, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !355
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !624 ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !631
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !500
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !486
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i.i132 = load i16, ptr %i.an, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.21.0.copyload.i.i134 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i133, align 8, !tbaa !487
  %i.ao = tail call noundef i32 @_ZN4llvm3ISD15getSetCCInverseENS0_8CondCodeENS_3EVTE(i32 noundef %i.ah, i16 %.sroa.0.0.copyload.i.i132, ptr %.sroa.21.0.copyload.i.i134) #28
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !631
  %.pre180 = load ptr, ptr %0, align 8, !tbaa !355
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre180, i64 40
  %.pre181 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !354
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = phi ptr [ %.pre181, %bb.i ], [ %i.u, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false), !tbaa.struct !499
  %i.ar = load ptr, ptr %0, align 8, !tbaa !355
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !499
  call fastcc void @_ZL23translateSetCCForBranchRKN4llvm5SDLocERNS_7SDValueES4_RNS_3ISD8CondCodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(920) %4)
  %i.au = load i32, ptr %i.a, align 4, !tbaa !631
  %i.av = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef %i.au) #28 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.av, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.av, 1
  store ptr %.fca.0.extract58, ptr %2, align 8, !tbaa !361
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract59, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !147
  br label %.critedge130

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.g
  %.sroa.055.0.copyload = load ptr, ptr %1, align 8, !tbaa !361
  %.sroa.256.0.copyload = load i32, ptr %.sroa.275.0..sroa_idx, align 8, !tbaa !147
  %i.aw = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.055.0.copyload, i32 %.sroa.256.0.copyload) #28
  %.pre = load ptr, ptr %0, align 8, !tbaa !355   ; 4 uses
  br i1 %i.aw, label %bb.k, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.k:                                             ; preds = %.critedge
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !163
  %i.az = icmp eq i32 %i.ay, 200
  br i1 %i.az, label %bb.l, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !500
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.bc, align 8, !tbaa !596 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.bg, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.bd, align 8, !tbaa !596 ; 2 uses
  %.not.i.i137 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i137, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.m ], [ %.sroa.018.022.i.i, %bb.l ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !500
  %i.bg = icmp ne i32 %i.bf, %i.bb                ; 2 uses
  %i.bh = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %cond.i.i, label %bb.m, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.m
  %i.bi = icmp eq i32 %.214.i.i, 0
  br i1 %i.bi, label %bb.n, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !354 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !355 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !163
  %i.bp = icmp eq i32 %i.bo, 12
  br i1 %i.bp, label %bb.o, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %.sroa.0166.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !361 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !163
  %i.bs = icmp eq i32 %i.br, 193
  br i1 %i.bs, label %bb.p, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0166.0.copyload, i64 40 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !354
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !355 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !163
  %i.bz = icmp eq i32 %i.by, 12
  br i1 %i.bz, label %bb.q, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !356 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !359
  %i.cf = icmp ult i32 %i.ce, 65
  %i.cg = load ptr, ptr %i.cc, align 8
  %spec.select.i.i.i.i.i = select i1 %i.cf, ptr %i.cc, ptr %i.cg
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !356 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !359
  %i.cm = icmp ult i32 %i.cl, 65
  %i.cn = load ptr, ptr %i.cj, align 8
  %spec.select.i.i.i.i.i138 = select i1 %i.cm, ptr %i.cj, ptr %i.cn
  %.0.i.i.i.i.i139 = load i64, ptr %spec.select.i.i.i.i.i138, align 8, !tbaa !151 ; 2 uses
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i.i.i)
  %or.cond178 = icmp eq i64 %i.co, 1
  br i1 %or.cond178, label %bb.r, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i, i1 false)
  %i.cq = sub nuw nsw i64 63, %i.cp
  %i.cr = icmp eq i64 %.0.i.i.i.i.i139, %i.cq
  br i1 %i.cr, label %bb.s, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cs = select i1 %i.m, i32 19, i32 20
  %i.ct = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef %i.cs) #28 ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.ct, 0
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.ct, 1
  store ptr %.fca.0.extract43, ptr %2, align 8, !tbaa !361
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract44, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !147
  %i.cu = tail call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %.fca.1.extract40 = extractvalue { i64, i8 } %i.cu, 1
  %i.cv = trunc nuw i8 %.fca.1.extract40 to i1
  br i1 %i.cv, label %bb.t, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.s
  %.fca.0.extract39 = extractvalue { i64, i8 } %i.cu, 0
  %i.cw = xor i64 %.0.i.i.i.i.i139, -1
  %i.cx = add i64 %.fca.0.extract39, %i.cw        ; 2 uses
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.cy, i64 12, i1 false), !tbaa.struct !499
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.critedge130, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cz = load ptr, ptr %0, align 8, !tbaa !355
  %i.da = load i32, ptr %i.ba, align 8, !tbaa !500
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !486
  %i.dd = zext i32 %i.da to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %.sroa.0.0.copyload.i.i141 = load i16, ptr %i.de, align 8, !tbaa !31 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.21.0.copyload.i.i143 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i142, align 8, !tbaa !487 ; 2 uses
  %i.df = load ptr, ptr %i.bt, align 8, !tbaa !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !499
  %i.dg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i141, ptr %.sroa.21.0.copyload.i.i143, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.dg, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.dg, 1
  store ptr %.fca.0.extract28, ptr %8, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.231.0..sroa_idx, align 8
  %i.dh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i141, ptr %.sroa.21.0.copyload.i.i143, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #28 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.dh, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.dh, 1
  store ptr %.fca.0.extract24, ptr %0, align 8, !tbaa !361
  store i32 %.fca.1.extract25, ptr %i.ba, align 8, !tbaa !147
  br label %.critedge130

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %bb.q, %bb.l, %bb.o, %bb.r, %bb.p, %bb.n, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.k, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !500
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !486
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.dn, align 8, !tbaa !31 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !487
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.do, align 8
  %.not.i.i151 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i151, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.dp = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.dq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dp ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.dr, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.dq, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.w:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.ds = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #31
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.v, %bb.w
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.v ], [ %i.ds, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.fca.1.extract21 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.dt = trunc nuw i8 %.fca.1.extract21 to i1
  br i1 %i.dt, label %bb.x, label %_ZNK4llvm8TypeSizecvmEv.exit152

bb.x:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit152:                  ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract20 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.du = trunc i64 %.fca.0.extract20 to i32      ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !359, !alias.scope !1722
  %i.dw = icmp ult i32 %i.du, 65
  br i1 %i.dw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit152
  store i64 0, ptr %9, align 8, !tbaa !151, !alias.scope !1722
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.z:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit152
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %9, i64 noundef 0, i1 noundef zeroext false) #28
  %.pr.i = load i32, ptr %i.dv, align 8, !tbaa !359, !alias.scope !1722
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.z, %bb.y
  %i.dx = phi i32 [ %i.du, %bb.y ], [ %.pr.i, %bb.z ] ; 4 uses
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %_ZN4llvm5APInt14getBitsSetFromEjj.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.dz = icmp ult i32 %i.dx, 65
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = sub nuw nsw i32 65, %i.dx
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = lshr i64 -1, %i.eb
  %i.ed = shl nuw i64 %i.ec, 1
  %i.ee = load i64, ptr %9, align 8, !tbaa !151, !alias.scope !1722
  %i.ef = or i64 %i.ee, %i.ed
  store i64 %i.ef, ptr %9, align 8, !tbaa !151, !alias.scope !1722
  br label %_ZN4llvm5APInt14getBitsSetFromEjj.exit

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 1, i32 noundef %i.dx) #28
  br label %_ZN4llvm5APInt14getBitsSetFromEjj.exit

_ZN4llvm5APInt14getBitsSetFromEjj.exit:           ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i, %bb.ab, %bb.ac
  %.sroa.017.0.copyload = load ptr, ptr %1, align 8, !tbaa !361
  %.sroa.218.0.copyload = load i32, ptr %.sroa.275.0..sroa_idx, align 8, !tbaa !147
  %i.eg = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.017.0.copyload, i32 %.sroa.218.0.copyload) #28
  br i1 %i.eg, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN4llvm5APInt14getBitsSetFromEjj.exit
  %.sroa.015.0.copyload = load ptr, ptr %0, align 8, !tbaa !361
  %.sroa.216.0.copyload = load i32, ptr %i.di, align 8, !tbaa !147
  %i.eh = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %4, ptr %.sroa.015.0.copyload, i32 %.sroa.216.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 0) #28
  br i1 %i.eh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load ptr, ptr %0, align 8, !tbaa !355
  %i.ej = load i32, ptr %i.di, align 8, !tbaa !500
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !486
  %i.em = zext i32 %i.ej to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.em ; 2 uses
  %.sroa.0.0.copyload.i.i153 = load i16, ptr %i.en, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i154 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.21.0.copyload.i.i155 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i154, align 8, !tbaa !487
  %i.eo = call noundef i32 @_ZN4llvm3ISD15getSetCCInverseENS0_8CondCodeENS_3EVTE(i32 noundef %i.d, i16 %.sroa.0.0.copyload.i.i153, ptr %.sroa.21.0.copyload.i.i155) #28
  %i.ep = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef %i.eo) #28 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ep, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ep, 1
  store ptr %.fca.0.extract6, ptr %2, align 8, !tbaa !361
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !147
  %i.eq = load ptr, ptr %0, align 8, !tbaa !355
  %i.er = load i32, ptr %i.di, align 8, !tbaa !500
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !486
  %i.eu = zext i32 %i.er to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %.sroa.0.0.copyload.i.i158 = load i16, ptr %i.ev, align 8, !tbaa !31
  %.sroa.21.0..sroa_idx.i.i159 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.21.0.copyload.i.i160 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i159, align 8, !tbaa !487
  %i.ew = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i158, ptr %.sroa.21.0.copyload.i.i160, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ew, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ew, 1
  store ptr %.fca.0.extract, ptr %1, align 8, !tbaa !361
  store i32 %.fca.1.extract, ptr %.sroa.275.0..sroa_idx, align 8, !tbaa !147
  br label %bb.af

bb.af:                                            ; preds = %_ZN4llvm5APInt14getBitsSetFromEjj.exit, %bb.ad, %bb.ae
  %.3 = phi i1 [ true, %bb.ae ], [ false, %bb.ad ], [ false, %_ZN4llvm5APInt14getBitsSetFromEjj.exit ]
  %i.ex = load i32, ptr %i.dv, align 8, !tbaa !359
  %i.ey = icmp ugt i32 %i.ex, 64
  br i1 %i.ey, label %bb.ag, label %_ZN4llvm5APIntD2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.ez = load ptr, ptr %9, align 8, !tbaa !151   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ez) #30
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge130

.critedge130:                                     ; preds = %bb.d, %bb.u, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZN4llvm5APIntD2Ev.exit, %bb.j, %bb.c
  %.4 = phi i1 [ true, %bb.c ], [ true, %bb.j ], [ %.3, %_ZN4llvm5APIntD2Ev.exit ], [ false, %bb.d ], [ true, %_ZNK4llvm8TypeSizecvmEv.exit ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.4
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL19lowerVectorSplatImmILj5EEN4llvm7SDValueEPNS0_6SDNodeEjRNS0_12SelectionDAGEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !362
  store i64 %i.b, ptr %3, align 8, !tbaa !362
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !363
  store i32 %i.e, ptr %i.c, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !31 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !487 ; 3 uses
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.21.0.copyload.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !355  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !356  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !359  ; 3 uses
  %i.r = icmp ult i32 %i.q, 65                    ; 2 uses
  br i1 %2, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.o, align 8, !tbaa !151
  %i.t = icmp eq i32 %i.q, 0
  %i.u = sub nuw nsw i32 64, %i.q
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl i64 %i.s, %i.v
  %i.x = ashr exact i64 %i.w, %i.v
  %.0.i.i.i.i = select i1 %i.t, i64 0, i64 %i.x
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.d:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.z = load i64, ptr %i.y, align 8, !tbaa !488
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.c ], [ %i.z, %bb.d ]
  %i.aa = add i64 %.0.i.i.i, 16
  %i.ab = icmp ult i64 %i.aa, 32
  br i1 %i.ab, label %bb.h, label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.ac = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.ac
  %.0.i.i.i31 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !151
  %i.ad = icmp ult i64 %.0.i.i.i31, 32
  br i1 %i.ad, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.critedge, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !475
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZNK4llvm6SDNode16getOperationNameB5cxx11EPKNS_12SelectionDAGE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !479, !noalias !1725
  %i.ai = add i64 %i.ah, -4611686018427387880
  %i.aj = icmp ult i64 %i.ai, 24
  br i1 %i.aj, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29, !noalias !1725
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.90, i64 noundef 24) #28, !noalias !1725 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !480, !alias.scope !1725
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !481 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !479 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.am, ptr %6, align 8, !tbaa !481, !alias.scope !1725
  %i.at = load i64, ptr %i.an, align 8, !tbaa !151
  store i64 %i.at, ptr %i.al, align 8, !tbaa !151, !alias.scope !1725
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !479
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !479, !alias.scope !1725
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !481
  store i64 0, ptr %i.av, align 8, !tbaa !479
  store i8 0, ptr %i.an, align 8, !tbaa !151
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.ax, align 8, !tbaa !482
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !485
  store ptr %6, ptr %5, align 8, !tbaa !151
  call void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(34) %5) #28
  %i.az = load ptr, ptr %6, align 8, !tbaa !481   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.al
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !151
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.bd = load ptr, ptr %7, align 8, !tbaa !481   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !151
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #28
  br label %bb.t

bb.h:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.bj = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i36 = icmp ult i16 %i.bj, 197
  br i1 %spec.select.i.i.i36, label %bb.i, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.h
  %i.bk = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  br i1 %i.bk, label %bb.j, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.i:                                             ; preds = %.split.i
  %i.bl = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.bm = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !31
  %i.bp = insertvalue { i16, ptr } poison, i16 %i.bo, 0
  %i.bq = insertvalue { i16, ptr } %i.bp, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.br = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.i, %bb.j
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.br, %bb.j ], [ %i.bq, %bb.i ], [ %.fca.1.insert.i, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.fca.1.insert.i, %.split.i ] ; 2 uses
  %i.bs = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  store i16 %i.bs, ptr %9, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bu = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
end_hunk_7
