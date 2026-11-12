Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTracking?download=true
inline.NumInlined: 12130
inline.NumDeleted: 4588
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL29unionWithMinMaxIntrinsicClampPKN4llvm13IntrinsicInstERNS_9KnownBitsE:bb.a
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN4llvm5APIntD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm13ConstantRangeD2Ev.exit, %bb.t, %bb.u
  %i.bs = load i32, ptr %i.k, align 8, !tbaa !37
  %i.bt = icmp ugt i32 %i.bs, 64
  br i1 %i.bt, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit7

bb.v:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bu = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN4llvm5APIntD2Ev.exit7, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #28
  br label %_ZN4llvm5APIntD2Ev.exit7

_ZN4llvm5APIntD2Ev.exit7:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.v, %bb.w
  %i.bw = load i32, ptr %i.e, align 8, !tbaa !37
  %i.bx = icmp ugt i32 %i.bw, 64
  br i1 %i.bx, label %bb.x, label %_ZN4llvm5APIntD2Ev.exit8

bb.x:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit7
  %i.by = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN4llvm5APIntD2Ev.exit8, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.by) #28
  br label %_ZN4llvm5APIntD2Ev.exit8

_ZN4llvm5APIntD2Ev.exit8:                         ; preds = %_ZN4llvm5APIntD2Ev.exit7, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit8, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @_ZN4llvm9KnownBits4smaxERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4llvm9KnownBits5mulhsERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4llvm9KnownBits5mulhuERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.llvm::KnownBits") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL38computeKnownBitsForHorizontalOperationPKN4llvm8OperatorERKNS_5APIntERKNS_13SimplifyQueryEjNS_12function_refIFNS_9KnownBitsERKSA_SC_EEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %4, ptr nofree noundef readonly byval(%"class.llvm::function_ref.456") align 8 captures(none) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"struct.llvm::KnownBits", align 8  ; 10 uses
  %7 = alloca %"struct.llvm::KnownBits", align 8  ; 10 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %9 = alloca %"struct.llvm::KnownBits", align 8  ; 10 uses
  %10 = alloca %"struct.llvm::KnownBits", align 8 ; 10 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %12 = alloca %"struct.llvm::KnownBits", align 8 ; 10 uses
  %13 = alloca %"struct.llvm::KnownBits", align 8 ; 10 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %15 = alloca %"struct.llvm::KnownBits", align 8 ; 10 uses
  %16 = alloca %"struct.llvm::KnownBits", align 8 ; 10 uses
  %17 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 14 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 14 uses
  %20 = alloca %"struct.llvm::KnownBits", align 8 ; 8 uses
  %21 = alloca %"struct.llvm::KnownBits", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store i32 1, ptr %i.a, align 8, !tbaa !37
  store i64 0, ptr %18, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.b = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i32 1, ptr %i.b, align 8, !tbaa !37
  store i64 0, ptr %19, align 8, !tbaa !39
  %i.c = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !21, !align !61
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.c, ptr noundef %i.e) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.f, 1
  %i.g = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.g, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #31
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %.fca.0.extract = extractvalue { i64, i8 } %i.f, 0
  %i.h = trunc i64 %.fca.0.extract to i32
  call void @_ZN4llvm35getHorizDemandedEltsForFirstOperandEjRKNS_5APIntERS0_S3_(i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %19) #27
  %.sroa.20.16.copyload = load ptr, ptr %5, align 8, !tbaa !170 ; 4 uses
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.25.16.copyload = load i64, ptr %.sroa.25.16..sroa_idx, align 8, !tbaa !42 ; 4 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %.split, label %_ZNK4llvm5APInt6isZeroEv.exit

.split:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.k = load i64, ptr %19, align 8, !tbaa !39
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.w

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.m = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %19) #29
  %i.n = icmp eq i32 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.w

bb.c:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = and i32 %i.p, 1073741824
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %1, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.e:                                             ; preds = %bb.c
  %i.t = and i32 %i.p, 268435455
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %1, i64 %i.v
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27, !noalias !1506
  %i.z = add i32 %4, 1                            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29, !noalias !1508 ; 2 uses
  %i.ac = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #29, !noalias !1508, !inline_history !1468 ; 2 uses
  %.not.not.i.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not.not.i.i24, label %bb.f, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25

