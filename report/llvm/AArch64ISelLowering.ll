Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 174
begin_hunk_0_@_ZL12constructDupN4llvm7SDValueEiNS_5SDLocENS_3EVTEjRNS_12SelectionDAGE:bb.a
bb.ac:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract15 = extractvalue { i64, i8 } %.pn.i, 0
  %i.fl = icmp eq i64 %.fca.0.extract15, 64
  br i1 %i.fl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.fm = call fastcc { ptr, i32 } @_ZL11WidenVectorN4llvm7SDValueERNS_12SelectionDAGE(ptr nonnull %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(920) %7) ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.fm, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.fm, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.w, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.ad, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit63, %bb.s
  %.0 = phi i32 [ %i.cg, %bb.s ], [ %i.ei, %bb.w ], [ %i.ez, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit63 ], [ %2, %bb.ad ], [ %2, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.077.0 = phi ptr [ %.fca.0.extract30, %bb.s ], [ %i.dk, %bb.w ], [ %.fca.0.extract19, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit63 ], [ %.fca.0.extract8, %bb.ad ], [ %0, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.15.0 = phi i32 [ %.fca.1.extract31, %bb.s ], [ %i.dm, %bb.w ], [ %.fca.1.extract20, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit63 ], [ %.fca.1.extract9, %bb.ad ], [ %1, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.05.0.copyload = load i16, ptr %5, align 8, !tbaa !227
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !380
  store ptr %.sroa.077.0, ptr %16, align 8, !tbaa !394
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !337
  %i.fn = sext i32 %.0 to i64
  %i.fo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.fo, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.fo, 1
  store ptr %.fca.0.extract1, ptr %17, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %.sroa.05.0.copyload, ptr %.sroa.27.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #35
  ret { ptr, i32 } %i.fp
}

declare noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst13isReverseMaskENS_8ArrayRefIiEEi(ptr, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL20isSlideWithZerosMaskN4llvm8ArrayRefIiEENS_3EVTENS_7SDValueES3_RjRb(ptr nofree readonly captures(none) %0, i64 %1, i16 %2, ptr %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %8) unnamed_addr #4 {
bb.a:
  %9 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %11 = alloca %"class.llvm::SmallVector.927", align 8 ; 9 uses
  store i16 %2, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.a, align 8
  %.not.i = icmp eq i16 %2, 0                     ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i16 %2 to i64
  %i.c = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.c, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.b, %bb.c
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %.pn.i, 1
  %i.f = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.f, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %.pn.i, 0
  %i.g = trunc i64 %.fca.0.extract to i32         ; 2 uses
  switch i32 %i.g, label %bb.aj [
    i32 128, label %bb.e
    i32 64, label %bb.e
  ]

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  br i1 %.not.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.h = add i16 %2, -163
  %spec.select.i.i.i = icmp ult i16 %i.h, 53
  br i1 %spec.select.i.i.i, label %bb.f, label %.split.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.e
  %i.i = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br i1 %i.i, label %bb.f, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i

bb.f:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

.split.i.i:                                       ; preds = %.split.i
  %i.j = zext i16 %2 to i64                       ; 2 uses
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !228
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.o = add i16 %2, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.o, 197
  br i1 %spec.select.i.i.i.i, label %bb.g, label %bb.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.p = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.q = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br i1 %i.q, label %bb.h, label %bb.i

bb.g:                                             ; preds = %.split.i.i
  %i.r = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.j
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !227
  %i.u = insertvalue { i16, ptr } poison, i16 %i.t, 0
  %i.v = insertvalue { i16, ptr } %i.u, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.h:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.w = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.x = phi i32 [ %i.p, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %i.n, %.split.i.i ]
  %i.y = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.z = insertvalue { i16, ptr } %i.y, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.i, %bb.h, %bb.g
  %i.aa = phi i32 [ %i.x, %bb.i ], [ %i.n, %bb.g ], [ %i.p, %bb.h ] ; 6 uses
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.z, %bb.i ], [ %i.v, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.ab = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.ab, ptr %9, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ad, ptr %i.ac, align 8
  %.not.i.i27 = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ae = zext i16 %i.ab to i64
  %i.af = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ag, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.k:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ah = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  %i.ai = extractvalue { i64, i8 } %i.ah, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.j, %bb.k
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.j ], [ %i.ai, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.aj = trunc i64 %.pn.i.i to i32               ; 6 uses
  %i.ak = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %4) #35 ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !385   ; 2 uses
  %i.am = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %i.al) #35
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.l, label %bb.aj

bb.l:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ao, ptr %11, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !413
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 16, ptr %i.aq, align 4, !tbaa !601
  %.idx = shl nuw nsw i64 %1, 2
  %i.ar = icmp ugt i64 %1, 16
  br i1 %i.ar, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread: ; preds = %bb.l
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull %i.ao, i64 noundef %1, i64 noundef 4) #35
  %.pre8.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !413
  %.pre.pre115.pre = load ptr, ptr %11, align 8, !tbaa !62
  %i.as = zext i32 %.pre8.pre.i.i to i64
  br label %bb.m

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.l
  %.not.i.i.i28 = icmp eq i64 %1, 0
  br i1 %.not.i.i.i28, label %_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  %.pre8.i.i133 = phi i64 [ %i.as, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %.pre.pre115132 = phi ptr [ %.pre.pre115.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread ], [ %i.ao, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre115132, i64 %.pre8.i.i133
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %0, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !413
  %.pre.pre = load ptr, ptr %11, align 8, !tbaa !62
  br label %_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit

_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %bb.m
  %.pre = phi ptr [ %i.ao, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre.pre, %bb.m ] ; 17 uses
  %i.au = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.m ]
  %i.av = trunc i64 %1 to i32
  %i.aw = add i32 %i.au, %i.av                    ; 8 uses
  store i32 %i.aw, ptr %i.ap, align 8, !tbaa !413
  br i1 %i.ak, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %.not17.i = icmp eq i32 %i.aw, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ay = sub i32 0, %i.aw                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ax, 4294967288              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert147 = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat148 = shufflevector <4 x i32> %broadcast.splatinsert147, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue163, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue163 ] ; 9 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !337 ; 3 uses
  %wide.load149 = load <4 x i32>, ptr %12, align 4, !tbaa !337 ; 3 uses
  %13 = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.ba = icmp sgt <4 x i32> %wide.load149, splat (i32 -1) ; 4 uses
  %14 = icmp slt <4 x i32> %wide.load, %broadcast.splat148
  %i.bb = icmp slt <4 x i32> %wide.load149, %broadcast.splat148
  %15 = select <4 x i1> %14, <4 x i32> %broadcast.splat148, <4 x i32> %broadcast.splat
  %i.bc = select <4 x i1> %i.bb, <4 x i32> %broadcast.splat148, <4 x i32> %broadcast.splat
  %16 = add <4 x i32> %15, %wide.load             ; 4 uses
  %i.bd = add <4 x i32> %i.bc, %wide.load149      ; 4 uses
  %i.be = extractelement <4 x i1> %13, i64 0
  br i1 %i.be, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %17 = extractelement <4 x i32> %16, i64 0
  store i32 %17, ptr %i.az, align 4, !tbaa !337
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %18 = extractelement <4 x i1> %13, i64 1
  br i1 %18, label %pred.store.if150, label %pred.store.continue151

