Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTracking?download=true
inline.NumInlined: 12130
inline.NumDeleted: 4588
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL29unionWithMinMaxIntrinsicClampPKN4llvm13IntrinsicInstERNS_9KnownBitsE:bb.a
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !37
  %i.bp = icmp ugt i32 %i.bo, 64
  br i1 %i.bp, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit

bb.t:                                             ; preds = %_ZN4llvm13ConstantRangeD2Ev.exit
  %i.bq = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27, !noalias !1494
  %i.z = add i32 %4, 1                            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29, !noalias !1496 ; 2 uses
  %i.ac = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #29, !noalias !1496, !inline_history !1456 ; 2 uses
  %.not.not.i.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not.not.i.i24, label %bb.f, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25

bb.f:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1496, !nonnull !21, !align !61
  %i.ae = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ad, ptr noundef nonnull %i.ab) #27, !noalias !1496, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25: ; preds = %bb.f, %_ZNK4llvm4User10getOperandEj.exit
  %.1.i.i26 = phi i32 [ %i.ae, %bb.f ], [ %i.ac, %_ZNK4llvm4User10getOperandEj.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %.1.i.i26, ptr %i.af, align 8, !tbaa !37, !alias.scope !1495, !noalias !1494
  %i.ag = icmp ult i32 %.1.i.i26, 65
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25
  store i64 0, ptr %15, align 8, !tbaa !39, !alias.scope !1495, !noalias !1494
  store i32 %.1.i.i26, ptr %i.ai, align 8, !tbaa !37, !alias.scope !1495, !noalias !1494
  store i64 0, ptr %i.ah, align 8, !tbaa !39, !alias.scope !1495, !noalias !1494
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27

bb.h:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i25
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1494, !inline_history !1456
  store i32 %.1.i.i26, ptr %i.ai, align 8, !tbaa !37, !alias.scope !1495, !noalias !1494
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1494, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27: ; preds = %bb.g, %bb.h
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.z), !noalias !1494, !inline_history !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !1494
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27, !noalias !1494
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1498), !noalias !1494
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !37, !noalias !1499 ; 3 uses
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !37, !alias.scope !1500, !noalias !1494
  %i.al = icmp ult i32 %i.ak, 65
  br i1 %i.al, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %18) #27, !noalias !1494
  %.pr.i.i = load i32, ptr %i.aj, align 8, !tbaa !37, !alias.scope !1500, !noalias !1494 ; 2 uses
  %i.am = icmp ult i32 %.pr.i.i, 65
  br i1 %i.am, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27
  %.sink.i.i = phi ptr [ %18, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27 ], [ %17, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ]
  %i.an = phi i32 [ %i.ak, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit27 ], [ %.pr.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ] ; 3 uses
  %.pre.i.i = load i64, ptr %.sink.i.i, align 8, !noalias !1494
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = shl i64 %.pre.i.i, 1
  %i.aq = sub nsw i32 0, %i.an
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 -1, %i.as
  %i.au = icmp eq i32 %i.an, 0
  %.04.i.i.i.i = select i1 %i.au, i64 0, i64 %i.at, !prof !38
  %i.av = and i64 %.04.i.i.i.i, %i.ap
  %22 = select i1 %i.ao, i64 0, i64 %i.av
  store i64 %22, ptr %17, align 8, !tbaa !39, !alias.scope !1500, !noalias !1494
  br label %_ZNK4llvm5APIntlsEj.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 1) #27, !noalias !1494
  br label %_ZNK4llvm5APIntlsEj.exit

_ZNK4llvm5APIntlsEj.exit:                         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !29, !noalias !1502 ; 2 uses
  %i.ax = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #29, !noalias !1502, !inline_history !1456 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.not.i.i, label %bb.j, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i

bb.j:                                             ; preds = %_ZNK4llvm5APIntlsEj.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1502, !nonnull !21, !align !61
  %i.az = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ay, ptr noundef nonnull %i.aw) #27, !noalias !1502, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i: ; preds = %bb.j, %_ZNK4llvm5APIntlsEj.exit
  %.1.i.i = phi i32 [ %i.az, %bb.j ], [ %i.ax, %_ZNK4llvm5APIntlsEj.exit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 %.1.i.i, ptr %i.ba, align 8, !tbaa !37, !alias.scope !1501, !noalias !1494
  %i.bb = icmp ult i32 %.1.i.i, 65
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i
  store i64 0, ptr %16, align 8, !tbaa !39, !alias.scope !1501, !noalias !1494
  store i32 %.1.i.i, ptr %i.bd, align 8, !tbaa !37, !alias.scope !1501, !noalias !1494
  store i64 0, ptr %i.bc, align 8, !tbaa !39, !alias.scope !1501, !noalias !1494
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit

bb.l:                                             ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1494, !inline_history !1456
  store i32 %.1.i.i, ptr %i.bd, align 8, !tbaa !37, !alias.scope !1501, !noalias !1494
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1494, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit: ; preds = %bb.k, %bb.l
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.z), !noalias !1494, !inline_history !1456
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) #27, !inline_history !1463
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !37
  %i.bf = icmp ugt i32 %i.be, 64
  br i1 %i.bf, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit.i22