bb.f:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1508, !nonnull !21, !align !61
  %i.ae = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ad, ptr noundef nonnull %i.ab) #27, !noalias !1508, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25: ; preds = %bb.f, %_ZNK4llvm4User10getOperandEj.exit
  %.1.i.i26 = phi i32 [ %i.ae, %bb.f ], [ %i.ac, %_ZNK4llvm4User10getOperandEj.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %.1.i.i26, ptr %i.af, align 8, !tbaa !37, !alias.scope !1507, !noalias !1506
  %i.ag = icmp ult i32 %.1.i.i26, 65
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25
  store i64 0, ptr %15, align 8, !tbaa !39, !alias.scope !1507, !noalias !1506
  store i32 %.1.i.i26, ptr %i.ai, align 8, !tbaa !37, !alias.scope !1507, !noalias !1506
  store i64 0, ptr %i.ah, align 8, !tbaa !39, !alias.scope !1507, !noalias !1506
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27

bb.h:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1506, !inline_history !1468
  store i32 %.1.i.i26, ptr %i.ai, align 8, !tbaa !37, !alias.scope !1507, !noalias !1506
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1506, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27: ; preds = %bb.g, %bb.h
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.z), !noalias !1506, !inline_history !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !1506
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27, !noalias !1506
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  call void @llvm.experimental.noalias.scope.decl(metadata !1510), !noalias !1506
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !37, !noalias !1511 ; 3 uses
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !37, !alias.scope !1512, !noalias !1506
  %i.al = icmp ult i32 %i.ak, 65
  br i1 %i.al, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %18) #27, !noalias !1506
  %.pr.i.i = load i32, ptr %i.aj, align 8, !tbaa !37, !alias.scope !1512, !noalias !1506 ; 2 uses
  %i.am = icmp ult i32 %.pr.i.i, 65
  br i1 %i.am, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27
  %.sink.i.i = phi ptr [ %18, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27 ], [ %17, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ]
  %i.an = phi i32 [ %i.ak, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27 ], [ %.pr.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ] ; 3 uses
  %.pre.i.i = load i64, ptr %.sink.i.i, align 8, !noalias !1506
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = shl i64 %.pre.i.i, 1
  %storemerge.i.i.i = select i1 %i.ao, i64 0, i64 %i.ap
  %i.aq = sub nsw i32 0, %i.an
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 -1, %i.as
  %i.au = icmp eq i32 %i.an, 0
  %22 = and i64 %i.at, %storemerge.i.i.i
  %23 = select i1 %i.au, i64 0, i64 %22, !prof !38
  store i64 %23, ptr %17, align 8, !tbaa !39, !alias.scope !1512, !noalias !1506
  br label %_ZNK4llvm5APIntlsEj.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 1) #27, !noalias !1506
  br label %_ZNK4llvm5APIntlsEj.exit

_ZNK4llvm5APIntlsEj.exit:                         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !29, !noalias !1514 ; 2 uses
  %i.aw = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #29, !noalias !1514, !inline_history !1468 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.not.i.i, label %bb.j, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i

bb.j:                                             ; preds = %_ZNK4llvm5APIntlsEj.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1514, !nonnull !21, !align !61
  %i.ay = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ax, ptr noundef nonnull %i.av) #27, !noalias !1514, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i: ; preds = %bb.j, %_ZNK4llvm5APIntlsEj.exit
  %.1.i.i = phi i32 [ %i.ay, %bb.j ], [ %i.aw, %_ZNK4llvm5APIntlsEj.exit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 %.1.i.i, ptr %i.az, align 8, !tbaa !37, !alias.scope !1513, !noalias !1506
  %i.ba = icmp ult i32 %.1.i.i, 65
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i
  store i64 0, ptr %16, align 8, !tbaa !39, !alias.scope !1513, !noalias !1506
  store i32 %.1.i.i, ptr %i.bc, align 8, !tbaa !37, !alias.scope !1513, !noalias !1506
  store i64 0, ptr %i.bb, align 8, !tbaa !39, !alias.scope !1513, !noalias !1506
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit

bb.l:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1506, !inline_history !1468
  store i32 %.1.i.i, ptr %i.bc, align 8, !tbaa !37, !alias.scope !1513, !noalias !1506
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1506, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit: ; preds = %bb.k, %bb.l
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.z), !noalias !1506, !inline_history !1468
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) #27, !inline_history !1475
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !37
  %i.be = icmp ugt i32 %i.bd, 64
  br i1 %i.be, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit.i22

bb.m:                                             ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4llvm5APIntD2Ev.exit.i22, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i22

_ZN4llvm5APIntD2Ev.exit.i22:                      ; preds = %bb.n, %bb.m, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit
  %i.bh = load i32, ptr %i.az, align 8, !tbaa !37
  %i.bi = icmp ugt i32 %i.bh, 64
  br i1 %i.bi, label %bb.o, label %_ZN4llvm9KnownBitsD2Ev.exit23

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i22
  %i.bj = load ptr, ptr %16, align 8, !tbaa !39   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4llvm9KnownBitsD2Ev.exit23, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit23

_ZN4llvm9KnownBitsD2Ev.exit23:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i22, %bb.o, %bb.p
  %i.bl = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.bm = icmp ugt i32 %i.bl, 64
  br i1 %i.bm, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit21

bb.q:                                             ; preds = %_ZN4llvm9KnownBitsD2Ev.exit23
  %i.bn = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN4llvm5APIntD2Ev.exit21, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #28
  br label %_ZN4llvm5APIntD2Ev.exit21