pred.store.if150:                                 ; preds = %pred.store.continue
  %19 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = extractelement <4 x i32> %16, i64 1
  store i32 %21, ptr %20, align 4, !tbaa !337
  br label %pred.store.continue151

pred.store.continue151:                           ; preds = %pred.store.if150, %pred.store.continue
  %22 = extractelement <4 x i1> %13, i64 2
  br i1 %22, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %pred.store.continue151
  %23 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = extractelement <4 x i32> %16, i64 2
  store i32 %25, ptr %24, align 4, !tbaa !337
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %pred.store.continue151
  %26 = extractelement <4 x i1> %13, i64 3
  br i1 %26, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  %27 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 12
  %29 = extractelement <4 x i32> %16, i64 3
  store i32 %29, ptr %28, align 4, !tbaa !337
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %30 = extractelement <4 x i1> %i.ba, i64 0
  br i1 %30, label %pred.store.if156, label %pred.store.continue157

pred.store.if156:                                 ; preds = %pred.store.continue155
  %31 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.bf = extractelement <4 x i32> %i.bd, i64 0
  store i32 %i.bf, ptr %32, align 4, !tbaa !337
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.if156, %pred.store.continue155
  %i.bg = extractelement <4 x i1> %i.ba, i64 1
  br i1 %i.bg, label %pred.store.if158, label %pred.store.continue159

pred.store.if158:                                 ; preds = %pred.store.continue157
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bj = extractelement <4 x i32> %i.bd, i64 1
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !337
  br label %pred.store.continue159

pred.store.continue159:                           ; preds = %pred.store.if158, %pred.store.continue157
  %i.bk = extractelement <4 x i1> %i.ba, i64 2
  br i1 %i.bk, label %pred.store.if160, label %pred.store.continue161