bb.m:                                             ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !39 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4llvm5APIntD2Ev.exit.i22, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i22

_ZN4llvm5APIntD2Ev.exit.i22:                      ; preds = %bb.n, %bb.m, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit
  %i.bi = load i32, ptr %i.ba, align 8, !tbaa !37
  %i.bj = icmp ugt i32 %i.bi, 64
  br i1 %i.bj, label %bb.o, label %_ZN4llvm9KnownBitsD2Ev.exit23

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i22
  %i.bk = load ptr, ptr %16, align 8, !tbaa !39   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN4llvm9KnownBitsD2Ev.exit23, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit23

_ZN4llvm9KnownBitsD2Ev.exit23:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i22, %bb.o, %bb.p
  %i.bm = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.bn = icmp ugt i32 %i.bm, 64
  br i1 %i.bn, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit21

bb.q:                                             ; preds = %_ZN4llvm9KnownBitsD2Ev.exit23
  %i.bo = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN4llvm5APIntD2Ev.exit21, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #28
  br label %_ZN4llvm5APIntD2Ev.exit21

_ZN4llvm5APIntD2Ev.exit21:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit23, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !1494
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1494
  %i.bq = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.br = icmp ugt i32 %i.bq, 64
  br i1 %i.br, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit.i19

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit21
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN4llvm5APIntD2Ev.exit.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i19

_ZN4llvm5APIntD2Ev.exit.i19:                      ; preds = %bb.t, %bb.s, %_ZN4llvm5APIntD2Ev.exit21
  %i.bu = load i32, ptr %i.af, align 8, !tbaa !37
  %i.bv = icmp ugt i32 %i.bu, 64
  br i1 %i.bv, label %bb.u, label %_ZN4llvm9KnownBitsD2Ev.exit20

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i19
  %i.bw = load ptr, ptr %15, align 8, !tbaa !39   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN4llvm9KnownBitsD2Ev.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit20

_ZN4llvm9KnownBitsD2Ev.exit20:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i19, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27, !noalias !1494
  br label %bb.cm

bb.w:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.by = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 65
  br i1 %i.bz, label %.split113, label %_ZNK4llvm5APInt6isZeroEv.exit9

.split113:                                        ; preds = %bb.w
  %i.ca = load i64, ptr %18, align 8, !tbaa !39
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %bb.ar

_ZNK4llvm5APInt6isZeroEv.exit9:                   ; preds = %bb.w
  %i.cc = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %18) #29
  %i.cd = icmp eq i32 %i.cc, %i.by
  br i1 %i.cd, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %.split113, %_ZNK4llvm5APInt6isZeroEv.exit9
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = and i32 %i.cf, 1073741824
  %.not.i.i10 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i10, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit11

bb.z:                                             ; preds = %bb.x
  %i.cj = and i32 %i.cf, 268435455
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cl
  br label %_ZNK4llvm4User10getOperandEj.exit11

_ZNK4llvm4User10getOperandEj.exit11:              ; preds = %bb.y, %bb.z
  %i.cn = phi ptr [ %i.ci, %bb.y ], [ %i.cm, %bb.z ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !1503
  %i.cq = add i32 %4, 1                           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29, !noalias !1505 ; 2 uses
  %i.ct = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs) #29, !noalias !1505, !inline_history !1456 ; 2 uses
  %.not.not.i.i45 = icmp eq i32 %i.ct, 0
  br i1 %.not.not.i.i45, label %bb.aa, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46

