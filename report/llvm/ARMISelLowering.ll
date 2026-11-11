Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20232
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNK4llvm17ARMTargetLowering24preferIncOfAddToSubOfNotENS_3EVTE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 395
  %i.h = load i8, ptr %i.g, align 1, !tbaa !202, !range !50, !noundef !51
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 461
  %i.k = load i8, ptr %i.j, align 1, !tbaa !194, !range !50, !noundef !51
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 410
  %i.n = load i8, ptr %i.m, align 2, !range !50
  %i.o = trunc nuw i8 %i.n to i1
  %not. = xor i1 %i.l, true
  %i.p = select i1 %not., i1 true, i1 %i.o
  br i1 %i.p, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %.not.i.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.q = add i16 %1, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.q, 197
  br i1 %spec.select.i.i.i.i, label %bb.e, label %bb.g

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.d
  %i.r = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br i1 %i.r, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.split.i.i
  %i.s = zext nneg i16 %1 to i64
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !58
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.f:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.y = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.z = insertvalue { i16, ptr } poison, i16 %1, 0
  %i.aa = insertvalue { i16, ptr } %i.z, ptr %2, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.g, %bb.f, %bb.e
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.aa, %bb.g ], [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %i.ab = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.ab, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ad, ptr %i.ac, align 8
  %.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ae = zext i16 %i.ab to i64
  %i.af = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ag, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ah = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  %i.ai = extractvalue { i64, i8 } %i.ah, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.h, %bb.i
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.aj = icmp ult i64 %.pn.i.i, 33
  br label %_ZNK4llvm3EVT15isScalarIntegerEv.exit

bb.j:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i16 %1, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add i16 %1, -2
  %spec.select.i.i = icmp ult i16 %i.ak, 10
  br label %_ZNK4llvm3EVT15isScalarIntegerEv.exit

bb.l:                                             ; preds = %bb.j
  %i.al = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br label %_ZNK4llvm3EVT15isScalarIntegerEv.exit

_ZNK4llvm3EVT15isScalarIntegerEv.exit:            ; preds = %bb.l, %bb.k, %bb.c, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %.0 = phi i1 [ true, %bb.c ], [ %i.aj, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ %spec.select.i.i, %bb.k ], [ %i.al, %bb.l ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering20shouldConvertFpToSatEjNS_3EVTES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, i32 noundef %1, i16 %2, ptr nofree readnone captures(none) %3, i16 %4, ptr nofree readnone captures(address_is_null) %5) unnamed_addr #9 align 2 {
bb.a:
  %.not.i.i.i.i = icmp eq i16 %4, 1
  %i.a = icmp eq ptr %5, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.a, i1 false
  br i1 %.not4.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i16.i = icmp eq i16 %4, 0
  br i1 %.not.i16.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = zext i16 %4 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.a
  %.not.i17.i = icmp ult i32 %1, 537
  br i1 %.not.i17.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6184
  %i.g = zext nneg i32 %1 to i64
  %i.h = zext i16 %4 to i64
  %i.i = getelementptr inbounds nuw [537 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !56
  %i.l = and i8 %i.k, -5
  %spec.select.i = icmp eq i8 %i.l, 0
  %i.m = icmp ne i16 %2, 0
  %or.cond = select i1 %spec.select.i, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8: ; preds = %bb.c
  switch i16 %2, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread [
    i16 112, label %bb.h
    i16 13, label %bb.e
    i16 14, label %bb.f
    i16 15, label %bb.g
    i16 136, label %bb.h
  ]

bb.d:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
  switch i16 %2, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread [
    i16 13, label %bb.e
    i16 14, label %bb.f
    i16 15, label %bb.g
    i16 136, label %bb.h
    i16 112, label %bb.h
  ]

bb.e:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 443
  %i.q = load i8, ptr %i.p, align 1, !tbaa !197, !range !50, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 443
  %i.v = load i8, ptr %i.u, align 1, !tbaa !197, !range !50, !noundef !51
  %i.w = trunc nuw i8 %i.v to i1
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 378
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !198, !range !50, !noundef !51
  %i.ab = trunc nuw i8 %i.aa to i1
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8, %bb.d, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 394
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !203, !range !50, !noundef !51
  %i.ag = trunc nuw i8 %i.af to i1
  br label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.b, %bb.d, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i1 [ false, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit ], [ %i.r, %bb.e ], [ %i.w, %bb.f ], [ %i.ab, %bb.g ], [ %i.ag, %bb.h ], [ false, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread8 ], [ false, %bb.d ], [ false, %bb.b ], [ false, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering23PerformIntrinsicCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %i.a = alloca i64, align 8                      ; 16 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %25 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %27 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %28 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %29 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SmallVector.399", align 8 ; 11 uses
  %31 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %32 = alloca [2 x %"struct.llvm::EVT"], align 8 ; 4 uses
  %33 = alloca %"class.llvm::ArrayRef.429", align 8 ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !969, !nonnull !51, !align !92 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !696  ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !602
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !795  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !698
  %i.m = icmp ult i32 %i.l, 65
  %i.n = load ptr, ptr %i.j, align 8
  %spec.select.i.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.n
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !204
  %i.o = trunc i64 %.0.i.i.i.i to i32             ; 5 uses
  switch i32 %i.o, label %bb.bm [
    i32 4129, label %bb.b
    i32 4130, label %bb.b
    i32 4123, label %bb.b
    i32 4124, label %bb.b
    i32 4122, label %bb.b
    i32 4114, label %bb.b
    i32 4116, label %bb.b
    i32 4115, label %bb.b
    i32 4111, label %bb.b
    i32 4113, label %bb.b
    i32 4112, label %bb.b
    i32 4106, label %bb.b
    i32 4108, label %bb.b
    i32 4107, label %bb.b
    i32 4128, label %bb.z
    i32 3803, label %bb.be
    i32 3802, label %bb.be
    i32 4040, label %bb.ag
    i32 3948, label %bb.ah
    i32 3950, label %bb.ah
    i32 3957, label %bb.ah
    i32 3959, label %bb.ah
    i32 3934, label %bb.ah
    i32 3935, label %bb.ah
    i32 3949, label %bb.ah
    i32 3951, label %bb.ah
    i32 3958, label %bb.ah
    i32 3960, label %bb.ah
    i32 3839, label %bb.as
    i32 3830, label %bb.as
    i32 3833, label %bb.as
    i32 3824, label %bb.as
    i32 3840, label %bb.as
    i32 3831, label %bb.as
    i32 3834, label %bb.as
    i32 3825, label %bb.as
    i32 3804, label %bb.bd
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !602
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !737
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !352
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.w, align 8, !tbaa !58 ; 21 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !353 ; 7 uses
  %.fca.0.insert.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i, 1 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.0117.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !374 ; 5 uses
  switch i32 %i.o, label %bb.v [
    i32 4129, label %bb.c
    i32 4130, label %bb.c
    i32 4123, label %66
    i32 4124, label %66
    i32 4114, label %bb.k
    i32 4116, label %bb.k
    i32 4115, label %bb.p
    i32 4122, label %bb.u
    i32 4111, label %bb.u
    i32 4113, label %bb.u
    i32 4112, label %bb.u
    i32 4106, label %bb.u
    i32 4108, label %bb.u
    i32 4107, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store i16 %.sroa.0.0.copyload.i.i, ptr %16, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.c
  %i.z = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i.i = icmp ult i16 %i.z, 197
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i:              ; preds = %bb.c
  %i.aa = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #39
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.d:                                             ; preds = %.split.i.i.i
  %i.ab = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ac = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !58
  %i.af = insertvalue { i16, ptr } poison, i16 %i.ae, 0
  %i.ag = insertvalue { i16, ptr } %i.af, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i
  %i.ah = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i:          ; preds = %.split.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, %bb.e, %bb.d
  %.fca.1.insert.merged.i.i.i = phi { i16, ptr } [ %i.ah, %bb.e ], [ %i.ag, %bb.d ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i ], [ %.fca.1.insert.i.i, %.split.i.i.i ] ; 2 uses
  %i.ai = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i, 0 ; 3 uses
  store i16 %i.ai, ptr %15, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ak = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i, 1
  store ptr %i.ak, ptr %i.aj, align 8
  %.not.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i
  %i.al = zext i16 %i.ai to i64
  %i.am = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.an, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i
  %i.ao = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  %i.ap = extractvalue { i64, i8 } %i.ao, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i:      ; preds = %bb.g, %bb.f
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %i.aq = trunc i64 %.pn.i.i.i to i32
  %i.ar = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.0117.0.copyload, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.ar, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.h

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !468 ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  %i.au = icmp slt i64 %i.as, %.pn.i.i.i
  %i.av = and i1 %i.at, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br i1 %i.av, label %bb.w, label %bb.h

bb.h:                                             ; preds = %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !696
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %.sroa.0111.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i16 %.sroa.0.0.copyload.i.i, ptr %14, align 8
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %36, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196, label %.split.i.i.i187

.split.i.i.i187:                                  ; preds = %bb.h
  %37 = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i.i188 = icmp ult i16 %37, 197
  br i1 %spec.select.i.i.i.i.i188, label %39, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196:           ; preds = %bb.h
  %38 = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #39
  br i1 %38, label %46, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189

39:                                               ; preds = %.split.i.i.i187
  %40 = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %41 = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -2
  %43 = load i16, ptr %42, align 2, !tbaa !58
  %44 = insertvalue { i16, ptr } poison, i16 %43, 0
  %45 = insertvalue { i16, ptr } %44, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189

46:                                               ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196
  %47 = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189:       ; preds = %.split.i.i.i187, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196, %46, %39
  %.fca.1.insert.merged.i.i.i190 = phi { i16, ptr } [ %47, %46 ], [ %45, %39 ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196 ], [ %.fca.1.insert.i.i, %.split.i.i.i187 ] ; 2 uses
  %48 = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i190, 0 ; 3 uses
  store i16 %48, ptr %13, align 8
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %50 = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i190, 1
  store ptr %50, ptr %49, align 8
  %.not.i.i.i191 = icmp eq i16 %48, 0
  br i1 %.not.i.i.i191, label %55, label %51

51:                                               ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189
  %52 = zext i16 %48 to i64
  %53 = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %52
  %54 = getelementptr i8, ptr %53, i64 -16
  %.sroa.0.0.copyload.i.i.i.i192 = load i64, ptr %54, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193

55:                                               ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189
  %56 = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #39
  %57 = extractvalue { i64, i8 } %56, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193:   ; preds = %55, %51
  %.pn.i.i.i194 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i192, %51 ], [ %57, %55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %58 = trunc i64 %.pn.i.i.i194 to i32
  %59 = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.0111.0.copyload, i32 noundef %58, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %59, label %60, label %65

60:                                               ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193
  %61 = load i64, ptr %i.a, align 8, !tbaa !468   ; 3 uses
  %62 = sub nsw i64 0, %.pn.i.i.i194
  %.not.i = icmp sge i64 %61, %62
  %63 = icmp slt i64 %61, 0
  %or.cond.i = and i1 %.not.i, %63
  br i1 %or.cond.i, label %bb.i, label %65

bb.i:                                             ; preds = %60
  %64 = sub nsw i64 0, %61
  store i64 %64, ptr %i.a, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.ay = icmp eq i32 %i.o, 4129
  %i.az = select i1 %i.ay, i32 688, i32 689
  br label %bb.w

65:                                               ; preds = %60, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.y

66:                                               ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i16 %.sroa.0.0.copyload.i.i, ptr %12, align 8
  %67 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %67, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %.not.i.i.i.i197 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i197, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i209, label %.split.i.i.i198

.split.i.i.i198:                                  ; preds = %66
  %68 = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i.i199 = icmp ult i16 %68, 197
  br i1 %spec.select.i.i.i.i.i199, label %70, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i209:           ; preds = %66
  %69 = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #39
  br i1 %69, label %77, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200

70:                                               ; preds = %.split.i.i.i198
  %71 = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %72 = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %71
  %73 = getelementptr i8, ptr %72, i64 -2
  %74 = load i16, ptr %73, align 2, !tbaa !58
  %75 = insertvalue { i16, ptr } poison, i16 %74, 0
  %76 = insertvalue { i16, ptr } %75, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200

77:                                               ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i209
  %78 = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200:       ; preds = %.split.i.i.i198, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i209, %77, %70
  %.fca.1.insert.merged.i.i.i201 = phi { i16, ptr } [ %78, %77 ], [ %76, %70 ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i209 ], [ %.fca.1.insert.i.i, %.split.i.i.i198 ] ; 2 uses
  %79 = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i201, 0 ; 3 uses
  store i16 %79, ptr %11, align 8
  %80 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %81 = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i201, 1
  store ptr %81, ptr %80, align 8
  %.not.i.i.i202 = icmp eq i16 %79, 0
  br i1 %.not.i.i.i202, label %86, label %82

82:                                               ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200
  %83 = zext i16 %79 to i64
  %84 = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %83
  %85 = getelementptr i8, ptr %84, i64 -16
  %.sroa.0.0.copyload.i.i.i.i203 = load i64, ptr %85, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i204

86:                                               ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i200
  %87 = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #39
  %88 = extractvalue { i64, i8 } %87, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i204

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i204:   ; preds = %86, %82
  %.pn.i.i.i205 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i203, %82 ], [ %88, %86 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %89 = trunc i64 %.pn.i.i.i205 to i32
  %90 = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.0117.0.copyload, i32 noundef %89, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %90, label %bb.j, label %95

bb.j:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i204
  %91 = load i64, ptr %i.a, align 8, !tbaa !468   ; 3 uses
  %92 = sub nsw i64 0, %.pn.i.i.i205
  %.not.i207 = icmp sge i64 %91, %92
  %93 = icmp slt i64 %91, 0
  %or.cond.i208 = and i1 %.not.i207, %93
  br i1 %or.cond.i208, label %_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl.exit210, label %95

_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl.exit210: ; preds = %bb.j
  %94 = sub nsw i64 0, %91
  store i64 %94, ptr %i.a, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.w

95:                                               ; preds = %bb.j, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.y

bb.k:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i16 %.sroa.0.0.copyload.i.i, ptr %10, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %.not.i.i.i.i186 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i186, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196.a, label %.split.i.i.i187.a

.split.i.i.i187.a:                                ; preds = %bb.k
  %i.bb = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i.i188.a = icmp ult i16 %i.bb, 197
  br i1 %spec.select.i.i.i.i.i188.a, label %bb.l, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196.a:         ; preds = %bb.k
  %i.bc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #39
  br i1 %i.bc, label %bb.m, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a

bb.l:                                             ; preds = %.split.i.i.i187.a
  %i.bd = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.be = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !58
  %i.bh = insertvalue { i16, ptr } poison, i16 %i.bg, 0
  %i.bi = insertvalue { i16, ptr } %i.bh, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a

bb.m:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196.a
  %i.bj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a:     ; preds = %.split.i.i.i187.a, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196.a, %bb.m, %bb.l
  %.fca.1.insert.merged.i.i.i190.a = phi { i16, ptr } [ %i.bj, %bb.m ], [ %i.bi, %bb.l ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i196.a ], [ %.fca.1.insert.i.i, %.split.i.i.i187.a ] ; 2 uses
  %i.bk = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i190.a, 0 ; 3 uses
  store i16 %i.bk, ptr %9, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i190.a, 1
  store ptr %i.bm, ptr %i.bl, align 8
  %.not.i.i.i191.a = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i.i191.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a
  %i.bn = zext i16 %i.bk to i64
  %i.bo = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -16
  %.sroa.0.0.copyload.i.i.i.i192.a = load i64, ptr %i.bp, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193.a

bb.o:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i189.a
  %i.bq = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  %i.br = extractvalue { i64, i8 } %i.bq, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193.a

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193.a: ; preds = %bb.o, %bb.n
  %.pn.i.i.i194.a = phi i64 [ %.sroa.0.0.copyload.i.i.i.i192.a, %bb.n ], [ %i.br, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.bs = trunc i64 %.pn.i.i.i194.a to i32
  %i.bt = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.0117.0.copyload, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.bt, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197.thread

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197.thread: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.y

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i193.a
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !468 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  %i.bw = icmp slt i64 %i.bu, %.pn.i.i.i194.a
  %i.bx = and i1 %i.bv, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %i.bx, label %bb.w, label %bb.y

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i16 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %.not.i.i.i.i198 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i198, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i208, label %.split.i.i.i199

.split.i.i.i199:                                  ; preds = %bb.p
  %i.bz = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i.i200 = icmp ult i16 %i.bz, 197
  br i1 %spec.select.i.i.i.i.i200, label %bb.q, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i208:           ; preds = %bb.p
  %i.ca = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #39
  br i1 %i.ca, label %bb.r, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201

bb.q:                                             ; preds = %.split.i.i.i199
  %i.cb = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.cc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !58
  %i.cf = insertvalue { i16, ptr } poison, i16 %i.ce, 0
  %i.cg = insertvalue { i16, ptr } %i.cf, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201

bb.r:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i208
  %i.ch = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201:       ; preds = %.split.i.i.i199, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i208, %bb.r, %bb.q
  %.fca.1.insert.merged.i.i.i202 = phi { i16, ptr } [ %i.ch, %bb.r ], [ %i.cg, %bb.q ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i208 ], [ %.fca.1.insert.i.i, %.split.i.i.i199 ] ; 2 uses
  %i.ci = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i202, 0 ; 3 uses
  store i16 %i.ci, ptr %7, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i202, 1
  store ptr %i.ck, ptr %i.cj, align 8
  %.not.i.i.i203 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.i203, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201
  %i.cl = zext i16 %i.ci to i64
  %i.cm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -16
  %.sroa.0.0.copyload.i.i.i.i204 = load i64, ptr %i.cn, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i205

bb.t:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i201
  %i.co = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  %i.cp = extractvalue { i64, i8 } %i.co, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i205

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i205:   ; preds = %bb.t, %bb.s
  %.pn.i.i.i206 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i204, %bb.s ], [ %i.cp, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.cq = trunc i64 %.pn.i.i.i206 to i32
  %i.cr = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.0117.0.copyload, i32 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !468
  %i.ct = icmp slt i64 %i.cs, %.pn.i.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.assume(i1 %i.ct)
  br label %bb.x

bb.u:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.cu = call fastcc noundef zeroext i1 @_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl(ptr %.sroa.0117.0.copyload, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.b
  unreachable

bb.w:                                             ; preds = %_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl.exit210, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit, %bb.u, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197, %bb.i
  %.0 = phi i32 [ 0, %bb.u ], [ %i.az, %bb.i ], [ 0, %_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl.exit210 ], [ 0, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197 ], [ 684, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit ]
  %switch.tableidx = add i32 %i.o, -4106          ; 3 uses
  %i.cv = icmp ult i32 %switch.tableidx, 19
  %switch.shifted = lshr i32 460775, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.cv, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.x

switch.lookup:                                    ; preds = %bb.w
  %i.cw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17ARMTargetLowering23PerformIntrinsicCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE, i64 %i.cw
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.x

bb.x:                                             ; preds = %switch.lookup, %bb.w, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i205
  %.1 = phi i32 [ %.0, %bb.w ], [ %switch.ext, %switch.lookup ], [ 673, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i205 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !764
  store i64 %i.cy, ptr %17, align 8, !tbaa !764
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.db = load i32, ptr %i.da, align 4, !tbaa !765
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !766
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !352 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.dd, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !353
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !696
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !736
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !468
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract76 = extractvalue { ptr, i32 } %i.dh, 0
  %.fca.1.extract77 = extractvalue { ptr, i32 } %i.dh, 1
  store ptr %.fca.0.extract76, ptr %19, align 8
  %.sroa.279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract77, ptr %.sroa.279.0..sroa_idx, align 8
  %i.di = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #38 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.di, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.y

bb.y:                                             ; preds = %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197.thread, %bb.x, %95, %65
  %.sroa.18.0 = phi i32 [ %.fca.1.extract73, %bb.x ], [ 0, %65 ], [ 0, %95 ], [ 0, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197.thread ], [ 0, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197 ]
  %.sroa.0283.0 = phi ptr [ %.fca.0.extract72, %bb.x ], [ null, %65 ], [ null, %95 ], [ null, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197.thread ], [ null, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit197 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.bm

bb.z:                                             ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !602
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !737
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !352
  %i.dp = zext i32 %i.dm to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %.sroa.0.0.copyload.i.i210 = load i16, ptr %i.dq, align 8, !tbaa !58 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.21.0.copyload.i.i212 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i211, align 8, !tbaa !353 ; 3 uses
  %.fca.0.insert.i.i213 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i210, 0
  %.fca.1.insert.i.i214 = insertvalue { i16, ptr } %.fca.0.insert.i.i213, ptr %.sroa.21.0.copyload.i.i212, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.066.0.copyload = load ptr, ptr %i.dr, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i16 %.sroa.0.0.copyload.i.i210, ptr %6, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i212, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %.not.i.i.i.i215 = icmp eq i16 %.sroa.0.0.copyload.i.i210, 0
  br i1 %.not.i.i.i.i215, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i225, label %.split.i.i.i216

.split.i.i.i216:                                  ; preds = %bb.z
  %i.dt = add i16 %.sroa.0.0.copyload.i.i210, -19
  %spec.select.i.i.i.i.i217 = icmp ult i16 %i.dt, 197
  br i1 %spec.select.i.i.i.i.i217, label %bb.aa, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i225:           ; preds = %bb.z
  %i.du = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  br i1 %i.du, label %bb.ab, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218

bb.aa:                                            ; preds = %.split.i.i.i216
  %i.dv = zext nneg i16 %.sroa.0.0.copyload.i.i210 to i64
  %i.dw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !58
  %i.dz = insertvalue { i16, ptr } poison, i16 %i.dy, 0
  %i.ea = insertvalue { i16, ptr } %i.dz, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218

bb.ab:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i225
  %i.eb = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218:       ; preds = %.split.i.i.i216, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i225, %bb.ab, %bb.aa
  %.fca.1.insert.merged.i.i.i219 = phi { i16, ptr } [ %i.eb, %bb.ab ], [ %i.ea, %bb.aa ], [ %.fca.1.insert.i.i214, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i225 ], [ %.fca.1.insert.i.i214, %.split.i.i.i216 ] ; 2 uses
  %i.ec = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i219, 0 ; 3 uses
  store i16 %i.ec, ptr %5, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i219, 1
  store ptr %i.ee, ptr %i.ed, align 8
  %.not.i.i.i220 = icmp eq i16 %i.ec, 0
  br i1 %.not.i.i.i220, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218
  %i.ef = zext i16 %i.ec to i64
  %i.eg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 -16
  %.sroa.0.0.copyload.i.i.i.i221 = load i64, ptr %i.eh, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i222

bb.ad:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i218
  %i.ei = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #39
  %i.ej = extractvalue { i64, i8 } %i.ei, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i222

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i222:   ; preds = %bb.ad, %bb.ac
  %.pn.i.i.i223 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i221, %bb.ac ], [ %i.ej, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.ek = trunc i64 %.pn.i.i.i223 to i32
  %i.el = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.066.0.copyload, i32 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.el, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226.thread

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226.thread: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ae

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i222
  %i.em = load i64, ptr %i.b, align 8, !tbaa !468 ; 3 uses
  %i.en = icmp sgt i64 %i.em, -1
  %i.eo = icmp slt i64 %i.em, %.pn.i.i.i223
  %i.ep = and i1 %i.en, %i.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.ep, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226.thread, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !696
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  %.sroa.060.0.copyload = load ptr, ptr %i.er, align 8, !tbaa !374
  %i.es = call fastcc noundef zeroext i1 @_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl(ptr %.sroa.060.0.copyload, i16 %.sroa.0.0.copyload.i.i210, ptr %.sroa.21.0.copyload.i.i212, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %.pre303 = load i64, ptr %i.b, align 8, !tbaa !468
  br label %bb.af

bb.af:                                            ; preds = %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226, %bb.ae
  %i.et = phi i64 [ %.pre303, %bb.ae ], [ %i.em, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226 ]
  %.0180 = phi i32 [ 691, %bb.ae ], [ 690, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit226 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !764
  store i64 %i.ev, ptr %20, align 8, !tbaa !764
  %i.ew = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !765
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !766
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !352 ; 2 uses
  %.sroa.0.0.copyload.i227 = load i16, ptr %i.fa, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.21.0.copyload.i229 = load ptr, ptr %.sroa.21.0..sroa_idx.i228, align 8, !tbaa !353
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !696 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !tbaa.struct !736
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !736
  %i.fe = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i64 noundef %i.et, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract51 = extractvalue { ptr, i32 } %i.fe, 0
  %.fca.1.extract52 = extractvalue { ptr, i32 } %i.fe, 1
  store ptr %.fca.0.extract51, ptr %23, align 8
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract52, ptr %.sroa.254.0..sroa_idx, align 8
  %i.ff = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef %.0180, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 %.sroa.0.0.copyload.i227, ptr %.sroa.21.0.copyload.i229, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #38 ; 2 uses
  %.fca.0.extract47 = extractvalue { ptr, i32 } %i.ff, 0
  %.fca.1.extract48 = extractvalue { ptr, i32 } %i.ff, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %bb.bm

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !764
  store i64 %i.fh, ptr %24, align 8, !tbaa !764
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !765
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !766
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !352 ; 2 uses
  %.sroa.0.0.copyload.i232 = load i16, ptr %i.fm, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.21.0.copyload.i234 = load ptr, ptr %.sroa.21.0..sroa_idx.i233, align 8, !tbaa !353
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.fq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef 626, ptr noundef nonnull align 8 dereferenceable(12) %24, i16 %.sroa.0.0.copyload.i232, ptr %.sroa.21.0.copyload.i234, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fn, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fo, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fp) #38 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.fq, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.fq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %bb.bm

bb.ah:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !352 ; 2 uses
  %.sroa.0.0.copyload.i237 = load i16, ptr %i.fs, align 8, !tbaa !58 ; 5 uses
  %.sroa.21.0..sroa_idx.i238 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.21.0.copyload.i239 = load ptr, ptr %.sroa.21.0..sroa_idx.i238, align 8, !tbaa !353 ; 2 uses
  %.fca.0.insert.i240 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i237, 0
  %.fca.1.insert.i241 = insertvalue { i16, ptr } %.fca.0.insert.i240, ptr %.sroa.21.0.copyload.i239, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i237, ptr %25, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.21.0.copyload.i239, ptr %i.ft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.not.i.i.i242 = icmp eq i16 %.sroa.0.0.copyload.i237, 0
  br i1 %.not.i.i.i242, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ah
  %i.fu = add i16 %.sroa.0.0.copyload.i237, -19
  %spec.select.i.i.i.i243 = icmp ult i16 %i.fu, 197
  br i1 %spec.select.i.i.i.i243, label %bb.ai, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.ah
  %i.fv = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #39
  br i1 %i.fv, label %bb.aj, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.ai:                                            ; preds = %.split.i.i
  %i.fw = zext nneg i16 %.sroa.0.0.copyload.i237 to i64
  %i.fx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 -2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !58
  %i.ga = insertvalue { i16, ptr } poison, i16 %i.fz, 0
  %i.gb = insertvalue { i16, ptr } %i.ga, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.aj:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.gc = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %.split.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %bb.aj, %bb.ai
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.gc, %bb.aj ], [ %i.gb, %bb.ai ], [ %.fca.1.insert.i241, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i241, %.split.i.i ] ; 2 uses
  %i.gd = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.gd, ptr %4, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gf = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.gf, ptr %i.ge, align 8
  %.not.i.i = icmp eq i16 %i.gd, 0
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.gg = zext i16 %i.gd to i64
  %i.gh = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.gi, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.al:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.gj = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  %i.gk = extractvalue { i64, i8 } %i.gj, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.ak, %bb.al
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.ak ], [ %i.gk, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.gl = trunc i64 %.pn.i.i to i32               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.gm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store i32 32, ptr %i.gm, align 8, !tbaa !698, !alias.scope !2737
  store i64 0, ptr %26, align 8, !tbaa !204, !alias.scope !2737
  %i.gn = icmp eq i32 %i.gl, 0
  br i1 %i.gn, label %_ZN4llvm5APInt13getLowBitsSetEjj.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.go = icmp ult i32 %i.gl, 65
  br i1 %i.go, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gp = sub i64 64, %.pn.i.i
  %i.gq = and i64 %i.gp, 4294967295
  %i.gr = lshr i64 -1, %i.gq
  store i64 %i.gr, ptr %26, align 8, !tbaa !204, !alias.scope !2737
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit

bb.ao:                                            ; preds = %bb.am
  call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %26, i32 noundef 0, i32 noundef %i.gl) #38
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit

_ZN4llvm5APInt13getLowBitsSetEjj.exit:            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %bb.an, %bb.ao
  %i.gs = load ptr, ptr %i.e, align 8, !tbaa !696 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 120
  %.sroa.037.0.copyload = load ptr, ptr %i.gt, align 8, !tbaa !374
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  %.sroa.238.0.copyload = load i32, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !324
  %i.gu = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.037.0.copyload, i32 %.sroa.238.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %26, ptr noundef nonnull align 8 dereferenceable(24) %2) #38
  %i.gv = load i32, ptr %i.gm, align 8, !tbaa !698
  %i.gw = icmp ugt i32 %i.gv, 64                  ; 2 uses
  br i1 %i.gu, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit
  br i1 %i.gw, label %bb.aq, label %_ZN4llvm5APIntD2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gx = load ptr, ptr %26, align 8, !tbaa !204  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.gx) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.bm

bb.as:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !602
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !352 ; 2 uses
  %.sroa.0.0.copyload.i244 = load i16, ptr %i.hc, align 8, !tbaa !58 ; 5 uses
  %.sroa.21.0..sroa_idx.i245 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.21.0.copyload.i246 = load ptr, ptr %.sroa.21.0..sroa_idx.i245, align 8, !tbaa !353 ; 2 uses
  %.fca.0.insert.i247 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i244, 0
  %.fca.1.insert.i248 = insertvalue { i16, ptr } %.fca.0.insert.i247, ptr %.sroa.21.0.copyload.i246, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i244, ptr %27, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %.sroa.21.0.copyload.i246, ptr %i.hd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %.not.i.i.i249 = icmp eq i16 %.sroa.0.0.copyload.i244, 0
  br i1 %.not.i.i.i249, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i259, label %.split.i.i250

.split.i.i250:                                    ; preds = %bb.as
  %i.he = add i16 %.sroa.0.0.copyload.i244, -19
  %spec.select.i.i.i.i251 = icmp ult i16 %i.he, 197
  br i1 %spec.select.i.i.i.i251, label %bb.at, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i254

_ZNK4llvm3EVT8isVectorEv.exit.i.i259:             ; preds = %bb.as
  %i.hf = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #39
  br i1 %i.hf, label %bb.au, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i254

bb.at:                                            ; preds = %.split.i.i250
  %i.hg = zext nneg i16 %.sroa.0.0.copyload.i244 to i64
  %i.hh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !58
  %i.hk = insertvalue { i16, ptr } poison, i16 %i.hj, 0
  %i.hl = insertvalue { i16, ptr } %i.hk, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i254

bb.au:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i259
  %i.hm = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i254

_ZNK4llvm3EVT13getScalarTypeEv.exit.i254:         ; preds = %.split.i.i250, %_ZNK4llvm3EVT8isVectorEv.exit.i.i259, %bb.au, %bb.at
  %.fca.1.insert.merged.i.i255 = phi { i16, ptr } [ %i.hm, %bb.au ], [ %i.hl, %bb.at ], [ %.fca.1.insert.i248, %_ZNK4llvm3EVT8isVectorEv.exit.i.i259 ], [ %.fca.1.insert.i248, %.split.i.i250 ] ; 2 uses
  %i.hn = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i255, 0 ; 3 uses
  store i16 %i.hn, ptr %3, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hp = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i255, 1
  store ptr %i.hp, ptr %i.ho, align 8
  %.not.i.i256 = icmp eq i16 %i.hn, 0
  br i1 %.not.i.i256, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i254
  %i.hq = zext i16 %i.hn to i64
  %i.hr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -16
  %.sroa.0.0.copyload.i.i.i257 = load i64, ptr %i.hs, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit260

bb.aw:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i254
  %i.ht = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  %i.hu = extractvalue { i64, i8 } %i.ht, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit260

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit260:     ; preds = %bb.av, %bb.aw
  %.pn.i.i258 = phi i64 [ %.sroa.0.0.copyload.i.i.i257, %bb.av ], [ %i.hu, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.hv = trunc i64 %.pn.i.i258 to i32            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  %i.hw = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i32 32, ptr %i.hw, align 8, !tbaa !698, !alias.scope !2738
  store i64 0, ptr %28, align 8, !tbaa !204, !alias.scope !2738
  %i.hx = icmp eq i32 %i.hv, 0
  br i1 %i.hx, label %_ZN4llvm5APInt13getLowBitsSetEjj.exit261, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit260
  %i.hy = icmp ult i32 %i.hv, 65
  br i1 %i.hy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hz = sub i64 64, %.pn.i.i258
  %i.ia = and i64 %i.hz, 4294967295
  %i.ib = lshr i64 -1, %i.ia
  store i64 %i.ib, ptr %28, align 8, !tbaa !204, !alias.scope !2738
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit261

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %28, i32 noundef 0, i32 noundef %i.hv) #38
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit261

_ZN4llvm5APInt13getLowBitsSetEjj.exit261:         ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit260, %bb.ay, %bb.az
  %i.ic = load ptr, ptr %i.e, align 8, !tbaa !696 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %.sroa.033.0.copyload = load ptr, ptr %i.id, align 8, !tbaa !374
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !324
  %i.ie = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.033.0.copyload, i32 %.sroa.234.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %28, ptr noundef nonnull align 8 dereferenceable(24) %2) #38
  %i.if = load i32, ptr %i.hw, align 8, !tbaa !698
  %i.ig = icmp ugt i32 %i.if, 64                  ; 2 uses
  br i1 %i.ie, label %bb.ba, label %.critedge185

bb.ba:                                            ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit261
  br i1 %i.ig, label %bb.bb, label %_ZN4llvm5APIntD2Ev.exit262

bb.bb:                                            ; preds = %bb.ba
  %i.ih = load ptr, ptr %28, align 8, !tbaa !204  ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %_ZN4llvm5APIntD2Ev.exit262, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.ih) #41
  br label %_ZN4llvm5APIntD2Ev.exit262

_ZN4llvm5APIntD2Ev.exit262:                       ; preds = %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bm

bb.bd:                                            ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !602
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !795 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !698
  %i.iq = icmp ult i32 %i.ip, 65
  %i.ir = load ptr, ptr %i.in, align 8
  %spec.select.i.i.i.i263 = select i1 %i.iq, ptr %i.in, ptr %i.ir
  %.0.i.i.i.i264 = load i64, ptr %spec.select.i.i.i.i263, align 8, !tbaa !204
  %.not = icmp eq i64 %.0.i.i.i.i264, 0
  %i.is = select i1 %.not, i32 623, i32 624
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !764
  store i64 %i.iu, ptr %29, align 8, !tbaa !764
  %i.iv = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !765
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !766
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !352
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !351
  %i.jc = zext i16 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.je = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef %i.is, ptr noundef nonnull align 8 dereferenceable(12) %29, ptr %i.iz, i32 %i.jc, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.jd) #38 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.je, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.je, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %bb.bm

bb.be:                                            ; preds = %bb.a, %bb.a
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !602
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 88
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !795 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !698
  %i.jm = icmp ult i32 %i.jl, 65
  %i.jn = load ptr, ptr %i.jj, align 8
  %spec.select.i.i.i.i267 = select i1 %i.jm, ptr %i.jj, ptr %i.jn
  %.0.i.i.i.i268 = load i64, ptr %spec.select.i.i.i.i267, align 8, !tbaa !204
  %.not182 = icmp eq i64 %.0.i.i.i.i268, 0        ; 2 uses
  %i.jo = icmp eq i32 %i.o, 3802
  %i.jp = select i1 %.not182, i32 619, i32 620
  %i.jq = select i1 %.not182, i32 617, i32 618
  %i.jr = select i1 %i.jo, i32 %i.jp, i32 %i.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.js = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  store ptr %i.js, ptr %30, align 8, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  store i32 0, ptr %i.jt, align 8, !tbaa !375
  %i.ju = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 2 uses
  store i32 4, ptr %i.ju, align 4, !tbaa !376
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jw = load i16, ptr %i.jv, align 8, !tbaa !758 ; 3 uses
  %i.jx = icmp ugt i16 %i.jw, 1
  br i1 %i.jx, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel, label %._crit_edge

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel: ; preds = %bb.be
  %wide.trip.count = zext i16 %i.jw to i64
  %.sroa.217.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.217.0.copyload.peel = load i32, ptr %.sroa.217.0..sroa_idx.peel, align 8, !tbaa !324
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.016.0.copyload.peel = load ptr, ptr %i.jy, align 8, !tbaa !374
  store ptr %.sroa.016.0.copyload.peel, ptr %i.js, align 8
  %.sroa.32.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i32 %.sroa.217.0.copyload.peel, ptr %.sroa.32.0..sroa_idx.i.peel, align 8
  store i32 1, ptr %i.jt, align 8, !tbaa !375
  %i.jz = and i16 %i.jw, -2
  %switch = icmp eq i16 %i.jz, 2
  br i1 %switch, label %._crit_edge, label %.lr.ph.peel.next290

._crit_edge.loopexit.loopexit:                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre.pre = load ptr, ptr %30, align 8, !tbaa !54
  %.pre302.pre = load i32, ptr %i.jt, align 8, !tbaa !375
  %i.ka = zext i32 %.pre302.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel, %._crit_edge.loopexit.loopexit, %bb.be
  %i.kb = phi i64 [ 0, %bb.be ], [ %i.ka, %._crit_edge.loopexit.loopexit ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel ]
  %i.kc = phi ptr [ %i.js, %bb.be ], [ %.pre.pre, %._crit_edge.loopexit.loopexit ], [ %i.js, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !764
  store i64 %i.ke, ptr %31, align 8, !tbaa !764
  %i.kf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !765
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !766
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) @constinit.89, i64 32, i1 false), !tbaa.struct !739
  store ptr %i.kc, ptr %33, align 8, !tbaa !462
  %i.ki = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.kb, ptr %i.ki, align 8, !tbaa !463
  %i.kj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef %i.jr, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr nonnull %32, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %33) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.kj, 0 ; 2 uses
  store ptr %.fca.0.extract6, ptr %34, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 0, ptr %.sroa.29.0..sroa_idx, align 8
  store ptr %.fca.0.extract6, ptr %35, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 1, ptr %.sroa.25.0..sroa_idx, align 8
  %i.kk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef 57, ptr noundef nonnull align 8 dereferenceable(12) %31, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.kk, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.kk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  %i.kl = load ptr, ptr %30, align 8, !tbaa !54   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.js
  br i1 %i.km, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.kl) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %._crit_edge, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %bb.bm