_ZN4llvm5APIntD2Ev.exit21:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit23, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1506
  %i.bp = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.bq = icmp ugt i32 %i.bp, 64
  br i1 %i.bq, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit.i19

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit21
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN4llvm5APIntD2Ev.exit.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.br) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i19

_ZN4llvm5APIntD2Ev.exit.i19:                      ; preds = %bb.t, %bb.s, %_ZN4llvm5APIntD2Ev.exit21
  %i.bt = load i32, ptr %i.af, align 8, !tbaa !37
  %i.bu = icmp ugt i32 %i.bt, 64
  br i1 %i.bu, label %bb.u, label %_ZN4llvm9KnownBitsD2Ev.exit20

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i19
  %i.bv = load ptr, ptr %15, align 8, !tbaa !39   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN4llvm9KnownBitsD2Ev.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit20

_ZN4llvm9KnownBitsD2Ev.exit20:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i19, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !1506
  br label %bb.cm

bb.w:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 65
  br i1 %i.by, label %.split113, label %_ZNK4llvm5APInt6isZeroEv.exit9

.split113:                                        ; preds = %bb.w
  %i.bz = load i64, ptr %18, align 8, !tbaa !39
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.ar

_ZNK4llvm5APInt6isZeroEv.exit9:                   ; preds = %bb.w
  %i.cb = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %18) #29
  %i.cc = icmp eq i32 %i.cb, %i.bx
  br i1 %i.cc, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %.split113, %_ZNK4llvm5APInt6isZeroEv.exit9
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = and i32 %i.ce, 1073741824
  %.not.i.i10 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i10, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit11

bb.z:                                             ; preds = %bb.x
  %i.ci = and i32 %i.ce, 268435455
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ck
  br label %_ZNK4llvm4User10getOperandEj.exit11

_ZNK4llvm4User10getOperandEj.exit11:              ; preds = %bb.y, %bb.z
  %i.cm = phi ptr [ %i.ch, %bb.y ], [ %i.cl, %bb.z ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !1515
  %i.cp = add i32 %4, 1                           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29, !noalias !1517 ; 2 uses
  %i.cs = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cr) #29, !noalias !1517, !inline_history !1468 ; 2 uses
  %.not.not.i.i45 = icmp eq i32 %i.cs, 0
  br i1 %.not.not.i.i45, label %bb.aa, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46

bb.aa:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit11
  %i.ct = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1517, !nonnull !21, !align !61
  %i.cu = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ct, ptr noundef nonnull %i.cr) #27, !noalias !1517, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46: ; preds = %bb.aa, %_ZNK4llvm4User10getOperandEj.exit11
  %.1.i.i47 = phi i32 [ %i.cu, %bb.aa ], [ %i.cs, %_ZNK4llvm4User10getOperandEj.exit11 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 %.1.i.i47, ptr %i.cv, align 8, !tbaa !37, !alias.scope !1516, !noalias !1515
  %i.cw = icmp ult i32 %.1.i.i47, 65
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46
  store i64 0, ptr %12, align 8, !tbaa !39, !alias.scope !1516, !noalias !1515
  store i32 %.1.i.i47, ptr %i.cy, align 8, !tbaa !37, !alias.scope !1516, !noalias !1515
  store i64 0, ptr %i.cx, align 8, !tbaa !39, !alias.scope !1516, !noalias !1515
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48

bb.ac:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1515, !inline_history !1468
  store i32 %.1.i.i47, ptr %i.cy, align 8, !tbaa !37, !alias.scope !1516, !noalias !1515
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.cx, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1515, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48: ; preds = %bb.ab, %bb.ac
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.cp), !noalias !1515, !inline_history !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !1515
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519), !noalias !1515
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.da = load i32, ptr %i.b, align 8, !tbaa !37, !noalias !1520 ; 3 uses
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !37, !alias.scope !1521, !noalias !1515
  %i.db = icmp ult i32 %i.da, 65
  br i1 %i.db, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i37

_ZN4llvm5APIntC2ERKS0_.exit.i.i37:                ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %19) #27, !noalias !1515
  %.pr.i.i38 = load i32, ptr %i.cz, align 8, !tbaa !37, !alias.scope !1521, !noalias !1515 ; 2 uses
  %i.dc = icmp ult i32 %.pr.i.i38, 65
  br i1 %i.dc, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39, label %bb.ad

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i37, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48
  %.sink.i.i40 = phi ptr [ %19, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48 ], [ %14, %_ZN4llvm5APIntC2ERKS0_.exit.i.i37 ]
  %i.dd = phi i32 [ %i.da, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48 ], [ %.pr.i.i38, %_ZN4llvm5APIntC2ERKS0_.exit.i.i37 ] ; 3 uses
  %.pre.i.i41 = load i64, ptr %.sink.i.i40, align 8, !noalias !1515
  %i.de = icmp eq i32 %i.dd, 1
  %i.df = shl i64 %.pre.i.i41, 1
  %storemerge.i.i.i42 = select i1 %i.de, i64 0, i64 %i.df
  %i.dg = sub nsw i32 0, %i.dd
  %i.dh = and i32 %i.dg, 63
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 -1, %i.di
  %i.dk = icmp eq i32 %i.dd, 0
  %24 = and i64 %i.dj, %storemerge.i.i.i42
  %25 = select i1 %i.dk, i64 0, i64 %24, !prof !38
  store i64 %25, ptr %14, align 8, !tbaa !39, !alias.scope !1521, !noalias !1515
  br label %_ZNK4llvm5APIntlsEj.exit44