bb.aa:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit11
  %i.cu = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1505, !nonnull !21, !align !61
  %i.cv = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cu, ptr noundef nonnull %i.cs) #27, !noalias !1505, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46: ; preds = %bb.aa, %_ZNK4llvm4User10getOperandEj.exit11
  %.1.i.i47 = phi i32 [ %i.cv, %bb.aa ], [ %i.ct, %_ZNK4llvm4User10getOperandEj.exit11 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 %.1.i.i47, ptr %i.cw, align 8, !tbaa !37, !alias.scope !1504, !noalias !1503
  %i.cx = icmp ult i32 %.1.i.i47, 65
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46
  store i64 0, ptr %12, align 8, !tbaa !39, !alias.scope !1504, !noalias !1503
  store i32 %.1.i.i47, ptr %i.cz, align 8, !tbaa !37, !alias.scope !1504, !noalias !1503
  store i64 0, ptr %i.cy, align 8, !tbaa !39, !alias.scope !1504, !noalias !1503
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48

bb.ac:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i46
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1503, !inline_history !1456
  store i32 %.1.i.i47, ptr %i.cz, align 8, !tbaa !37, !alias.scope !1504, !noalias !1503
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.cy, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1503, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48: ; preds = %bb.ab, %bb.ac
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.cq), !noalias !1503, !inline_history !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !1503
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !1503
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  call void @llvm.experimental.noalias.scope.decl(metadata !1507), !noalias !1503
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.db = load i32, ptr %i.b, align 8, !tbaa !37, !noalias !1508 ; 3 uses
  store i32 %i.db, ptr %i.da, align 8, !tbaa !37, !alias.scope !1509, !noalias !1503
  %i.dc = icmp ult i32 %i.db, 65
  br i1 %i.dc, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i37

_ZN4llvm5APIntC2ERKS0_.exit.i.i37:                ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %19) #27, !noalias !1503
  %.pr.i.i38 = load i32, ptr %i.da, align 8, !tbaa !37, !alias.scope !1509, !noalias !1503 ; 2 uses
  %i.dd = icmp ult i32 %.pr.i.i38, 65
  br i1 %i.dd, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39, label %bb.ad

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i37, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48
  %.sink.i.i40 = phi ptr [ %19, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48 ], [ %14, %_ZN4llvm5APIntC2ERKS0_.exit.i.i37 ]
  %i.de = phi i32 [ %i.db, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit48 ], [ %.pr.i.i38, %_ZN4llvm5APIntC2ERKS0_.exit.i.i37 ] ; 3 uses
  %.pre.i.i41 = load i64, ptr %.sink.i.i40, align 8, !noalias !1503
  %i.df = icmp eq i32 %i.de, 1
  %i.dg = shl i64 %.pre.i.i41, 1
  %i.dh = sub nsw i32 0, %i.de
  %i.di = and i32 %i.dh, 63
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 -1, %i.dj
  %i.dl = icmp eq i32 %i.de, 0
  %.04.i.i.i.i43 = select i1 %i.dl, i64 0, i64 %i.dk, !prof !38
  %i.dm = and i64 %.04.i.i.i.i43, %i.dg
  %23 = select i1 %i.df, i64 0, i64 %i.dm
  store i64 %23, ptr %14, align 8, !tbaa !39, !alias.scope !1509, !noalias !1503
  br label %_ZNK4llvm5APIntlsEj.exit44

bb.ad:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i37
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #27, !noalias !1503
  br label %_ZNK4llvm5APIntlsEj.exit44

_ZNK4llvm5APIntlsEj.exit44:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i39, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.dn = load ptr, ptr %i.cr, align 8, !tbaa !29, !noalias !1511 ; 2 uses
  %i.do = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dn) #29, !noalias !1511, !inline_history !1456 ; 2 uses
  %.not.not.i.i33 = icmp eq i32 %i.do, 0
  br i1 %.not.not.i.i33, label %bb.ae, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34

bb.ae:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit44
  %i.dp = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1511, !nonnull !21, !align !61
  %i.dq = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.dp, ptr noundef nonnull %i.dn) #27, !noalias !1511, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34: ; preds = %bb.ae, %_ZNK4llvm5APIntlsEj.exit44
  %.1.i.i35 = phi i32 [ %i.dq, %bb.ae ], [ %i.do, %_ZNK4llvm5APIntlsEj.exit44 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 %.1.i.i35, ptr %i.dr, align 8, !tbaa !37, !alias.scope !1510, !noalias !1503
  %i.ds = icmp ult i32 %.1.i.i35, 65
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  br i1 %i.ds, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34
  store i64 0, ptr %13, align 8, !tbaa !39, !alias.scope !1510, !noalias !1503
  store i32 %.1.i.i35, ptr %i.du, align 8, !tbaa !37, !alias.scope !1510, !noalias !1503
  store i64 0, ptr %i.dt, align 8, !tbaa !39, !alias.scope !1510, !noalias !1503
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36

bb.ag:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i34
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1503, !inline_history !1456
  store i32 %.1.i.i35, ptr %i.du, align 8, !tbaa !37, !alias.scope !1510, !noalias !1503
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.dt, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1503, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36: ; preds = %bb.af, %bb.ag
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.cq), !noalias !1503, !inline_history !1456
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13) #27, !inline_history !1463
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !37
  %i.dw = icmp ugt i32 %i.dv, 64
  br i1 %i.dw, label %bb.ah, label %_ZN4llvm5APIntD2Ev.exit.i31

