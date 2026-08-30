Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 255
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZL18getHalfShuffleMaskN4llvm8ArrayRefIiEENS_15MutableArrayRefIiEERiS4_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i57, i64 12
  %.val33.i.i.i.i.i.i.i66 = load i32, ptr %i.y, align 4, !tbaa !189
  %.not6.i.i.i.i.i.i.i67 = icmp eq i32 %.val33.i.i.i.i.i.i.i66, -1
  br i1 %.not6.i.i.i.i.i.i.i67, label %bb.o, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit126

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i57, i64 16
  %i.aa = add nsw i64 %.018.i.i.i.i.i.i.i56, -1
  %i.ab = icmp sgt i64 %.018.i.i.i.i.i.i.i56, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i55, label %._crit_edge.loopexit.i.i.i.i.i.i.i68, !llvm.loop !2931

._crit_edge.loopexit.i.i.i.i.i.i.i68:             ; preds = %bb.o
  %i.ac = and i32 %i.b, 3
  br label %._crit_edge.i.i.i.i.i.i.i69

._crit_edge.i.i.i.i.i.i.i69:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i68, %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit
  %.pre-phi24.i.i.i.i.i.i.i70 = phi i32 [ %i.ac, %._crit_edge.loopexit.i.i.i.i.i.i.i68 ], [ %i.b, %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit ]
  %.029.lcssa.i.i.i.i.i.i.i71 = phi ptr [ %scevgep.i.i.i.i.i.i.i54, %._crit_edge.loopexit.i.i.i.i.i.i.i68 ], [ %i.t, %_ZL16isUndefLowerHalfN4llvm8ArrayRefIiEE.exit ] ; 5 uses
  switch i32 %.pre-phi24.i.i.i.i.i.i.i70, label %.split [
    i32 3, label %bb.p
    i32 2, label %bb.r
    i32 1, label %bb.t
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i69
  %.029.val.i.i.i.i.i.i.i78 = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i71, align 4, !tbaa !189
  %.not.i.i.i.i.i.i.i79 = icmp eq i32 %.029.val.i.i.i.i.i.i.i78, -1
  br i1 %.not.i.i.i.i.i.i.i79, label %bb.q, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i71, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i69
  %.1.i.i.i.i.i.i.i75 = phi ptr [ %i.ad, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i.i71, %._crit_edge.i.i.i.i.i.i.i69 ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i76 = load i32, ptr %.1.i.i.i.i.i.i.i75, align 4, !tbaa !189
  %.not1.i.i.i.i.i.i.i77 = icmp eq i32 %.1.val.i.i.i.i.i.i.i76, -1
  br i1 %.not1.i.i.i.i.i.i.i77, label %bb.s, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i75, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i.i69
  %.2.i.i.i.i.i.i.i72 = phi ptr [ %i.ae, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i.i71, %._crit_edge.i.i.i.i.i.i.i69 ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i73 = load i32, ptr %.2.i.i.i.i.i.i.i72, align 4, !tbaa !189
  %.not2.i.i.i.i.i.i.i74 = icmp eq i32 %.2.val.i.i.i.i.i.i.i73, -1
  br i1 %.not2.i.i.i.i.i.i.i74, label %.split, label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

.split:                                           ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i.i69
  br i1 %i.s, label %.critedge50, label %bb.u

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i57, i64 4
  br label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit124: ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i57, i64 8
  br label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit126: ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %.02917.i.i.i.i.i.i.i57, i64 12
  br label %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit

_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit:    ; preds = %.lr.ph.i.i.i.i.i.i.i55, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit124, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit126, %bb.p, %bb.r, %bb.t
  %.028.i.i.i.i.i.i.i60 = phi ptr [ %.1.i.i.i.i.i.i.i75, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i.i71, %bb.p ], [ %.2.i.i.i.i.i.i.i72, %bb.t ], [ %i.ah, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit126 ], [ %i.ag, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit124 ], [ %i.af, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit.loopexit.split.loop.exit ], [ %.02917.i.i.i.i.i.i.i57, %.lr.ph.i.i.i.i.i.i.i55 ]
  %i.ai = icmp eq ptr %i.u, %.028.i.i.i.i.i.i.i60
  %i.aj = xor i1 %i.s, %i.ai
  br i1 %i.aj, label %bb.u, label %.critedge50

bb.u:                                             ; preds = %.split, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit
  %i.ak = trunc i64 %3 to i32                     ; 4 uses
  %i.al = select i1 %i.s, i64 %3, i64 0
  store i32 -1, ptr %4, align 4, !tbaa !189
  store i32 -1, ptr %5, align 4, !tbaa !189
  %.not99 = icmp eq i32 %i.ak, 0
  br i1 %.not99, label %.critedge50, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.am = and i64 %3, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.an = add i64 %i.al, %indvars.iv
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !189 ; 4 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !189
  br label %.critedge

bb.w:                                             ; preds = %.lr.ph
  %i.at = udiv i32 %i.aq, %i.ak                   ; 4 uses
  %i.au = urem i32 %i.aq, %i.ak                   ; 2 uses
  %i.av = load i32, ptr %4, align 4, !tbaa !189   ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = icmp eq i32 %i.av, %i.at
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !189
  store i32 %i.at, ptr %4, align 4, !tbaa !189
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.az = load i32, ptr %5, align 4, !tbaa !189   ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = icmp eq i32 %i.az, %i.at
  %or.cond48 = or i1 %i.ba, %i.bb
  br i1 %or.cond48, label %bb.z, label %.critedge50

bb.z:                                             ; preds = %bb.y
  %i.bc = add i32 %i.au, %i.ak
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !189
  store i32 %i.at, ptr %5, align 4, !tbaa !189
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.x, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.am
  br i1 %.not, label %.critedge50, label %.lr.ph, !llvm.loop !4563

.critedge50:                                      ; preds = %bb.y, %.critedge, %bb.u, %.split, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit
  %.5 = phi i1 [ false, %_ZL16isUndefUpperHalfN4llvm8ArrayRefIiEE.exit ], [ false, %.split ], [ true, %bb.u ], [ false, %bb.y ], [ true, %.critedge ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.421") align 8 captures(none) %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, ptr noundef nonnull align 8 dereferenceable(920) %9, i1 noundef zeroext %10) unnamed_addr #1 {
bb.a:
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store ptr %1, ptr %19, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %2, ptr %i.a, align 8
  store ptr %3, ptr %20, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !454
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !299 ; 5 uses
  %i.g = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.h = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !299  ; 2 uses
  %i.k = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.g
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !294
  %i.n = add i16 %.sroa.0.0.copyload.i.i.i, -216
  %spec.select.i.i.i = icmp ult i16 %i.n, -53
  %i.o = lshr i16 %i.m, 1
  %.sroa.0.0.extract.trunc.i.i = zext nneg i16 %i.o to i32 ; 2 uses
  br i1 %spec.select.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.j, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.j, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit

_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.04.0.i.i = phi i16 [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 8 uses
  %i.r = add i16 %.sroa.04.0.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.r, 53
  br i1 %spec.select.i.i, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT26getHalfNumVectorElementsVTEv.exit
  %i.s = zext i16 %.sroa.04.0.i.i to i64
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !294  ; 2 uses
  %27 = zext i16 %i.v to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.w = icmp slt i32 %6, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.04.0.i.i, ptr null) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit"

bb.f:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.y = icmp samesign ult i32 %6, 2
  %.sroa.speculated112 = select i1 %i.y, ptr %19, ptr %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.speculated112, i64 16, i1 false)
  %i.z = trunc i32 %6 to i1
  %28 = select i1 %i.z, i32 %27, i32 0
  %29 = zext nneg i32 %28 to i64
  %i.aa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %29, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract1.i, ptr %18, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ab = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.04.0.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #38
  br label %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit"

"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit": ; preds = %bb.e, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.fca.0.extract40 = extractvalue { ptr, i32 } %.pn.i, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %.pn.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.ac = icmp slt i32 %7, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.04.0.i.i, ptr null) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit74"

bb.h:                                             ; preds = %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit"
  %i.ae = icmp samesign ult i32 %7, 2
  %.sroa.speculated = select i1 %i.ae, ptr %19, ptr %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.speculated, i64 16, i1 false)
  %i.af = trunc i32 %7 to i1
  %30 = select i1 %i.af, i32 %27, i32 0
  %31 = zext nneg i32 %30 to i64
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %31, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i69 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract2.i70 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract1.i69, ptr %15, align 8
  %.sroa.24.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract2.i70, ptr %.sroa.24.0..sroa_idx.i71, align 8
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.04.0.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #38
  br label %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit74"

"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit74": ; preds = %bb.g, %bb.h
  %.pn.i72 = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.fca.0.extract34 = extractvalue { ptr, i32 } %.pn.i72, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %.pn.i72, 1
  store ptr %.fca.0.extract34, ptr %21, align 8, !tbaa !449
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !189
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.04.0.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract40, i32 %.fca.1.extract41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %5) #38 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.ai, 0 ; 3 uses
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.ai, 1 ; 3 uses
  br i1 %10, label %bb.i, label %bb.l