.lr.ph.peel.next290:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ 3, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.peel ] ; 2 uses
  %i.kn = load ptr, ptr %i.e, align 8, !tbaa !696
  %i.ko = getelementptr inbounds nuw [40 x i8], ptr %i.kn, i64 %indvars.iv ; 2 uses
  %.sroa.016.0.copyload = load ptr, ptr %i.ko, align 8, !tbaa !374 ; 2 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %.sroa.217.0.copyload = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !324 ; 2 uses
  %i.kp = load i32, ptr %i.jt, align 8, !tbaa !375 ; 2 uses
  %i.kq = load i32, ptr %i.ju, align 4, !tbaa !376
  %.not.i.a = icmp ult i32 %i.kp, %i.kq
  br i1 %.not.i.a, label %bb.bh, label %bb.bg, !prof !455

bb.bg:                                            ; preds = %.lr.ph.peel.next290
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr %.sroa.016.0.copyload, i32 %.sroa.217.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.bh:                                            ; preds = %.lr.ph.peel.next290
  %i.kr = zext i32 %i.kp to i64
  %i.ks = load ptr, ptr %30, align 8, !tbaa !54
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kr ; 2 uses
  store ptr %.sroa.016.0.copyload, ptr %i.kt, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i32 %.sroa.217.0.copyload, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.ku = load i32, ptr %i.jt, align 8, !tbaa !375
  %i.kv = add i32 %i.ku, 1
  store i32 %i.kv, ptr %i.jt, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.bh, %bb.bg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph.peel.next290, !llvm.loop !2736