bb.ah:                                            ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !39 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN4llvm5APIntD2Ev.exit.i31, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i31

_ZN4llvm5APIntD2Ev.exit.i31:                      ; preds = %bb.ai, %bb.ah, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit36
  %i.dz = load i32, ptr %i.dr, align 8, !tbaa !37
  %i.ea = icmp ugt i32 %i.dz, 64
  br i1 %i.ea, label %bb.aj, label %_ZN4llvm9KnownBitsD2Ev.exit32

bb.aj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i31
  %i.eb = load ptr, ptr %13, align 8, !tbaa !39   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN4llvm9KnownBitsD2Ev.exit32, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit32

_ZN4llvm9KnownBitsD2Ev.exit32:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i31, %bb.aj, %bb.ak
  %i.ed = load i32, ptr %i.da, align 8, !tbaa !37
  %i.ee = icmp ugt i32 %i.ed, 64
  br i1 %i.ee, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit30

bb.al:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit32
  %i.ef = load ptr, ptr %14, align 8, !tbaa !39   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN4llvm5APIntD2Ev.exit30, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.ef) #28
  br label %_ZN4llvm5APIntD2Ev.exit30

_ZN4llvm5APIntD2Ev.exit30:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit32, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !1503
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !1503
  %i.eh = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.ei = icmp ugt i32 %i.eh, 64
  br i1 %i.ei, label %bb.an, label %_ZN4llvm5APIntD2Ev.exit.i28

bb.an:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit30
  %i.ej = load ptr, ptr %i.cy, align 8, !tbaa !39 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN4llvm5APIntD2Ev.exit.i28, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.ej) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i28

_ZN4llvm5APIntD2Ev.exit.i28:                      ; preds = %bb.ao, %bb.an, %_ZN4llvm5APIntD2Ev.exit30
  %i.el = load i32, ptr %i.cw, align 8, !tbaa !37
  %i.em = icmp ugt i32 %i.el, 64
  br i1 %i.em, label %bb.ap, label %_ZN4llvm9KnownBitsD2Ev.exit29

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i28
  %i.en = load ptr, ptr %12, align 8, !tbaa !39   ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZN4llvm9KnownBitsD2Ev.exit29, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.en) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit29

_ZN4llvm9KnownBitsD2Ev.exit29:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i28, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !1503
  br label %bb.cm

bb.ar:                                            ; preds = %.split113, %_ZNK4llvm5APInt6isZeroEv.exit9
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = and i32 %i.eq, 1073741824
  %.not.i.i12 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i12, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds i8, ptr %1, i64 -8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit13

bb.at:                                            ; preds = %bb.ar
  %i.eu = and i32 %i.eq, 268435455
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ew
  br label %_ZNK4llvm4User10getOperandEj.exit13

_ZNK4llvm4User10getOperandEj.exit13:              ; preds = %bb.as, %bb.at
  %i.ey = phi ptr [ %i.et, %bb.as ], [ %i.ex, %bb.at ]
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !1512
  %i.fa = add i32 %4, 1                           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !29, !noalias !1514 ; 2 uses
  %i.fd = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fc) #29, !noalias !1514, !inline_history !1456 ; 2 uses
  %.not.not.i.i66 = icmp eq i32 %i.fd, 0
  br i1 %.not.not.i.i66, label %bb.au, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67

bb.au:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit13
  %i.fe = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1514, !nonnull !21, !align !61
  %i.ff = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fe, ptr noundef nonnull %i.fc) #27, !noalias !1514, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67: ; preds = %bb.au, %_ZNK4llvm4User10getOperandEj.exit13
  %.1.i.i68 = phi i32 [ %i.ff, %bb.au ], [ %i.fd, %_ZNK4llvm4User10getOperandEj.exit13 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %.1.i.i68, ptr %i.fg, align 8, !tbaa !37, !alias.scope !1513, !noalias !1512
  %i.fh = icmp ult i32 %.1.i.i68, 65
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  br i1 %i.fh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67
  store i64 0, ptr %9, align 8, !tbaa !39, !alias.scope !1513, !noalias !1512
  store i32 %.1.i.i68, ptr %i.fj, align 8, !tbaa !37, !alias.scope !1513, !noalias !1512
  store i64 0, ptr %i.fi, align 8, !tbaa !39, !alias.scope !1513, !noalias !1512
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69

bb.aw:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i67
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1512, !inline_history !1456
  store i32 %.1.i.i68, ptr %i.fj, align 8, !tbaa !37, !alias.scope !1513, !noalias !1512
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.fi, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1512, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69: ; preds = %bb.av, %bb.aw
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.ez, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.fa), !noalias !1512, !inline_history !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !1512
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !1512
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516), !noalias !1512
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !37, !noalias !1517 ; 3 uses
  store i32 %i.fl, ptr %i.fk, align 8, !tbaa !37, !alias.scope !1518, !noalias !1512
  %i.fm = icmp ult i32 %i.fl, 65
  br i1 %i.fm, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i58