bb.i:                                             ; preds = %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit74"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.04.0.i.i, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.aj, 0 ; 2 uses
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.aj, 1 ; 2 uses
  br i1 %8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.690.0 = phi i32 [ %.fca.1.extract17, %bb.j ], [ %.fca.1.extract22, %bb.i ]
  %.sroa.088.0 = phi ptr [ %.fca.0.extract16, %bb.j ], [ %.fca.0.extract21, %bb.i ]
  %.sroa.6.0 = phi i32 [ %.fca.1.extract22, %bb.j ], [ %.fca.1.extract17, %bb.i ]
  %.sroa.081.0 = phi ptr [ %.fca.0.extract21, %bb.j ], [ %.fca.0.extract16, %bb.i ]
  store ptr %.sroa.088.0, ptr %22, align 8, !tbaa !449
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.sroa.690.0, ptr %.sroa.690.0..sroa_idx, align 8, !tbaa !189
  store ptr %.sroa.081.0, ptr %23, align 8, !tbaa !449
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !189
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #38
  br label %bb.m

bb.l:                                             ; preds = %"_ZZL21getShuffleHalfVectorsRKN4llvm5SDLocENS_7SDValueES3_NS_8ArrayRefIiEEiibRNS_12SelectionDAGEbENK3$_0clEi.exit74"
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract5, ptr %24, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  store ptr %.fca.0.extract21, ptr %25, align 8, !tbaa !449
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !189
  %i.am = zext i16 %i.v to i64
  %i.an = select i1 %8, i64 %i.am, i64 0
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract1, ptr %26, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.ap, %bb.l ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZZL20splitAndLowerShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGEbENK3$_3clES6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.1144", align 8 ; 13 uses
  %4 = alloca %"class.llvm::SmallVector.1144", align 8 ; 13 uses
  %5 = alloca %"class.llvm::SmallVector.1144", align 8 ; 13 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %7 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %8 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %9 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.e = load ptr, ptr %0, align 8, !tbaa !4564, !nonnull !24, !align !3912 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !189  ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !630
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.j, align 4, !tbaa !631
  %i.k = icmp ugt i32 %i.f, 32
  br i1 %i.k, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 4) #38
  %i.l = load ptr, ptr %3, align 8, !tbaa !26
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !189
  %.pre = load ptr, ptr %0, align 8, !tbaa !4564
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.a
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit160

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit160: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit:        ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit160, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %i.m = phi ptr [ %i.e, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit160 ], [ %.pre, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit ], [ %i.e, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i ] ; 3 uses
  store i32 %i.f, ptr %i.i, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.n = load i32, ptr %i.m, align 4, !tbaa !189  ; 4 uses
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !630
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 32, ptr %i.r, align 4, !tbaa !631
  %i.s = icmp ugt i32 %i.n, 32
  br i1 %i.s, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i92

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit: ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 4) #38
  %i.t = load ptr, ptr %4, align 8, !tbaa !26
  %.idx.i.i.i.i.i.i.i98 = shl nuw nsw i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 -1, i64 %.idx.i.i.i.i.i.i.i98, i1 false), !tbaa !189
  %.pre168 = load ptr, ptr %0, align 8, !tbaa !4564
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i92:        ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit
  %.not.i93 = icmp eq i32 %i.n, 0
  br i1 %.not.i93, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit159

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit159: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i92
  %.idx.i.i.i.i.i.i94 = shl nuw nsw i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 -1, i64 %.idx.i.i.i.i.i.i94, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102:     ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit159, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i92
  %i.u = phi ptr [ %i.m, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit159 ], [ %.pre168, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102.loopexit ], [ %i.m, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i92 ] ; 3 uses
  store i32 %i.n, ptr %i.q, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.v = load i32, ptr %i.u, align 4, !tbaa !189  ; 4 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !630
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.z, align 4, !tbaa !631
  %i.aa = icmp ugt i32 %i.v, 32
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i103

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit: ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 4) #38
  %i.ab = load ptr, ptr %5, align 8, !tbaa !26
  %.idx.i.i.i.i.i.i.i109 = shl nuw nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 -1, i64 %.idx.i.i.i.i.i.i.i109, i1 false), !tbaa !189
  %.pre169 = load ptr, ptr %0, align 8, !tbaa !4564
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i103:       ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit102
  %.not.i104 = icmp eq i32 %i.v, 0
  br i1 %.not.i104, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit158

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit158: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i103
  %.idx.i.i.i.i.i.i105 = shl nuw nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 -1, i64 %.idx.i.i.i.i.i.i105, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113:     ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit158, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i103
  %i.ac = phi ptr [ %i.u, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit158 ], [ %.pre169, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113.loopexit ], [ %i.u, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i103 ] ; 4 uses
  store i32 %i.v, ptr %i.y, align 8, !tbaa !630
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !189 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit113
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !4566, !nonnull !24, !align !3912
  %i.ah = load ptr, ptr %4, align 8
  %i.ai = load ptr, ptr %5, align 8               ; 2 uses
end_hunk_0