pred.store.if160:                                 ; preds = %pred.store.continue159
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = extractelement <4 x i32> %i.bd, i64 2
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !337
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.if160, %pred.store.continue159
  %i.bo = extractelement <4 x i1> %i.ba, i64 3
  br i1 %i.bo, label %pred.store.if162, label %pred.store.continue163

pred.store.if162:                                 ; preds = %pred.store.continue161
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.br = extractelement <4 x i32> %i.bd, i64 3
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !337
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.store.continue161
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1913

middle.block:                                     ; preds = %pred.store.continue163
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader168

.lr.ph.i.preheader168:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader168, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader168 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !337 ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.bw = icmp slt i32 %i.bu, %i.aw
  %.sink.p.i = select i1 %i.bw, i32 %i.aw, i32 %i.ay
  %.sink.i = add i32 %.sink.p.i, %i.bu
  store i32 %.sink.i, ptr %i.bt, align 4, !tbaa !337
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i29 = icmp eq i64 %indvars.iv.next.i, %i.ax
  br i1 %.not.i29, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i, !llvm.loop !1914

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %bb.o, %middle.block, %bb.n
  %.sroa.5.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0.copyload88 = load i32, ptr %.sroa.5.0..sroa_idx87, align 8, !tbaa !337
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, %_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit
  %.sroa.085.0 = phi ptr [ %i.al, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit ], [ %4, %_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit ]
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.copyload88, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit ], [ %5, %_ZN4llvm11SmallVectorIiLj16EEC2IPKivEET_S5_.exit ]
  %i.bx = udiv i32 64, %i.aj                      ; 13 uses
  %i.by = load i32, ptr %.pre, align 4, !tbaa !337 ; 8 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %i.ca = icmp slt i32 %i.by, %i.bx
  %or.cond.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.not84113.not.i = icmp ugt i32 %i.aj, 64
  br i1 %.not84113.not.i, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit.thread97, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.q
  %i.cb = sub nuw nsw i32 %i.bx, %i.by
  %i.cc = zext nneg i32 %i.by to i64
  %i.cd = zext nneg i32 %i.cb to i64
  %wide.trip.count127.i = zext nneg i32 %i.bx to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph116.i
  %indvars.iv124.i = phi i64 [ 0, %.lr.ph116.i ], [ %indvars.iv.next125.i, %bb.v ] ; 4 uses
  %gep139.i = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv124.i
  %i.ce = load i32, ptr %gep139.i, align 4, !tbaa !337 ; 3 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = icmp samesign ult i64 %indvars.iv124.i, %i.cd
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = add nuw nsw i64 %indvars.iv124.i, %i.cc
  %i.ci = zext nneg i32 %i.ce to i64
  %.not83.i = icmp eq i64 %i.ch, %i.ci
  br i1 %.not83.i, label %bb.v, label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.cj = icmp slt i32 %i.ce, %i.aa
  br i1 %i.cj, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count127.i
  br i1 %exitcond128.not.i, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit.thread97, label %bb.r, !llvm.loop !1915

bb.w:                                             ; preds = %bb.p
  %.not.i30 = icmp slt i32 %i.by, %i.aa
  %i.ck = icmp sgt i32 %i.by, -1
  %or.cond102.not143.i = and i1 %.not.i30, %i.ck
  %.not117.i = icmp ugt i32 %i.aj, 64
  %or.cond140.i = or i1 %.not117.i, %or.cond102.not143.i
  br i1 %or.cond140.i, label %.critedge, label %.lr.ph.preheader.i31