bb.ad:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i37
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #27, !noalias !1515
  br label %_ZNK4llvm5APIntlsEj.exit44

_ZNK4llvm5APIntlsEj.exit44:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !29, !noalias !1523 ; 2 uses
  %i.dm = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dl) #29, !noalias !1523, !inline_history !1468 ; 2 uses
  %.not.not.i.i33 = icmp eq i32 %i.dm, 0
  br i1 %.not.not.i.i33, label %bb.ae, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34

bb.ae:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit44
  %i.dn = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1523, !nonnull !21, !align !61
  %i.do = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.dn, ptr noundef nonnull %i.dl) #27, !noalias !1523, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34: ; preds = %bb.ae, %_ZNK4llvm5APIntlsEj.exit44
  %.1.i.i35 = phi i32 [ %i.do, %bb.ae ], [ %i.dm, %_ZNK4llvm5APIntlsEj.exit44 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 %.1.i.i35, ptr %i.dp, align 8, !tbaa !37, !alias.scope !1522, !noalias !1515
  %i.dq = icmp ult i32 %.1.i.i35, 65
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34
  store i64 0, ptr %13, align 8, !tbaa !39, !alias.scope !1522, !noalias !1515
  store i32 %.1.i.i35, ptr %i.ds, align 8, !tbaa !37, !alias.scope !1522, !noalias !1515
  store i64 0, ptr %i.dr, align 8, !tbaa !39, !alias.scope !1522, !noalias !1515
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36

bb.ag:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1515, !inline_history !1468
  store i32 %.1.i.i35, ptr %i.ds, align 8, !tbaa !37, !alias.scope !1522, !noalias !1515
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.dr, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1515, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36: ; preds = %bb.af, %bb.ag
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.cp), !noalias !1515, !inline_history !1468
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13) #27, !inline_history !1475
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !37
  %i.du = icmp ugt i32 %i.dt, 64
  br i1 %i.du, label %bb.ah, label %_ZN4llvm5APIntD2Ev.exit.i31

bb.ah:                                            ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !39 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN4llvm5APIntD2Ev.exit.i31, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i31

_ZN4llvm5APIntD2Ev.exit.i31:                      ; preds = %bb.ai, %bb.ah, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36
  %i.dx = load i32, ptr %i.dp, align 8, !tbaa !37
  %i.dy = icmp ugt i32 %i.dx, 64
  br i1 %i.dy, label %bb.aj, label %_ZN4llvm9KnownBitsD2Ev.exit32

bb.aj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i31
  %i.dz = load ptr, ptr %13, align 8, !tbaa !39   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_ZN4llvm9KnownBitsD2Ev.exit32, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.dz) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit32

_ZN4llvm9KnownBitsD2Ev.exit32:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i31, %bb.aj, %bb.ak
  %i.eb = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.ec = icmp ugt i32 %i.eb, 64
  br i1 %i.ec, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit30

bb.al:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit32
  %i.ed = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZN4llvm5APIntD2Ev.exit30, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.ed) #28
  br label %_ZN4llvm5APIntD2Ev.exit30

_ZN4llvm5APIntD2Ev.exit30:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit32, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !1515
  %i.ef = load i32, ptr %i.cy, align 8, !tbaa !37
  %i.eg = icmp ugt i32 %i.ef, 64
  br i1 %i.eg, label %bb.an, label %_ZN4llvm5APIntD2Ev.exit.i28

bb.an:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit30
  %i.eh = load ptr, ptr %i.cx, align 8, !tbaa !39 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN4llvm5APIntD2Ev.exit.i28, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i28

_ZN4llvm5APIntD2Ev.exit.i28:                      ; preds = %bb.ao, %bb.an, %_ZN4llvm5APIntD2Ev.exit30
  %i.ej = load i32, ptr %i.cv, align 8, !tbaa !37
  %i.ek = icmp ugt i32 %i.ej, 64
  br i1 %i.ek, label %bb.ap, label %_ZN4llvm9KnownBitsD2Ev.exit29

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i28
  %i.el = load ptr, ptr %12, align 8, !tbaa !39   ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN4llvm9KnownBitsD2Ev.exit29, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.el) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit29

_ZN4llvm9KnownBitsD2Ev.exit29:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i28, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !1515
  br label %bb.cm

bb.ar:                                            ; preds = %.split113, %_ZNK4llvm5APInt6isZeroEv.exit9
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = and i32 %i.eo, 1073741824
  %.not.i.i12 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i12, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds i8, ptr %1, i64 -8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit13