_ZN4llvm5APIntC2ERKS0_.exit.i.i58:                ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %18) #27, !noalias !1512
  %.pr.i.i59 = load i32, ptr %i.fk, align 8, !tbaa !37, !alias.scope !1518, !noalias !1512 ; 2 uses
  %i.fn = icmp ult i32 %.pr.i.i59, 65
  br i1 %i.fn, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60, label %bb.ax

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i58, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69
  %.sink.i.i61 = phi ptr [ %18, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69 ], [ %11, %_ZN4llvm5APIntC2ERKS0_.exit.i.i58 ]
  %i.fo = phi i32 [ %i.fl, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit69 ], [ %.pr.i.i59, %_ZN4llvm5APIntC2ERKS0_.exit.i.i58 ] ; 3 uses
  %.pre.i.i62 = load i64, ptr %.sink.i.i61, align 8, !noalias !1512
  %i.fp = icmp eq i32 %i.fo, 1
  %i.fq = shl i64 %.pre.i.i62, 1
  %i.fr = sub nsw i32 0, %i.fo
  %i.fs = and i32 %i.fr, 63
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = lshr i64 -1, %i.ft
  %i.fv = icmp eq i32 %i.fo, 0
  %.04.i.i.i.i64 = select i1 %i.fv, i64 0, i64 %i.fu, !prof !38
  %i.fw = and i64 %.04.i.i.i.i64, %i.fq
  %24 = select i1 %i.fp, i64 0, i64 %i.fw
  store i64 %24, ptr %11, align 8, !tbaa !39, !alias.scope !1518, !noalias !1512
  br label %_ZNK4llvm5APIntlsEj.exit65

bb.ax:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i58
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %11, i32 noundef 1) #27, !noalias !1512
  br label %_ZNK4llvm5APIntlsEj.exit65

_ZNK4llvm5APIntlsEj.exit65:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i60, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.fx = load ptr, ptr %i.fb, align 8, !tbaa !29, !noalias !1520 ; 2 uses
  %i.fy = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fx) #29, !noalias !1520, !inline_history !1456 ; 2 uses
  %.not.not.i.i54 = icmp eq i32 %i.fy, 0
  br i1 %.not.not.i.i54, label %bb.ay, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55

bb.ay:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit65
  %i.fz = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1520, !nonnull !21, !align !61
  %i.ga = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fz, ptr noundef nonnull %i.fx) #27, !noalias !1520, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55: ; preds = %bb.ay, %_ZNK4llvm5APIntlsEj.exit65
  %.1.i.i56 = phi i32 [ %i.ga, %bb.ay ], [ %i.fy, %_ZNK4llvm5APIntlsEj.exit65 ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 %.1.i.i56, ptr %i.gb, align 8, !tbaa !37, !alias.scope !1519, !noalias !1512
  %i.gc = icmp ult i32 %.1.i.i56, 65
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  br i1 %i.gc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55
  store i64 0, ptr %10, align 8, !tbaa !39, !alias.scope !1519, !noalias !1512
  store i32 %.1.i.i56, ptr %i.ge, align 8, !tbaa !37, !alias.scope !1519, !noalias !1512
  store i64 0, ptr %i.gd, align 8, !tbaa !39, !alias.scope !1519, !noalias !1512
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57

bb.ba:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i55
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1512, !inline_history !1456
  store i32 %.1.i.i56, ptr %i.ge, align 8, !tbaa !37, !alias.scope !1519, !noalias !1512
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.gd, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1512, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57: ; preds = %bb.az, %bb.ba
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.ez, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.fa), !noalias !1512, !inline_history !1456
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %20, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #27, !inline_history !1463
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !37
  %i.gg = icmp ugt i32 %i.gf, 64
  br i1 %i.gg, label %bb.bb, label %_ZN4llvm5APIntD2Ev.exit.i52

bb.bb:                                            ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_ZN4llvm5APIntD2Ev.exit.i52, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.gh) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i52