.critedge:                                        ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit
  br i1 %i.gw, label %bb.bi, label %_ZN4llvm5APIntD2Ev.exit273

bb.bi:                                            ; preds = %.critedge
  %i.kw = load ptr, ptr %26, align 8, !tbaa !204  ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %_ZN4llvm5APIntD2Ev.exit273, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.kw) #41
  br label %_ZN4llvm5APIntD2Ev.exit273

_ZN4llvm5APIntD2Ev.exit273:                       ; preds = %.critedge, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.bm

.critedge185:                                     ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit261
  br i1 %i.ig, label %bb.bk, label %_ZN4llvm5APIntD2Ev.exit274

bb.bk:                                            ; preds = %.critedge185
  %i.ky = load ptr, ptr %28, align 8, !tbaa !204  ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %_ZN4llvm5APIntD2Ev.exit274, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.ky) #41
  br label %_ZN4llvm5APIntD2Ev.exit274

_ZN4llvm5APIntD2Ev.exit274:                       ; preds = %.critedge185, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit273, %_ZN4llvm5APIntD2Ev.exit274, %_ZN4llvm5APIntD2Ev.exit262, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.bd, %bb.ag, %bb.af, %bb.y
  %.sroa.18.1 = phi i32 [ %.fca.1.extract26, %bb.bd ], [ %.sroa.18.0, %bb.y ], [ %.fca.1.extract48, %bb.af ], [ %.fca.1.extract, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ], [ %.fca.1.extract42, %bb.ag ], [ 0, %_ZN4llvm5APIntD2Ev.exit ], [ 0, %_ZN4llvm5APIntD2Ev.exit262 ], [ 0, %_ZN4llvm5APIntD2Ev.exit274 ], [ 0, %_ZN4llvm5APIntD2Ev.exit273 ], [ 0, %bb.a ]
  %.sroa.0283.1 = phi ptr [ %.fca.0.extract25, %bb.bd ], [ %.sroa.0283.0, %bb.y ], [ %.fca.0.extract47, %bb.af ], [ %.fca.0.extract, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ], [ %.fca.0.extract41, %bb.ag ], [ null, %_ZN4llvm5APIntD2Ev.exit ], [ null, %_ZN4llvm5APIntD2Ev.exit262 ], [ null, %_ZN4llvm5APIntD2Ev.exit274 ], [ null, %_ZN4llvm5APIntD2Ev.exit273 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0283.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.18.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl(ptr %0, i16 %1, ptr %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %.not.i.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.b = add i16 %1, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split.i.i
  %i.d = zext nneg i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.j = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.k = insertvalue { i16, ptr } poison, i16 %1, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %2, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.d, %bb.c, %bb.b
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.m, ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.o, ptr %i.n, align 8
  %.not.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.r, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.s = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  %i.t = extractvalue { i64, i8 } %i.s, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.e, %bb.f
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.u = trunc i64 %.pn.i.i to i32
  %i.v = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %0, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.v, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.w = load i64, ptr %5, align 8, !tbaa !468    ; 5 uses
  br i1 %4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = sdiv i64 %.pn.i.i, 2
  %i.z = select i1 %3, i64 %i.y, i64 %.pn.i.i
  %i.aa = icmp sle i64 %i.w, %i.z
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ab = sdiv i64 %.pn.i.i, 2
  %i.ac = select i1 %3, i64 %i.ab, i64 %.pn.i.i
  %i.ad = sub nsw i64 0, %i.ac
  %.not = icmp sge i64 %i.w, %i.ad
  %i.ae = icmp slt i64 %i.w, 0
  %or.cond = and i1 %.not, %i.ae
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = sub nsw i64 0, %i.w
  store i64 %i.af, ptr %5, align 8, !tbaa !468
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.i, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ %i.aa, %bb.i ], [ false, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ false, %bb.h ], [ false, %bb.j ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering9hasAndNotENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !58 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !353
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i.i, -19     ; 2 uses
  %spec.select.i.i = icmp ult i16 %i.f, 197
  br i1 %spec.select.i.i, label %.thread, label %bb.b

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nonnull %1, i32 %2) #38
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 395
  %i.o = load i8, ptr %i.n, align 1, !tbaa !202, !range !50, !noundef !51
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

.thread:                                          ; preds = %.split
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 395
  %i.t = load i8, ptr %i.s, align 1, !tbaa !202, !range !50, !noundef !51
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %.thread12

bb.d:                                             ; preds = %.thread
  %spec.select.i.i.i = icmp samesign ult i16 %.sroa.0.0.copyload.i.i, 163
  br i1 %spec.select.i.i.i, label %bb.e, label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.w = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.x, align 16
  %i.y = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 128
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.f:                                             ; preds = %bb.c
  %i.z = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 398
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !205, !range !50, !noundef !51
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.split14, label %_ZNK4llvm3EVT14is128BitVectorEv.exit

.thread12:                                        ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 398
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !205, !range !50, !noundef !51
  %i.af = trunc nuw i8 %i.ae to i1
  %spec.select.i.i.i4 = icmp samesign ult i16 %i.f, 144
  %or.cond = select i1 %i.af, i1 %spec.select.i.i.i4, i1 false
  br i1 %or.cond, label %_ZNK4llvm3EVT13is64BitVectorEv.exit, label %_ZNK4llvm3EVT14is128BitVectorEv.exit

.split14:                                         ; preds = %bb.g
  %i.ag = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br i1 %i.ag, label %_ZNK4llvm3EVT14is128BitVectorEv.exit, label %bb.h

_ZNK4llvm3EVT13is64BitVectorEv.exit:              ; preds = %.thread12
  %i.ah = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ai = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ah
end_hunk_0