bb.at:                                            ; preds = %bb.ar
  %i.es = and i32 %i.eo, 268435455
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds [32 x i8], ptr %1, i64 %i.eu
  br label %_ZNK4llvm4User10getOperandEj.exit13

_ZNK4llvm4User10getOperandEj.exit13:              ; preds = %bb.as, %bb.at
  %i.ew = phi ptr [ %i.er, %bb.as ], [ %i.ev, %bb.at ]
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !1524
  %i.ey = add i32 %4, 1                           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !29, !noalias !1526 ; 2 uses
  %i.fb = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fa) #29, !noalias !1526, !inline_history !1468 ; 2 uses
  %.not.not.i.i66 = icmp eq i32 %i.fb, 0
  br i1 %.not.not.i.i66, label %bb.au, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67

bb.au:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit13
  %i.fc = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1526, !nonnull !21, !align !61
  %i.fd = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fc, ptr noundef nonnull %i.fa) #27, !noalias !1526, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67: ; preds = %bb.au, %_ZNK4llvm4User10getOperandEj.exit13
  %.1.i.i68 = phi i32 [ %i.fd, %bb.au ], [ %i.fb, %_ZNK4llvm4User10getOperandEj.exit13 ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %.1.i.i68, ptr %i.fe, align 8, !tbaa !37, !alias.scope !1525, !noalias !1524
  %i.ff = icmp ult i32 %.1.i.i68, 65
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  br i1 %i.ff, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67
  store i64 0, ptr %9, align 8, !tbaa !39, !alias.scope !1525, !noalias !1524
  store i32 %.1.i.i68, ptr %i.fh, align 8, !tbaa !37, !alias.scope !1525, !noalias !1524
  store i64 0, ptr %i.fg, align 8, !tbaa !39, !alias.scope !1525, !noalias !1524
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69

bb.aw:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1524, !inline_history !1468
  store i32 %.1.i.i68, ptr %i.fh, align 8, !tbaa !37, !alias.scope !1525, !noalias !1524
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.fg, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1524, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69: ; preds = %bb.av, %bb.aw
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.ex, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.ey), !noalias !1524, !inline_history !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !1524
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !1524
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528), !noalias !1524
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fj = load i32, ptr %i.a, align 8, !tbaa !37, !noalias !1529 ; 3 uses
  store i32 %i.fj, ptr %i.fi, align 8, !tbaa !37, !alias.scope !1530, !noalias !1524
  %i.fk = icmp ult i32 %i.fj, 65
  br i1 %i.fk, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i58

_ZN4llvm5APIntC2ERKS0_.exit.i.i58:                ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %18) #27, !noalias !1524
  %.pr.i.i59 = load i32, ptr %i.fi, align 8, !tbaa !37, !alias.scope !1530, !noalias !1524 ; 2 uses
  %i.fl = icmp ult i32 %.pr.i.i59, 65
  br i1 %i.fl, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60, label %bb.ax

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i58, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69
  %.sink.i.i61 = phi ptr [ %18, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69 ], [ %11, %_ZN4llvm5APIntC2ERKS0_.exit.i.i58 ]
  %i.fm = phi i32 [ %i.fj, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69 ], [ %.pr.i.i59, %_ZN4llvm5APIntC2ERKS0_.exit.i.i58 ] ; 3 uses
  %.pre.i.i62 = load i64, ptr %.sink.i.i61, align 8, !noalias !1524
  %i.fn = icmp eq i32 %i.fm, 1
  %i.fo = shl i64 %.pre.i.i62, 1
  %storemerge.i.i.i63 = select i1 %i.fn, i64 0, i64 %i.fo
  %i.fp = sub nsw i32 0, %i.fm
  %i.fq = and i32 %i.fp, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = lshr i64 -1, %i.fr
  %i.ft = icmp eq i32 %i.fm, 0
  %26 = and i64 %i.fs, %storemerge.i.i.i63
  %27 = select i1 %i.ft, i64 0, i64 %26, !prof !38
  store i64 %27, ptr %11, align 8, !tbaa !39, !alias.scope !1530, !noalias !1524
  br label %_ZNK4llvm5APIntlsEj.exit65

bb.ax:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i58
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %11, i32 noundef 1) #27, !noalias !1524
  br label %_ZNK4llvm5APIntlsEj.exit65

_ZNK4llvm5APIntlsEj.exit65:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.fu = load ptr, ptr %i.ez, align 8, !tbaa !29, !noalias !1532 ; 2 uses
  %i.fv = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fu) #29, !noalias !1532, !inline_history !1468 ; 2 uses
  %.not.not.i.i54 = icmp eq i32 %i.fv, 0
  br i1 %.not.not.i.i54, label %bb.ay, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55