_ZN4llvm5APIntD2Ev.exit.i52:                      ; preds = %bb.bc, %bb.bb, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit57
  %i.gj = load i32, ptr %i.gb, align 8, !tbaa !37
  %i.gk = icmp ugt i32 %i.gj, 64
  br i1 %i.gk, label %bb.bd, label %_ZN4llvm9KnownBitsD2Ev.exit53

bb.bd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i52
  %i.gl = load ptr, ptr %10, align 8, !tbaa !39   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN4llvm9KnownBitsD2Ev.exit53, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit53

_ZN4llvm9KnownBitsD2Ev.exit53:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i52, %bb.bd, %bb.be
  %i.gn = load i32, ptr %i.fk, align 8, !tbaa !37
  %i.go = icmp ugt i32 %i.gn, 64
  br i1 %i.go, label %bb.bf, label %_ZN4llvm5APIntD2Ev.exit51

bb.bf:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit53
  %i.gp = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZN4llvm5APIntD2Ev.exit51, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.gp) #28
  br label %_ZN4llvm5APIntD2Ev.exit51

_ZN4llvm5APIntD2Ev.exit51:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit53, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !1512
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !1512
  %i.gr = load i32, ptr %i.fj, align 8, !tbaa !37
  %i.gs = icmp ugt i32 %i.gr, 64
  br i1 %i.gs, label %bb.bh, label %_ZN4llvm5APIntD2Ev.exit.i49

bb.bh:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit51
  %i.gt = load ptr, ptr %i.fi, align 8, !tbaa !39 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZN4llvm5APIntD2Ev.exit.i49, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.gt) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i49

_ZN4llvm5APIntD2Ev.exit.i49:                      ; preds = %bb.bi, %bb.bh, %_ZN4llvm5APIntD2Ev.exit51
  %i.gv = load i32, ptr %i.fg, align 8, !tbaa !37
  %i.gw = icmp ugt i32 %i.gv, 64
  br i1 %i.gw, label %bb.bj, label %_ZN4llvm9KnownBitsD2Ev.exit50

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i49
  %i.gx = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN4llvm9KnownBitsD2Ev.exit50, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.gx) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit50

_ZN4llvm9KnownBitsD2Ev.exit50:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i49, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !1512
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.gz = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.ha = and i32 %i.gz, 1073741824
  %.not.i.i14 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i14, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit50
  %i.hb = getelementptr inbounds i8, ptr %1, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit15

bb.bm:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit50
  %i.hd = and i32 %i.gz, 268435455
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [32 x i8], ptr %1, i64 %i.hf
  br label %_ZNK4llvm4User10getOperandEj.exit15

_ZNK4llvm4User10getOperandEj.exit15:              ; preds = %bb.bl, %bb.bm
  %i.hh = phi ptr [ %i.hc, %bb.bl ], [ %i.hg, %bb.bm ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1521
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !29, !noalias !1523 ; 2 uses
  %i.hm = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hl) #29, !noalias !1523, !inline_history !1456 ; 2 uses
  %.not.not.i.i87 = icmp eq i32 %i.hm, 0
  br i1 %.not.not.i.i87, label %bb.bn, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88

bb.bn:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit15
  %i.hn = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1523, !nonnull !21, !align !61
  %i.ho = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.hn, ptr noundef nonnull %i.hl) #27, !noalias !1523, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88: ; preds = %bb.bn, %_ZNK4llvm4User10getOperandEj.exit15
  %.1.i.i89 = phi i32 [ %i.ho, %bb.bn ], [ %i.hm, %_ZNK4llvm4User10getOperandEj.exit15 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %.1.i.i89, ptr %i.hp, align 8, !tbaa !37, !alias.scope !1522, !noalias !1521
  %i.hq = icmp ult i32 %.1.i.i89, 65
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  br i1 %i.hq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88
  store i64 0, ptr %6, align 8, !tbaa !39, !alias.scope !1522, !noalias !1521
  store i32 %.1.i.i89, ptr %i.hs, align 8, !tbaa !37, !alias.scope !1522, !noalias !1521
  store i64 0, ptr %i.hr, align 8, !tbaa !39, !alias.scope !1522, !noalias !1521
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90

bb.bp:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i88
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1521, !inline_history !1456
  store i32 %.1.i.i89, ptr %i.hs, align 8, !tbaa !37, !alias.scope !1522, !noalias !1521
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.hr, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1521, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90: ; preds = %bb.bo, %bb.bp
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.hj, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.fa), !noalias !1521, !inline_history !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !1521
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525), !noalias !1521
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.hu = load i32, ptr %i.b, align 8, !tbaa !37, !noalias !1526 ; 3 uses
  store i32 %i.hu, ptr %i.ht, align 8, !tbaa !37, !alias.scope !1527, !noalias !1521
  %i.hv = icmp ult i32 %i.hu, 65
  br i1 %i.hv, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i79