.lr.ph.preheader.i31:                             ; preds = %bb.w
  %wide.trip.count.i = zext nneg i32 %i.bx to i64
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32, %.lr.ph.preheader.i31
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.preheader.i31 ], [ %indvars.iv.next.i34, %.lr.ph.i32 ] ; 2 uses
  %.063108.i = phi i32 [ 0, %.lr.ph.preheader.i31 ], [ %.1.i, %.lr.ph.i32 ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i33
  %i.cl = load i32, ptr %gep.i, align 4, !tbaa !337 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  %i.cn = icmp sge i32 %i.cl, %i.aa
  %or.cond86.not.i = or i1 %i.cm, %i.cn           ; 2 uses
  %i.co = zext i1 %or.cond86.not.i to i32
  %.1.i = add i32 %.063108.i, %i.co               ; 5 uses
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i34, %wide.trip.count.i
  %or.cond141.not.i = select i1 %or.cond86.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond141.not.i, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !1916

._crit_edge.i:                                    ; preds = %.lr.ph.i32
  %.not81.i = icmp ne i32 %.1.i, 0
  %i.cp = icmp ult i32 %.1.i, %i.bx
  %or.cond87.i = and i1 %.not81.i, %i.cp
  br i1 %or.cond87.i, label %.preheader.preheader.i, label %.critedge

.preheader.preheader.i:                           ; preds = %._crit_edge.i
  %i.cq = zext nneg i32 %.1.i to i64              ; 2 uses
  br label %.preheader.i

bb.x:                                             ; preds = %.preheader.i
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next121.i to i32
  %exitcond123.not.i = icmp eq i32 %i.bx, %lftr.wideiv.i
  br i1 %exitcond123.not.i, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit.thread97, label %.preheader.i, !llvm.loop !1917

.preheader.i:                                     ; preds = %bb.x, %.preheader.preheader.i
  %indvars.iv120.i = phi i64 [ %i.cq, %.preheader.preheader.i ], [ %indvars.iv.next121.i, %bb.x ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv120.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !337 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  %i.cu = sub nuw nsw i64 %indvars.iv120.i, %i.cq
  %i.cv = zext i32 %i.cs to i64
  %.not82.not.i = icmp ne i64 %i.cu, %i.cv
  %switch.i = select i1 %i.ct, i1 %.not82.not.i, i1 false
  br i1 %switch.i, label %.critedge, label %bb.x

_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit.thread97: ; preds = %bb.x, %bb.v, %bb.q
  %.8.i101 = phi i32 [ %i.by, %bb.q ], [ %i.by, %bb.v ], [ %.1.i, %bb.x ] ; 2 uses
  %.094100 = phi i8 [ 1, %bb.q ], [ 1, %bb.v ], [ 0, %bb.x ] ; 2 uses
  %i.cw = icmp eq i32 %i.g, 128
  br i1 %i.cw, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit.thread97
  %i.cx = zext nneg i32 %i.bx to i64              ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cx ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !337 ; 6 uses
  %i.da = icmp sgt i32 %i.cz, %i.bx
  %i.db = shl nuw nsw i32 %i.bx, 1
  %i.dc = icmp slt i32 %i.cz, %i.db
  %or.cond.i36 = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %or.cond.i36, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.dd = sub nuw nsw i32 %i.cz, %i.bx            ; 3 uses
  %.not84113.not.i67 = icmp ugt i32 %i.aj, 64
  br i1 %.not84113.not.i67, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit75, label %.lr.ph116.i68

.lr.ph116.i68:                                    ; preds = %bb.z
  %i.de = sub nuw nsw i32 %i.bx, %i.dd
  %i.df = zext nneg i32 %i.cz to i64
  %i.dg = zext nneg i32 %i.de to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph116.i68
  %indvars.iv124.i70 = phi i64 [ 0, %.lr.ph116.i68 ], [ %indvars.iv.next125.i72, %bb.ae ] ; 4 uses
  %gep139.i71 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv124.i70
  %i.dh = load i32, ptr %gep139.i71, align 4, !tbaa !337 ; 3 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = icmp samesign ult i64 %indvars.iv124.i70, %i.dg
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = add nuw nsw i64 %indvars.iv124.i70, %i.df
  %i.dl = zext nneg i32 %i.dh to i64
  %.not83.i74 = icmp eq i64 %i.dk, %i.dl
  br i1 %.not83.i74, label %bb.ae, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit75

bb.ad:                                            ; preds = %bb.ab
  %i.dm = icmp slt i32 %i.dh, %i.aa
  br i1 %i.dm, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit75, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  %indvars.iv.next125.i72 = add nuw nsw i64 %indvars.iv124.i70, 1 ; 2 uses
  %exitcond128.not.i73 = icmp eq i64 %indvars.iv.next125.i72, %i.cx
  br i1 %exitcond128.not.i73, label %_ZL14checkLaneSlideN4llvm8ArrayRefIiEEjjjRb.exit75, label %bb.aa, !llvm.loop !1915

bb.af:                                            ; preds = %bb.y
  %.not.i37 = icmp slt i32 %i.cz, %i.aa
  %i.dn = icmp sgt i32 %i.cz, -1
  %or.cond102.not143.i38 = and i1 %.not.i37, %i.dn
  %.not117.i39 = icmp ugt i32 %i.aj, 64
  %or.cond140.i40 = or i1 %.not117.i39, %or.cond102.not143.i38
  br i1 %or.cond140.i40, label %.critedge, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.af, %.lr.ph.i43
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i49, %.lr.ph.i43 ], [ 0, %bb.af ] ; 2 uses
  %.063108.i45 = phi i32 [ %.1.i48, %.lr.ph.i43 ], [ 0, %bb.af ]
end_hunk_0