bb.ay:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit65
  %i.fw = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1532, !nonnull !21, !align !61
  %i.fx = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fw, ptr noundef nonnull %i.fu) #27, !noalias !1532, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55: ; preds = %bb.ay, %_ZNK4llvm5APIntlsEj.exit65
  %.1.i.i56 = phi i32 [ %i.fx, %bb.ay ], [ %i.fv, %_ZNK4llvm5APIntlsEj.exit65 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 %.1.i.i56, ptr %i.fy, align 8, !tbaa !37, !alias.scope !1531, !noalias !1524
  %i.fz = icmp ult i32 %.1.i.i56, 65
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  br i1 %i.fz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55
  store i64 0, ptr %10, align 8, !tbaa !39, !alias.scope !1531, !noalias !1524
  store i32 %.1.i.i56, ptr %i.gb, align 8, !tbaa !37, !alias.scope !1531, !noalias !1524
  store i64 0, ptr %i.ga, align 8, !tbaa !39, !alias.scope !1531, !noalias !1524
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57

bb.ba:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1524, !inline_history !1468
  store i32 %.1.i.i56, ptr %i.gb, align 8, !tbaa !37, !alias.scope !1531, !noalias !1524
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.ga, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1524, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57: ; preds = %bb.az, %bb.ba
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.ex, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.ey), !noalias !1524, !inline_history !1468
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %20, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #27, !inline_history !1475
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !37
  %i.gd = icmp ugt i32 %i.gc, 64
  br i1 %i.gd, label %bb.bb, label %_ZN4llvm5APIntD2Ev.exit.i52

bb.bb:                                            ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %_ZN4llvm5APIntD2Ev.exit.i52, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.ge) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i52

_ZN4llvm5APIntD2Ev.exit.i52:                      ; preds = %bb.bc, %bb.bb, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57
  %i.gg = load i32, ptr %i.fy, align 8, !tbaa !37
  %i.gh = icmp ugt i32 %i.gg, 64
  br i1 %i.gh, label %bb.bd, label %_ZN4llvm9KnownBitsD2Ev.exit53

bb.bd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i52
  %i.gi = load ptr, ptr %10, align 8, !tbaa !39   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_ZN4llvm9KnownBitsD2Ev.exit53, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.gi) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit53

_ZN4llvm9KnownBitsD2Ev.exit53:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i52, %bb.bd, %bb.be
  %i.gk = load i32, ptr %i.fi, align 8, !tbaa !37
  %i.gl = icmp ugt i32 %i.gk, 64
  br i1 %i.gl, label %bb.bf, label %_ZN4llvm5APIntD2Ev.exit51

bb.bf:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit53
  %i.gm = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN4llvm5APIntD2Ev.exit51, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #28
  br label %_ZN4llvm5APIntD2Ev.exit51

_ZN4llvm5APIntD2Ev.exit51:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit53, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !1524
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !1524
  %i.go = load i32, ptr %i.fh, align 8, !tbaa !37
  %i.gp = icmp ugt i32 %i.go, 64
  br i1 %i.gp, label %bb.bh, label %_ZN4llvm5APIntD2Ev.exit.i49

bb.bh:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit51
  %i.gq = load ptr, ptr %i.fg, align 8, !tbaa !39 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN4llvm5APIntD2Ev.exit.i49, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.gq) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i49

_ZN4llvm5APIntD2Ev.exit.i49:                      ; preds = %bb.bi, %bb.bh, %_ZN4llvm5APIntD2Ev.exit51
  %i.gs = load i32, ptr %i.fe, align 8, !tbaa !37
  %i.gt = icmp ugt i32 %i.gs, 64
  br i1 %i.gt, label %bb.bj, label %_ZN4llvm9KnownBitsD2Ev.exit50

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i49
  %i.gu = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN4llvm9KnownBitsD2Ev.exit50, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.gu) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit50

_ZN4llvm9KnownBitsD2Ev.exit50:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i49, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !1524
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.gw = load i32, ptr %i.en, align 4            ; 2 uses
  %i.gx = and i32 %i.gw, 1073741824
  %.not.i.i14 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i14, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit50
  %i.gy = getelementptr inbounds i8, ptr %1, i64 -8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit15

bb.bm:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit50
  %i.ha = and i32 %i.gw, 268435455
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds [32 x i8], ptr %1, i64 %i.hc
  br label %_ZNK4llvm4User10getOperandEj.exit15

_ZNK4llvm4User10getOperandEj.exit15:              ; preds = %bb.bl, %bb.bm
  %i.he = phi ptr [ %i.gz, %bb.bl ], [ %i.hd, %bb.bm ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1533
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !29, !noalias !1535 ; 2 uses
  %i.hj = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hi) #29, !noalias !1535, !inline_history !1468 ; 2 uses
  %.not.not.i.i87 = icmp eq i32 %i.hj, 0
  br i1 %.not.not.i.i87, label %bb.bn, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88