_ZN4llvm5APIntC2ERKS0_.exit.i.i79:                ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %19) #27, !noalias !1521
  %.pr.i.i80 = load i32, ptr %i.ht, align 8, !tbaa !37, !alias.scope !1527, !noalias !1521 ; 2 uses
  %i.hw = icmp ult i32 %.pr.i.i80, 65
  br i1 %i.hw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81, label %bb.bq

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i79, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90
  %.sink.i.i82 = phi ptr [ %19, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90 ], [ %8, %_ZN4llvm5APIntC2ERKS0_.exit.i.i79 ]
  %i.hx = phi i32 [ %i.hu, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit90 ], [ %.pr.i.i80, %_ZN4llvm5APIntC2ERKS0_.exit.i.i79 ] ; 3 uses
  %.pre.i.i83 = load i64, ptr %.sink.i.i82, align 8, !noalias !1521
  %i.hy = icmp eq i32 %i.hx, 1
  %i.hz = shl i64 %.pre.i.i83, 1
  %i.ia = sub nsw i32 0, %i.hx
  %i.ib = and i32 %i.ia, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = lshr i64 -1, %i.ic
  %i.ie = icmp eq i32 %i.hx, 0
  %.04.i.i.i.i85 = select i1 %i.ie, i64 0, i64 %i.id, !prof !38
  %i.if = and i64 %.04.i.i.i.i85, %i.hz
  %25 = select i1 %i.hy, i64 0, i64 %i.if
  store i64 %25, ptr %8, align 8, !tbaa !39, !alias.scope !1527, !noalias !1521
  br label %_ZNK4llvm5APIntlsEj.exit86

bb.bq:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i79
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 1) #27, !noalias !1521
  br label %_ZNK4llvm5APIntlsEj.exit86

_ZNK4llvm5APIntlsEj.exit86:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i81, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  %i.ig = load ptr, ptr %i.hk, align 8, !tbaa !29, !noalias !1529 ; 2 uses
  %i.ih = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ig) #29, !noalias !1529, !inline_history !1456 ; 2 uses
  %.not.not.i.i75 = icmp eq i32 %i.ih, 0
  br i1 %.not.not.i.i75, label %bb.br, label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76

bb.br:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit86
  %i.ii = load ptr, ptr %3, align 8, !tbaa !60, !noalias !1529, !nonnull !21, !align !61
  %i.ij = call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ii, ptr noundef nonnull %i.ig) #27, !noalias !1529, !inline_history !1456
  br label %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76

_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76: ; preds = %bb.br, %_ZNK4llvm5APIntlsEj.exit86
  %.1.i.i77 = phi i32 [ %i.ij, %bb.br ], [ %i.ih, %_ZNK4llvm5APIntlsEj.exit86 ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %.1.i.i77, ptr %i.ik, align 8, !tbaa !37, !alias.scope !1528, !noalias !1521
  %i.il = icmp ult i32 %.1.i.i77, 65
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  br i1 %i.il, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76
  store i64 0, ptr %7, align 8, !tbaa !39, !alias.scope !1528, !noalias !1521
  store i32 %.1.i.i77, ptr %i.in, align 8, !tbaa !37, !alias.scope !1528, !noalias !1521
  store i64 0, ptr %i.im, align 8, !tbaa !39, !alias.scope !1528, !noalias !1521
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78

bb.bt:                                            ; preds = %_ZL11getBitWidthPN4llvm4TypeERKNS_10DataLayoutE.exit.i76
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1521, !inline_history !1456
  store i32 %.1.i.i77, ptr %i.in, align 8, !tbaa !37, !alias.scope !1528, !noalias !1521
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %i.im, i64 noundef 0, i1 noundef zeroext false) #27, !noalias !1521, !inline_history !1456
  br label %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78

_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78: ; preds = %bb.bs, %bb.bt
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.hj, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.fa), !noalias !1521, !inline_history !1456
  call void %.sroa.20.16.copyload(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %21, i64 noundef %.sroa.25.16.copyload, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #27, !inline_history !1463
  %i.io = load i32, ptr %i.in, align 8, !tbaa !37
  %i.ip = icmp ugt i32 %i.io, 64
  br i1 %i.ip, label %bb.bu, label %_ZN4llvm5APIntD2Ev.exit.i73

bb.bu:                                            ; preds = %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !39 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZN4llvm5APIntD2Ev.exit.i73, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.iq) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i73