bb.bn:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit15
  %i.hk = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1535, !nonnull !21, !align !61
  %i.hl = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.hk, ptr noundef nonnull %i.hi) #27, !noalias !1535, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88: ; preds = %bb.bn, %_ZNK4llvm4User10getOperandEj.exit15
  %.1.i.i89 = phi i32 [ %i.hl, %bb.bn ], [ %i.hj, %_ZNK4llvm4User10getOperandEj.exit15 ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %.1.i.i89, ptr %i.hm, align 8, !tbaa !37, !alias.scope !1534, !noalias !1533
  %i.hn = icmp ult i32 %.1.i.i89, 65
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  br i1 %i.hn, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88
  store i64 0, ptr %6, align 8, !tbaa !39, !alias.scope !1534, !noalias !1533
  store i32 %.1.i.i89, ptr %i.hp, align 8, !tbaa !37, !alias.scope !1534, !noalias !1533
  store i64 0, ptr %i.ho, align 8, !tbaa !39, !alias.scope !1534, !noalias !1533
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90

bb.bp:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1533, !inline_history !1468
  store i32 %.1.i.i89, ptr %i.hp, align 8, !tbaa !37, !alias.scope !1534, !noalias !1533
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.ho, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1533, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90: ; preds = %bb.bo, %bb.bp
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.hg, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.ey), !noalias !1533, !inline_history !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1533
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !1533
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537), !noalias !1533
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.hr = load i32, ptr %i.b, align 8, !tbaa !37, !noalias !1538 ; 3 uses
  store i32 %i.hr, ptr %i.hq, align 8, !tbaa !37, !alias.scope !1539, !noalias !1533
  %i.hs = icmp ult i32 %i.hr, 65
  br i1 %i.hs, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i79

_ZN4llvm5APIntC2ERKS0_.exit.i.i79:                ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %19) #27, !noalias !1533
  %.pr.i.i80 = load i32, ptr %i.hq, align 8, !tbaa !37, !alias.scope !1539, !noalias !1533 ; 2 uses
  %i.ht = icmp ult i32 %.pr.i.i80, 65
  br i1 %i.ht, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81, label %bb.bq

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i79, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90
  %.sink.i.i82 = phi ptr [ %19, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90 ], [ %8, %_ZN4llvm5APIntC2ERKS0_.exit.i.i79 ]
  %i.hu = phi i32 [ %i.hr, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90 ], [ %.pr.i.i80, %_ZN4llvm5APIntC2ERKS0_.exit.i.i79 ] ; 3 uses
  %.pre.i.i83 = load i64, ptr %.sink.i.i82, align 8, !noalias !1533
  %i.hv = icmp eq i32 %i.hu, 1
  %i.hw = shl i64 %.pre.i.i83, 1
  %storemerge.i.i.i84 = select i1 %i.hv, i64 0, i64 %i.hw
  %i.hx = sub nsw i32 0, %i.hu
  %i.hy = and i32 %i.hx, 63
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = lshr i64 -1, %i.hz
  %i.ib = icmp eq i32 %i.hu, 0
  %28 = and i64 %i.ia, %storemerge.i.i.i84
  %29 = select i1 %i.ib, i64 0, i64 %28, !prof !38
  store i64 %29, ptr %8, align 8, !tbaa !39, !alias.scope !1539, !noalias !1533
  br label %_ZNK4llvm5APIntlsEj.exit86

bb.bq:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i79
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 1) #27, !noalias !1533
  br label %_ZNK4llvm5APIntlsEj.exit86

_ZNK4llvm5APIntlsEj.exit86:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %i.ic = load ptr, ptr %i.hh, align 8, !tbaa !29, !noalias !1541 ; 2 uses
  %i.id = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ic) #29, !noalias !1541, !inline_history !1468 ; 2 uses
  %.not.not.i.i75 = icmp eq i32 %i.id, 0
  br i1 %.not.not.i.i75, label %bb.br, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76

bb.br:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit86
  %i.ie = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1541, !nonnull !21, !align !61
  %i.if = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ie, ptr noundef nonnull %i.ic) #27, !noalias !1541, !inline_history !1468
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76: ; preds = %bb.br, %_ZNK4llvm5APIntlsEj.exit86
  %.1.i.i77 = phi i32 [ %i.if, %bb.br ], [ %i.id, %_ZNK4llvm5APIntlsEj.exit86 ] ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %.1.i.i77, ptr %i.ig, align 8, !tbaa !37, !alias.scope !1540, !noalias !1533
  %i.ih = icmp ult i32 %.1.i.i77, 65
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  br i1 %i.ih, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76
  store i64 0, ptr %7, align 8, !tbaa !39, !alias.scope !1540, !noalias !1533
  store i32 %.1.i.i77, ptr %i.ij, align 8, !tbaa !37, !alias.scope !1540, !noalias !1533
  store i64 0, ptr %i.ii, align 8, !tbaa !39, !alias.scope !1540, !noalias !1533
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78

bb.bt:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1533, !inline_history !1468
  store i32 %.1.i.i77, ptr %i.ij, align 8, !tbaa !37, !alias.scope !1540, !noalias !1533
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.ii, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1533, !inline_history !1468
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78: ; preds = %bb.bs, %bb.bt
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.hg, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.ey), !noalias !1533, !inline_history !1468
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %21, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #27, !inline_history !1475
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !37
  %i.il = icmp ugt i32 %i.ik, 64
  br i1 %i.il, label %bb.bu, label %_ZN4llvm5APIntD2Ev.exit.i73

bb.bu:                                            ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !39 ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %_ZN4llvm5APIntD2Ev.exit.i73, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.im) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i73

_ZN4llvm5APIntD2Ev.exit.i73:                      ; preds = %bb.bv, %bb.bu, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78
  %i.io = load i32, ptr %i.ig, align 8, !tbaa !37
  %i.ip = icmp ugt i32 %i.io, 64
  br i1 %i.ip, label %bb.bw, label %_ZN4llvm9KnownBitsD2Ev.exit74

bb.bw:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i73
  %i.iq = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZN4llvm9KnownBitsD2Ev.exit74, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.iq) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit74

_ZN4llvm9KnownBitsD2Ev.exit74:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i73, %bb.bw, %bb.bx
  %i.is = load i32, ptr %i.hq, align 8, !tbaa !37
  %i.it = icmp ugt i32 %i.is, 64
  br i1 %i.it, label %bb.by, label %_ZN4llvm5APIntD2Ev.exit72

bb.by:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit74
  %i.iu = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN4llvm5APIntD2Ev.exit72, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.iu) #28
  br label %_ZN4llvm5APIntD2Ev.exit72

_ZN4llvm5APIntD2Ev.exit72:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit74, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1533
  %i.iw = load i32, ptr %i.hp, align 8, !tbaa !37
  %i.ix = icmp ugt i32 %i.iw, 64
  br i1 %i.ix, label %bb.ca, label %_ZN4llvm5APIntD2Ev.exit.i70

bb.ca:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit72
  %i.iy = load ptr, ptr %i.ho, align 8, !tbaa !39 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZN4llvm5APIntD2Ev.exit.i70, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.iy) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i70

_ZN4llvm5APIntD2Ev.exit.i70:                      ; preds = %bb.cb, %bb.ca, %_ZN4llvm5APIntD2Ev.exit72
  %i.ja = load i32, ptr %i.hm, align 8, !tbaa !37
  %i.jb = icmp ugt i32 %i.ja, 64
  br i1 %i.jb, label %bb.cc, label %_ZN4llvm9KnownBitsD2Ev.exit71

bb.cc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i70
  %i.jc = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %_ZN4llvm9KnownBitsD2Ev.exit71, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.jc) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit71

_ZN4llvm9KnownBitsD2Ev.exit71:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i70, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1533
  call void @_ZNK4llvm9KnownBits13intersectWithERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21)
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !37
  %i.jg = icmp ugt i32 %i.jf, 64
  br i1 %i.jg, label %bb.ce, label %_ZN4llvm5APIntD2Ev.exit.i

bb.ce:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit71
  %i.jh = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !39 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdaPv(ptr noundef nonnull %i.ji) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.cf, %bb.ce, %_ZN4llvm9KnownBitsD2Ev.exit71
  %i.jk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !37
  %i.jm = icmp ugt i32 %i.jl, 64
  br i1 %i.jm, label %bb.cg, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.cg:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.jn = load ptr, ptr %21, align 8, !tbaa !39   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.jn) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %i.jp = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !37
  %i.jr = icmp ugt i32 %i.jq, 64
  br i1 %i.jr, label %bb.ci, label %_ZN4llvm5APIntD2Ev.exit.i16

bb.ci:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.js = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !39 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZN4llvm5APIntD2Ev.exit.i16, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdaPv(ptr noundef nonnull %i.jt) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i16

_ZN4llvm5APIntD2Ev.exit.i16:                      ; preds = %bb.cj, %bb.ci, %_ZN4llvm9KnownBitsD2Ev.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !37
  %i.jx = icmp ugt i32 %i.jw, 64
  br i1 %i.jx, label %bb.ck, label %_ZN4llvm9KnownBitsD2Ev.exit17

bb.ck:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i16
  %i.jy = load ptr, ptr %20, align 8, !tbaa !39   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN4llvm9KnownBitsD2Ev.exit17, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZdaPv(ptr noundef nonnull %i.jy) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit17

_ZN4llvm9KnownBitsD2Ev.exit17:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i16, %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit17, %_ZN4llvm9KnownBitsD2Ev.exit29, %_ZN4llvm9KnownBitsD2Ev.exit20
  %i.ka = load i32, ptr %i.b, align 8, !tbaa !37
  %i.kb = icmp ugt i32 %i.ka, 64
  br i1 %i.kb, label %bb.cn, label %_ZN4llvm5APIntD2Ev.exit

bb.cn:                                            ; preds = %bb.cm
  %i.kc = load ptr, ptr %19, align 8, !tbaa !39   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %_ZN4llvm5APIntD2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.kc) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.ke = load i32, ptr %i.a, align 8, !tbaa !37
  %i.kf = icmp ugt i32 %i.ke, 64
end_hunk_0