_ZN4llvm5APIntD2Ev.exit.i73:                      ; preds = %bb.bv, %bb.bu, %_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_5APIntERKNS_13SimplifyQueryEj.exit78
  %i.is = load i32, ptr %i.ik, align 8, !tbaa !37
  %i.it = icmp ugt i32 %i.is, 64
  br i1 %i.it, label %bb.bw, label %_ZN4llvm9KnownBitsD2Ev.exit74

bb.bw:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i73
  %i.iu = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN4llvm9KnownBitsD2Ev.exit74, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.iu) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit74

_ZN4llvm9KnownBitsD2Ev.exit74:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i73, %bb.bw, %bb.bx
  %i.iw = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.ix = icmp ugt i32 %i.iw, 64
  br i1 %i.ix, label %bb.by, label %_ZN4llvm5APIntD2Ev.exit72

bb.by:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit74
  %i.iy = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZN4llvm5APIntD2Ev.exit72, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.iy) #28
  br label %_ZN4llvm5APIntD2Ev.exit72

_ZN4llvm5APIntD2Ev.exit72:                        ; preds = %_ZN4llvm9KnownBitsD2Ev.exit74, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1521
  %i.ja = load i32, ptr %i.hs, align 8, !tbaa !37
  %i.jb = icmp ugt i32 %i.ja, 64
  br i1 %i.jb, label %bb.ca, label %_ZN4llvm5APIntD2Ev.exit.i70

bb.ca:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit72
  %i.jc = load ptr, ptr %i.hr, align 8, !tbaa !39 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %_ZN4llvm5APIntD2Ev.exit.i70, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.jc) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i70

_ZN4llvm5APIntD2Ev.exit.i70:                      ; preds = %bb.cb, %bb.ca, %_ZN4llvm5APIntD2Ev.exit72
  %i.je = load i32, ptr %i.hp, align 8, !tbaa !37
  %i.jf = icmp ugt i32 %i.je, 64
  br i1 %i.jf, label %bb.cc, label %_ZN4llvm9KnownBitsD2Ev.exit71

bb.cc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i70
  %i.jg = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %_ZN4llvm9KnownBitsD2Ev.exit71, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.jg) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit71

_ZN4llvm9KnownBitsD2Ev.exit71:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i70, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1521
  call void @_ZNK4llvm9KnownBits13intersectWithERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21)
  %i.ji = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !37
  %i.jk = icmp ugt i32 %i.jj, 64
  br i1 %i.jk, label %bb.ce, label %_ZN4llvm5APIntD2Ev.exit.i

bb.ce:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit71
  %i.jl = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !39 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdaPv(ptr noundef nonnull %i.jm) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.cf, %bb.ce, %_ZN4llvm9KnownBitsD2Ev.exit71
  %i.jo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !37
  %i.jq = icmp ugt i32 %i.jp, 64
  br i1 %i.jq, label %bb.cg, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.cg:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.jr = load ptr, ptr %21, align 8, !tbaa !39   ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.jr) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !37
  %i.jv = icmp ugt i32 %i.ju, 64
  br i1 %i.jv, label %bb.ci, label %_ZN4llvm5APIntD2Ev.exit.i16

bb.ci:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !39 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_ZN4llvm5APIntD2Ev.exit.i16, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdaPv(ptr noundef nonnull %i.jx) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i16

_ZN4llvm5APIntD2Ev.exit.i16:                      ; preds = %bb.cj, %bb.ci, %_ZN4llvm9KnownBitsD2Ev.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !37
  %i.kb = icmp ugt i32 %i.ka, 64
  br i1 %i.kb, label %bb.ck, label %_ZN4llvm9KnownBitsD2Ev.exit17

bb.ck:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i16
  %i.kc = load ptr, ptr %20, align 8, !tbaa !39   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %_ZN4llvm9KnownBitsD2Ev.exit17, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZdaPv(ptr noundef nonnull %i.kc) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit17

_ZN4llvm9KnownBitsD2Ev.exit17:                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i16, %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit17, %_ZN4llvm9KnownBitsD2Ev.exit29, %_ZN4llvm9KnownBitsD2Ev.exit20
  %i.ke = load i32, ptr %i.b, align 8, !tbaa !37
  %i.kf = icmp ugt i32 %i.ke, 64
  br i1 %i.kf, label %bb.cn, label %_ZN4llvm5APIntD2Ev.exit

bb.cn:                                            ; preds = %bb.cm
  %i.kg = load ptr, ptr %19, align 8, !tbaa !39   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.kg) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.ki = load i32, ptr %i.a, align 8, !tbaa !37
  %i.kj = icmp ugt i32 %i.ki, 64
end_hunk_0
