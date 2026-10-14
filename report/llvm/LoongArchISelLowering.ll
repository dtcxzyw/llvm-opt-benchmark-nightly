Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZL29lowerVECTOR_SHUFFLE_XVEXTRINSRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE:bb.a
  store ptr %7, ptr %i.u, align 8, !tbaa !614
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr %0, ptr %i.v, align 8, !tbaa !854
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 64
  store ptr %12, ptr %i.w, align 8, !tbaa !856
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 72
  store ptr %9, ptr %i.x, align 8, !tbaa !856
  %i.y = call fastcc { ptr, i32 } @"_ZZL29lowerVECTOR_SHUFFLE_XVEXTRINSRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEi"(ptr noundef nonnull align 8 dereferenceable(80) %13, i32 noundef 0) ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.y, 0 ; 2 uses
  %.not1 = icmp eq ptr %.fca.0.extract1, null
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.a, align 4, !tbaa !160
  %i.aa = call fastcc { ptr, i32 } @"_ZZL29lowerVECTOR_SHUFFLE_XVEXTRINSRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEi"(ptr noundef nonnull align 8 dereferenceable(80) %13, i32 noundef %i.z) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aa, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.c ], [ %i.aa, %bb.d ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract1, %bb.c ], [ %.fca.0.extract, %bb.d ]
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %bb.e
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %bb.e ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.e ], [ null, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, i16 %.374.val) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  switch i16 %3, label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread" [
    i16 77, label %.critedge
    i16 140, label %.critedge
    i16 96, label %.critedge
    i16 156, label %.critedge
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  %.not172.i = icmp sgt i32 %i.a, 0
  br i1 %.not172.i, label %.lr.ph.i, label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread"

.lr.ph.i:                                         ; preds = %.critedge
  %wide.trip.count.i = and i64 %2, 2147483647     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.0143.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.c = load i32, ptr %i.b, align 4, !tbaa !160  ; 3 uses
  %i.d = trunc i64 %indvars.iv.i to i32           ; 2 uses
  %i.e = icmp eq i32 %i.c, %i.d
  %i.f = icmp eq i32 %i.c, -1
  %or.cond1.i = or i1 %i.e, %i.f
  br i1 %or.cond1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.c, %i.a
  %i.g = icmp eq i32 %.0143.i, -1
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.d, label %.lr.ph.i43.preheader

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %.0143.i, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit", label %bb.b, !llvm.loop !1700

"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit": ; preds = %bb.d
  %.not = icmp eq i32 %.1.i, -1
  br i1 %.not, label %.lr.ph.i43.preheader, label %bb.e

.lr.ph.i43.preheader:                             ; preds = %bb.c, %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit"
  br label %.lr.ph.i43

bb.e:                                             ; preds = %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit"
  store ptr %4, ptr %8, align 8, !tbaa !365
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !160
  %i.h = sext i32 %.1.i to i64
  %i.i = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.i, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.i, 1
  store ptr %.fca.0.extract11, ptr %9, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.214.0..sroa_idx, align 8
  %i.j = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 646, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #28 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.j, 1
  br label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread"

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.preheader, %bb.g
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i51, %bb.g ], [ 0, %.lr.ph.i43.preheader ] ; 3 uses
  %.0143.i46 = phi i32 [ %.1.i50, %bb.g ], [ -1, %.lr.ph.i43.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i45
  %i.l = load i32, ptr %i.k, align 4, !tbaa !160  ; 3 uses
  %i.m = trunc i64 %indvars.iv.i45 to i32         ; 2 uses
  %i.n = add i32 %i.m, %i.a
  %i.o = icmp eq i32 %i.l, %i.n
  %i.p = icmp eq i32 %i.l, -1
  %or.cond1.i47 = or i1 %i.o, %i.p
  br i1 %or.cond1.i47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i43
  %.not.i48 = icmp eq i32 %i.l, 0
  %i.q = icmp eq i32 %.0143.i46, -1
  %or.cond.i49 = select i1 %.not.i48, i1 %i.q, i1 false
  br i1 %or.cond.i49, label %bb.g, label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread"

bb.g:                                             ; preds = %bb.f, %.lr.ph.i43
  %.1.i50 = phi i32 [ %.0143.i46, %.lr.ph.i43 ], [ %i.m, %bb.f ] ; 3 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, %wide.trip.count.i
  br i1 %exitcond.not.i52, label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53", label %.lr.ph.i43, !llvm.loop !1700

"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53": ; preds = %bb.g
  %.not37 = icmp eq i32 %.1.i50, -1
  br i1 %.not37, label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread", label %bb.h

bb.h:                                             ; preds = %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53"
  store ptr %4, ptr %10, align 8, !tbaa !365
  %.sroa.3.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %5, ptr %.sroa.3.0..sroa_idx32, align 8, !tbaa !160
  %i.r = sext i32 %.1.i50 to i64
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract1, ptr %11, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 646, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.t, 1
  br label %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread"

"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53.thread": ; preds = %bb.f, %bb.a, %.critedge, %bb.e, %bb.h, %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53"
  %.sroa.7.1 = phi i32 [ 0, %bb.a ], [ %.fca.1.extract8, %bb.e ], [ %.fca.1.extract, %bb.h ], [ 0, %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53" ], [ 0, %.critedge ], [ 0, %bb.f ]
  %.sroa.018.1 = phi ptr [ null, %bb.a ], [ %.fca.0.extract7, %bb.e ], [ %.fca.0.extract, %bb.h ], [ null, %"_ZZL28lowerVECTOR_SHUFFLE_XVINSVE0RKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGERKNS_18LoongArchSubtargetEENK3$_0clEii.exit53" ], [ null, %.critedge ], [ null, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.018.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIiLj12EEC2IivEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, i64 %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !544
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 12, ptr %i.c, align 4, !tbaa !545
  %.idx = shl nuw nsw i64 %2, 2
  %i.d = icmp ugt i64 %2, 12
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread: ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 4) #28
  %.pre8.pre.i = load i32, ptr %i.b, align 8, !tbaa !544
  %i.e = zext i32 %.pre8.pre.i to i64
  br label %bb.b

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i:    ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIiE6appendIPKivEEvT_S5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i
  %.pre8.i5 = phi i64 [ %i.e, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pre8.i5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 4 %1, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !544
  br label %_ZN4llvm15SmallVectorImplIiE6appendIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE6appendIPKivEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i, %bb.b
  %i.h = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i ], [ %.pre.i, %bb.b ]
  %i.i = trunc i64 %2 to i32
  %i.j = add i32 %i.h, %i.i
  store i32 %i.j, ptr %i.b, align 8, !tbaa !544
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS_15MutableArrayRefIiEENS_3MVTERNS_7SDValueES7_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree %1, i64 %2, i16 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %.374.val) unnamed_addr #1 {
bb.a:
  %7 = ptrtoaddr ptr %1 to i64                    ; 12 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %.fr87 = freeze i64 %2                          ; 3 uses
  %i.a = trunc i64 %.fr87 to i32                  ; 52 uses
  %i.b = lshr i64 %.fr87, 1                       ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 46 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.d = ashr exact i64 %sext, 30                 ; 20 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 17 uses
  %i.f = ashr i64 %sext, 34                       ; 3 uses
  %i.g = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.h = and i64 %i.d, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %1, i64 %i.h
  %invariant.smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0) ; 4 uses
  %i.i = add nsw i32 %i.c, %i.a                   ; 4 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i", %.lr.ph.preheader.i.i.i.i
  %.090.i.i.i.i = phi i64 [ %i.r, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i" ], [ %i.f, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02989.i.i.i.i = phi ptr [ %i.q, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i" ], [ %1, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val46.i.i.i.i = load i32, ptr %.02989.i.i.i.i, align 4, !tbaa !160 ; 3 uses
  %or.cond.i = icmp slt i32 %.029.val46.i.i.i.i, %invariant.smax.i
  br i1 %or.cond.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit.thread.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp slt i32 %.029.val46.i.i.i.i, %i.a
  %i.j = icmp sge i32 %.029.val46.i.i.i.i, %i.i
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit.thread.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 4
  %.val43.i.i.i.i = load i32, ptr %i.k, align 4, !tbaa !160 ; 3 uses
  %or.cond3.i = icmp slt i32 %.val43.i.i.i.i, %invariant.smax.i
  br i1 %or.cond3.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit48.thread.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit.thread.i.i.i.i"
  %.not.i.i47.i.i.i.i = icmp slt i32 %.val43.i.i.i.i, %i.a
  %i.l = icmp sge i32 %.val43.i.i.i.i, %i.i
  %or.cond68.i.i.i.i = select i1 %.not.i.i47.i.i.i.i, i1 true, i1 %i.l
  br i1 %or.cond68.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit48.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit48.thread.i.i.i.i": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit.thread.i.i.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 8
  %.val40.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !160 ; 3 uses
  %or.cond4.i = icmp slt i32 %.val40.i.i.i.i, %invariant.smax.i
  br i1 %or.cond4.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit50.thread.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit48.thread.i.i.i.i"
  %.not.i.i49.i.i.i.i = icmp slt i32 %.val40.i.i.i.i, %i.a
  %i.n = icmp sge i32 %.val40.i.i.i.i, %i.i
  %or.cond70.i.i.i.i = select i1 %.not.i.i49.i.i.i.i, i1 true, i1 %i.n
  br i1 %or.cond70.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit170", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit50.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit50.thread.i.i.i.i": ; preds = %bb.d, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit48.thread.i.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 12
  %.val37.i.i.i.i = load i32, ptr %i.o, align 4, !tbaa !160 ; 3 uses
  %or.cond5.i = icmp slt i32 %.val37.i.i.i.i, %invariant.smax.i
  br i1 %or.cond5.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit50.thread.i.i.i.i"
  %.not.i.i51.i.i.i.i = icmp slt i32 %.val37.i.i.i.i, %i.a
  %i.p = icmp sge i32 %.val37.i.i.i.i, %i.i
  %or.cond72.i.i.i.i = select i1 %.not.i.i51.i.i.i.i, i1 true, i1 %i.p
  br i1 %or.cond72.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit172", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i": ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit50.thread.i.i.i.i"
  %i.q = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 16
  %i.r = add nsw i64 %.090.i.i.i.i, -1
  %i.s = icmp sgt i64 %.090.i.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1701

._crit_edge.loopexit.i.i.i.i:                     ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit52.thread.i.i.i.i"
  %gepdiff = and i64 %i.d, 12
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi96.i.i.i.i = phi i64 [ %gepdiff, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.t = ashr exact i64 %.pre-phi96.i.i.i.i, 2
  switch i64 %i.t, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.thread" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !160 ; 4 uses
  %i.u = icmp slt i32 %.029.val.i.i.i.i, 0
  %i.v = icmp slt i32 %.029.val.i.i.i.i, %i.c
  %or.cond6.i = or i1 %i.u, %i.v
  br i1 %or.cond6.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit54.thread.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i53.i.i.i.i = icmp slt i32 %.029.val.i.i.i.i, %i.a
  %i.w = add nsw i32 %i.c, %i.a
  %i.x = icmp sge i32 %.029.val.i.i.i.i, %i.w
  %or.cond74.i.i.i.i = select i1 %.not.i.i53.i.i.i.i, i1 true, i1 %i.x
  br i1 %or.cond74.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit54.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit54.thread.i.i.i.i": ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit54.thread.i.i.i.i", %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.y, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit54.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !160 ; 4 uses
  %i.z = icmp slt i32 %.1.val.i.i.i.i, 0
  %i.aa = icmp slt i32 %.1.val.i.i.i.i, %i.c
  %or.cond7.i = or i1 %i.z, %i.aa
  br i1 %or.cond7.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit56.thread.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i55.i.i.i.i = icmp slt i32 %.1.val.i.i.i.i, %i.a
  %i.ab = add nsw i32 %i.c, %i.a
  %i.ac = icmp sge i32 %.1.val.i.i.i.i, %i.ab
  %or.cond76.i.i.i.i = select i1 %.not.i.i55.i.i.i.i, i1 true, i1 %i.ac
  br i1 %or.cond76.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit56.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit56.thread.i.i.i.i": ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit56.thread.i.i.i.i", %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ad, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_0EclIPiEEbT_.exit56.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !160 ; 4 uses
  %i.ae = icmp slt i32 %.2.val.i.i.i.i, 0
  %i.af = icmp slt i32 %.2.val.i.i.i.i, %i.c
  %or.cond8.i = or i1 %i.ae, %i.af
  br i1 %or.cond8.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.thread", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i57.i.i.i.i = icmp slt i32 %.2.val.i.i.i.i, %i.a
  %i.ag = add nsw i32 %i.c, %i.a
  %i.ah = icmp sge i32 %.2.val.i.i.i.i, %i.ag
  %or.cond78.i.i.i.i = select i1 %.not.i.i57.i.i.i.i, i1 true, i1 %i.ah
  br i1 %or.cond78.i.i.i.i, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit", label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.thread"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 4
  br label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit170": ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit172": ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i, i64 12
  br label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit": ; preds = %bb.b, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit170", %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit172", %bb.g, %bb.i, %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.i ], [ %.2.i.i.i.i, %bb.k ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %i.ak, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit172" ], [ %i.aj, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit170" ], [ %i.ai, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.loopexit.split.loop.exit" ], [ %.02989.i.i.i.i, %bb.b ]
  %i.al = icmp eq ptr %i.e, %.028.i.i.i.i
  br i1 %i.al, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit.thread", label %bb.l

bb.l:                                             ; preds = %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_0EbT_SG_T0_.exit"
  br i1 %i.g, label %.lr.ph.preheader.i.i.i.i355, label %._crit_edge.i.i.i.i347

.lr.ph.preheader.i.i.i.i355:                      ; preds = %bb.l
  %i.am = and i64 %i.d, -16
  %scevgep.i.i.i.i356 = getelementptr i8, ptr %1, i64 %i.am
  %i.an = add nsw i32 %i.c, %i.a                  ; 4 uses
  %i.ao = shl nsw i32 %i.a, 1                     ; 4 uses
  br label %.lr.ph.i.i.i.i357

.lr.ph.i.i.i.i357:                                ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit61.thread.i.i.i.i", %.lr.ph.preheader.i.i.i.i355
  %.0108.i.i.i.i = phi i64 [ %i.bf, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit61.thread.i.i.i.i" ], [ %i.f, %.lr.ph.preheader.i.i.i.i355 ] ; 2 uses
  %.029107.i.i.i.i = phi ptr [ %i.be, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit61.thread.i.i.i.i" ], [ %1, %.lr.ph.preheader.i.i.i.i355 ] ; 9 uses
  %.029.val46.i.i.i.i358 = load i32, ptr %.029107.i.i.i.i, align 4, !tbaa !160 ; 5 uses
  %i.ap = icmp slt i32 %.029.val46.i.i.i.i358, 0
  br i1 %i.ap, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit.thread.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i357
  %.not.i.i.i.i.i.i359 = icmp sge i32 %.029.val46.i.i.i.i358, %i.c
  %i.aq = icmp slt i32 %.029.val46.i.i.i.i358, %i.a
  %or.cond.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i359, %i.aq
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit.thread.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i.i.i.i.i.i = icmp slt i32 %.029.val46.i.i.i.i358, %i.an
  %i.ar = icmp sge i32 %.029.val46.i.i.i.i358, %i.ao
  %or.cond.i.i.i.i360 = select i1 %.not5.i.i.i.i.i.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i.i360, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_1EbT_SG_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit.thread.i.i.i.i": ; preds = %bb.n, %bb.m, %.lr.ph.i.i.i.i357
  %i.as = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i, i64 4
  %.val43.i.i.i.i361 = load i32, ptr %i.as, align 4, !tbaa !160 ; 5 uses
  %i.at = icmp slt i32 %.val43.i.i.i.i361, 0
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit51.thread.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit.thread.i.i.i.i"
  %.not.i.i47.i.i.i.i362 = icmp sge i32 %.val43.i.i.i.i361, %i.c
  %i.au = icmp slt i32 %.val43.i.i.i.i361, %i.a
  %or.cond.i.i49.i.i.i.i = and i1 %.not.i.i47.i.i.i.i362, %i.au
  br i1 %or.cond.i.i49.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_1EclIPiEEbT_.exit51.thread.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not5.i.i50.i.i.i.i = icmp slt i32 %.val43.i.i.i.i361, %i.an
  %i.av = icmp sge i32 %.val43.i.i.i.i361, %i.ao
end_hunk_0
begin_hunk_1_@_ZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS_15MutableArrayRefIiEENS_3MVTERNS_7SDValueES7_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE:bb.a
  br i1 %i.dr, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i.i72.i.i.i.i373 = icmp sge i32 %.2.val.i.i.i.i372, %i.c
  %i.ds = icmp slt i32 %.2.val.i.i.i.i372, %i.a
  %or.cond.i.i74.i.i.i.i374 = and i1 %.not.i.i72.i.i.i.i373, %i.ds
  br i1 %or.cond.i.i74.i.i.i.i374, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = add nsw i32 %i.c, %i.a
  %.not5.i.i75.i.i.i.i375 = icmp slt i32 %.2.val.i.i.i.i372, %i.dt
  %i.du = shl nsw i32 %i.a, 1
  %i.dv = icmp sge i32 %.2.val.i.i.i.i372, %i.du
  %or.cond96.i.i.i.i376 = select i1 %.not5.i.i75.i.i.i.i375, i1 true, i1 %i.dv
  br i1 %or.cond96.i.i.i.i376, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit", label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i393, i64 4
  br label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit186": ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i393, i64 8
  br label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit188": ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i393, i64 12
  br label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit"

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit": ; preds = %bb.ae, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit186", %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit188", %bb.an, %bb.aq, %bb.at
  %.028.i.i.i.i377 = phi ptr [ %.1.i.i.i.i378, %bb.aq ], [ %.2.i.i.i.i371, %bb.at ], [ %.029.lcssa.i.i.i.i370, %bb.an ], [ %i.dy, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit188" ], [ %i.dx, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit186" ], [ %i.dw, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.loopexit.split.loop.exit" ], [ %.029107.i.i.i.i393, %bb.ae ]
  %i.dz = icmp eq ptr %i.cf, %.028.i.i.i.i377
  br i1 %i.dz, label %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread", label %bb.au

bb.au:                                            ; preds = %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit"
  br i1 %i.ch, label %.lr.ph.preheader.i.i.i.i436, label %._crit_edge.i.i.i.i418

.lr.ph.preheader.i.i.i.i436:                      ; preds = %bb.au
  %i.ea = and i64 %gepdiff89, -16                 ; 2 uses
  %scevgep.i.i.i.i437 = getelementptr i8, ptr %i.e, i64 %i.ea
  %invariant.smax.i438 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0) ; 4 uses
  %i.eb = add nsw i32 %i.c, %i.a                  ; 4 uses
  br label %.lr.ph.i.i.i.i439

.lr.ph.i.i.i.i439:                                ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i", %.lr.ph.preheader.i.i.i.i436
  %.090.i.i.i.i440 = phi i64 [ %i.ek, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i" ], [ %i.cg, %.lr.ph.preheader.i.i.i.i436 ] ; 2 uses
  %.02989.i.i.i.i441 = phi ptr [ %i.ej, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i" ], [ %i.e, %.lr.ph.preheader.i.i.i.i436 ] ; 9 uses
  %.029.val46.i.i.i.i442 = load i32, ptr %.02989.i.i.i.i441, align 4, !tbaa !160 ; 3 uses
  %or.cond.i443 = icmp slt i32 %.029.val46.i.i.i.i442, %invariant.smax.i438
  br i1 %or.cond.i443, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit.thread.i.i.i.i", label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i439
  %.not.i.i.i.i.i.i444 = icmp slt i32 %.029.val46.i.i.i.i442, %i.a
  %i.ec = icmp sge i32 %.029.val46.i.i.i.i442, %i.eb
  %or.cond.i.i.i.i445 = select i1 %.not.i.i.i.i.i.i444, i1 true, i1 %i.ec
  br i1 %or.cond.i.i.i.i445, label %.loopexit169, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit.thread.i.i.i.i": ; preds = %bb.av, %.lr.ph.i.i.i.i439
  %i.ed = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 4
  %.val43.i.i.i.i446 = load i32, ptr %i.ed, align 4, !tbaa !160 ; 3 uses
  %or.cond3.i447 = icmp slt i32 %.val43.i.i.i.i446, %invariant.smax.i438
  br i1 %or.cond3.i447, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit48.thread.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit.thread.i.i.i.i"
  %.not.i.i47.i.i.i.i448 = icmp slt i32 %.val43.i.i.i.i446, %i.a
  %i.ee = icmp sge i32 %.val43.i.i.i.i446, %i.eb
  %or.cond68.i.i.i.i449 = select i1 %.not.i.i47.i.i.i.i448, i1 true, i1 %i.ee
  br i1 %or.cond68.i.i.i.i449, label %.loopexit169.split.loop.exit198, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit48.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit48.thread.i.i.i.i": ; preds = %bb.aw, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit.thread.i.i.i.i"
  %i.ef = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 8
  %.val40.i.i.i.i450 = load i32, ptr %i.ef, align 4, !tbaa !160 ; 3 uses
  %or.cond4.i451 = icmp slt i32 %.val40.i.i.i.i450, %invariant.smax.i438
  br i1 %or.cond4.i451, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit50.thread.i.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit48.thread.i.i.i.i"
  %.not.i.i49.i.i.i.i452 = icmp slt i32 %.val40.i.i.i.i450, %i.a
  %i.eg = icmp sge i32 %.val40.i.i.i.i450, %i.eb
  %or.cond70.i.i.i.i453 = select i1 %.not.i.i49.i.i.i.i452, i1 true, i1 %i.eg
  br i1 %or.cond70.i.i.i.i453, label %.loopexit169.split.loop.exit196, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit50.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit50.thread.i.i.i.i": ; preds = %bb.ax, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit48.thread.i.i.i.i"
  %i.eh = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 12
  %.val37.i.i.i.i454 = load i32, ptr %i.eh, align 4, !tbaa !160 ; 3 uses
  %or.cond5.i455 = icmp slt i32 %.val37.i.i.i.i454, %invariant.smax.i438
  br i1 %or.cond5.i455, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i", label %bb.ay

bb.ay:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit50.thread.i.i.i.i"
  %.not.i.i51.i.i.i.i456 = icmp slt i32 %.val37.i.i.i.i454, %i.a
  %i.ei = icmp sge i32 %.val37.i.i.i.i454, %i.eb
  %or.cond72.i.i.i.i457 = select i1 %.not.i.i51.i.i.i.i456, i1 true, i1 %i.ei
  br i1 %or.cond72.i.i.i.i457, label %.loopexit169.split.loop.exit194, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i": ; preds = %bb.ay, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit50.thread.i.i.i.i"
  %i.ej = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 16
  %i.ek = add nsw i64 %.090.i.i.i.i440, -1
  %i.el = icmp sgt i64 %.090.i.i.i.i440, 1
  br i1 %i.el, label %.lr.ph.i.i.i.i439, label %._crit_edge.loopexit.i.i.i.i458, !llvm.loop !1704

._crit_edge.loopexit.i.i.i.i458:                  ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit52.thread.i.i.i.i"
  %i.em = add i64 %i.d, %i.ea
  %gepdiff91 = sub i64 %.idx, %i.em
  br label %._crit_edge.i.i.i.i418

._crit_edge.i.i.i.i418:                           ; preds = %._crit_edge.loopexit.i.i.i.i458, %bb.au
  %.pre-phi96.i.i.i.i419 = phi i64 [ %gepdiff91, %._crit_edge.loopexit.i.i.i.i458 ], [ %gepdiff89, %bb.au ]
  %.029.lcssa.i.i.i.i420 = phi ptr [ %scevgep.i.i.i.i437, %._crit_edge.loopexit.i.i.i.i458 ], [ %i.e, %bb.au ] ; 5 uses
  %i.en = ashr exact i64 %.pre-phi96.i.i.i.i419, 2
  switch i64 %i.en, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit58.thread.i.i.i.i" [
    i64 3, label %bb.az
    i64 2, label %bb.bb
    i64 1, label %bb.bd
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i.i418
  %.029.val.i.i.i.i432 = load i32, ptr %.029.lcssa.i.i.i.i420, align 4, !tbaa !160 ; 4 uses
  %i.eo = icmp slt i32 %.029.val.i.i.i.i432, 0
  %i.ep = icmp slt i32 %.029.val.i.i.i.i432, %i.c
  %or.cond6.i433 = or i1 %i.eo, %i.ep
  br i1 %or.cond6.i433, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit54.thread.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i53.i.i.i.i434 = icmp slt i32 %.029.val.i.i.i.i432, %i.a
  %i.eq = add nsw i32 %i.c, %i.a
  %i.er = icmp sge i32 %.029.val.i.i.i.i432, %i.eq
  %or.cond74.i.i.i.i435 = select i1 %.not.i.i53.i.i.i.i434, i1 true, i1 %i.er
  br i1 %or.cond74.i.i.i.i435, label %.loopexit169, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit54.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit54.thread.i.i.i.i": ; preds = %bb.ba, %bb.az
  %i.es = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i420, i64 4
  br label %bb.bb

bb.bb:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit54.thread.i.i.i.i", %._crit_edge.i.i.i.i418
  %.1.i.i.i.i427 = phi ptr [ %i.es, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit54.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i420, %._crit_edge.i.i.i.i418 ] ; 3 uses
  %.1.val.i.i.i.i428 = load i32, ptr %.1.i.i.i.i427, align 4, !tbaa !160 ; 4 uses
  %i.et = icmp slt i32 %.1.val.i.i.i.i428, 0
  %i.eu = icmp slt i32 %.1.val.i.i.i.i428, %i.c
  %or.cond7.i429 = or i1 %i.et, %i.eu
  br i1 %or.cond7.i429, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit56.thread.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i55.i.i.i.i430 = icmp slt i32 %.1.val.i.i.i.i428, %i.a
  %i.ev = add nsw i32 %i.c, %i.a
  %i.ew = icmp sge i32 %.1.val.i.i.i.i428, %i.ev
  %or.cond76.i.i.i.i431 = select i1 %.not.i.i55.i.i.i.i430, i1 true, i1 %i.ew
  br i1 %or.cond76.i.i.i.i431, label %.loopexit169, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit56.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit56.thread.i.i.i.i": ; preds = %bb.bc, %bb.bb
  %i.ex = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i427, i64 4
  br label %bb.bd

bb.bd:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit56.thread.i.i.i.i", %._crit_edge.i.i.i.i418
  %.2.i.i.i.i421 = phi ptr [ %i.ex, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit56.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i420, %._crit_edge.i.i.i.i418 ] ; 2 uses
  %.2.val.i.i.i.i422 = load i32, ptr %.2.i.i.i.i421, align 4, !tbaa !160 ; 4 uses
  %i.ey = icmp slt i32 %.2.val.i.i.i.i422, 0
  %i.ez = icmp slt i32 %.2.val.i.i.i.i422, %i.c
  %or.cond8.i423 = or i1 %i.ey, %i.ez
  br i1 %or.cond8.i423, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit58.thread.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i.i57.i.i.i.i424 = icmp slt i32 %.2.val.i.i.i.i422, %i.a
  %i.fa = add nsw i32 %i.c, %i.a
  %i.fb = icmp sge i32 %.2.val.i.i.i.i422, %i.fa
  %or.cond78.i.i.i.i425 = select i1 %.not.i.i57.i.i.i.i424, i1 true, i1 %i.fb
  br i1 %or.cond78.i.i.i.i425, label %.loopexit169, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit58.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit58.thread.i.i.i.i": ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i.i418
  br label %.loopexit169

"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread": ; preds = %bb.at, %bb.as, %bb.ar, %._crit_edge.i.i.i.i368, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit"
  %.not = xor i1 %i.ce, true
  %brmerge = select i1 %i.cd, i1 true, i1 %.not
  br i1 %brmerge, label %.loopexit, label %bb.bi

.loopexit169.split.loop.exit194:                  ; preds = %bb.ay
  %i.fc = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 12
  br label %.loopexit169

.loopexit169.split.loop.exit196:                  ; preds = %bb.ax
  %i.fd = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 8
  br label %.loopexit169

.loopexit169.split.loop.exit198:                  ; preds = %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %.02989.i.i.i.i441, i64 4
  br label %.loopexit169

.loopexit169:                                     ; preds = %bb.av, %.loopexit169.split.loop.exit194, %.loopexit169.split.loop.exit196, %.loopexit169.split.loop.exit198, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit58.thread.i.i.i.i", %bb.be, %bb.bc, %bb.ba
  %.028.i.i.i.i426 = phi ptr [ %i.cf, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS2_15MutableArrayRefIiEENS2_3MVTERNS2_7SDValueESA_RNS2_12SelectionDAGERKNS2_18LoongArchSubtargetEE3$_3EclIPiEEbT_.exit58.thread.i.i.i.i" ], [ %.2.i.i.i.i421, %bb.be ], [ %.029.lcssa.i.i.i.i420, %bb.ba ], [ %.1.i.i.i.i427, %bb.bc ], [ %i.fd, %.loopexit169.split.loop.exit196 ], [ %i.fc, %.loopexit169.split.loop.exit194 ], [ %i.fe, %.loopexit169.split.loop.exit198 ], [ %.02989.i.i.i.i441, %bb.av ]
  %i.ff = icmp eq ptr %i.cf, %.028.i.i.i.i426     ; 2 uses
  %or.cond3 = and i1 %i.ce, %i.ff
  br i1 %or.cond3, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %.loopexit169
  %.sroa.0216.0.copyload = load ptr, ptr %4, align 8, !tbaa !365
  %.sroa.2217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.2217.0.copyload = load i32, ptr %.sroa.2217.0..sroa_idx, align 8, !tbaa !160
  %i.fg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %.sroa.0216.0.copyload, i32 %.sroa.2217.0.copyload) #28 ; 2 uses
  %.fca.0.extract212 = extractvalue { ptr, i32 } %i.fg, 0
  %.fca.1.extract213 = extractvalue { ptr, i32 } %i.fg, 1
  store ptr %.fca.0.extract212, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract213, ptr %.sroa.2217.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !497
  %i.fh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 78, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract204 = extractvalue { ptr, i32 } %i.fh, 0
  %.fca.1.extract205 = extractvalue { ptr, i32 } %i.fh, 1
  store ptr %.fca.0.extract204, ptr %9, align 8
  %.sroa.2207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract205, ptr %.sroa.2207.0..sroa_idx, align 8
  %i.fi = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #28 ; 2 uses
  %.fca.0.extract200 = extractvalue { ptr, i32 } %i.fi, 0 ; 2 uses
  %.fca.1.extract201 = extractvalue { ptr, i32 } %i.fi, 1 ; 2 uses
  store ptr %.fca.0.extract200, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract201, ptr %.sroa.2217.0..sroa_idx, align 8, !tbaa !160
  %i.fj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract200, i32 %.fca.1.extract201) #28 ; 2 uses
  %.fca.0.extract189 = extractvalue { ptr, i32 } %i.fj, 0
  %.fca.1.extract190 = extractvalue { ptr, i32 } %i.fj, 1
  store ptr %.fca.0.extract189, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract190, ptr %.sroa.2217.0..sroa_idx, align 8, !tbaa !160
  %i.fk = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !179
  %i.fn = add i32 %i.fm, -53
  %spec.select.i.i = icmp ult i32 %i.fn, 2
  br i1 %spec.select.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.2184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.2184.0.copyload = load i32, ptr %.sroa.2184.0..sroa_idx, align 8, !tbaa !160
  %i.fo = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr nonnull %i.fk, i32 %.sroa.2184.0.copyload) #28 ; 2 uses
  %.fca.0.extract179 = extractvalue { ptr, i32 } %i.fo, 0
  %.fca.1.extract180 = extractvalue { ptr, i32 } %i.fo, 1
  store ptr %.fca.0.extract179, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract180, ptr %.sroa.2184.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !497
  %i.fp = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 78, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract171 = extractvalue { ptr, i32 } %i.fp, 0
  %.fca.1.extract172 = extractvalue { ptr, i32 } %i.fp, 1
  store ptr %.fca.0.extract171, ptr %11, align 8
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract172, ptr %.sroa.2174.0..sroa_idx, align 8
  %i.fq = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #28 ; 2 uses
  %.fca.0.extract167 = extractvalue { ptr, i32 } %i.fq, 0 ; 2 uses
  %.fca.1.extract168 = extractvalue { ptr, i32 } %i.fq, 1 ; 2 uses
  store ptr %.fca.0.extract167, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract168, ptr %.sroa.2184.0..sroa_idx, align 8, !tbaa !160
  %i.fr = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract167, i32 %.fca.1.extract168) #28 ; 2 uses
  %.fca.0.extract156 = extractvalue { ptr, i32 } %i.fr, 0
  %.fca.1.extract157 = extractvalue { ptr, i32 } %i.fr, 1
  store ptr %.fca.0.extract156, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract157, ptr %.sroa.2184.0..sroa_idx, align 8, !tbaa !160
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fs = icmp sgt i64 %i.d, 0
  br i1 %i.fs, label %.lr.ph134.preheader, label %.preheader

.lr.ph134.preheader:                              ; preds = %bb.bh
  %i.ft = add i64 %i.d, %7
  %i.fu = add i64 %7, 4
  %i.fv = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 %i.fu)
  %i.fw = xor i64 %7, -1
  %i.fx = add i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 2
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check222 = icmp ult i64 %i.fx, 28
  br i1 %min.iters.check222, label %.lr.ph134.preheader269, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph134.preheader
  %n.vec224 = and i64 %i.fz, 9223372036854775800  ; 3 uses
  %i.ga = shl i64 %n.vec224, 2
  %i.gb = getelementptr i8, ptr %1, i64 %i.ga
  %broadcast.splatinsert225 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat226 = shufflevector <4 x i32> %broadcast.splatinsert225, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph223
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next232, %vector.body227 ] ; 2 uses
  %i.gc = shl i64 %index228, 2
  %next.gep229 = getelementptr i8, ptr %1, i64 %i.gc ; 3 uses
  %i.gd = getelementptr i8, ptr %next.gep229, i64 16 ; 2 uses
  %wide.load230 = load <4 x i32>, ptr %next.gep229, align 4, !tbaa !160 ; 2 uses
  %wide.load231 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !160 ; 2 uses
  %i.ge = icmp slt <4 x i32> %wide.load230, zeroinitializer
  %i.gf = icmp slt <4 x i32> %wide.load231, zeroinitializer
  %i.gg = select <4 x i1> %i.ge, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat226
  %i.gh = select <4 x i1> %i.gf, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat226
  %i.gi = sub nsw <4 x i32> %wide.load230, %i.gg
  %i.gj = sub nsw <4 x i32> %wide.load231, %i.gh
  store <4 x i32> %i.gi, ptr %next.gep229, align 4, !tbaa !160
  store <4 x i32> %i.gj, ptr %i.gd, align 4, !tbaa !160
  %index.next232 = add nuw i64 %index228, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next232, %n.vec224
  br i1 %i.gk, label %middle.block233, label %vector.body227, !llvm.loop !1705

middle.block233:                                  ; preds = %vector.body227
  %cmp.n234 = icmp eq i64 %i.fz, %n.vec224
  br i1 %cmp.n234, label %.preheader, label %.lr.ph134.preheader269

.lr.ph134.preheader269:                           ; preds = %.lr.ph134.preheader, %middle.block233
  %.0329133.ph = phi ptr [ %1, %.lr.ph134.preheader ], [ %i.gb, %middle.block233 ]
  br label %.lr.ph134

.preheader:                                       ; preds = %.lr.ph134, %middle.block233, %bb.bh
  %i.gl = icmp slt i64 %i.d, %.idx
  br i1 %i.gl, label %.lr.ph136.preheader, label %.loopexit

.lr.ph136.preheader:                              ; preds = %.preheader
  %i.gm = add i64 %i.d, %7
  %i.gn = add i64 %i.gm, 4
  %i.go = add i64 %.idx, %7
  %i.gp = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 %i.go)
  %i.gq = xor i64 %7, -1
  %i.gr = add i64 %i.gp, %i.gq
  %i.gs = sub i64 %i.gr, %i.d                     ; 2 uses
  %i.gt = lshr i64 %i.gs, 2
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.gs, 28
  br i1 %min.iters.check237, label %.lr.ph136.preheader267, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph136.preheader
  %n.vec239 = and i64 %i.gu, 9223372036854775800  ; 3 uses
  %i.gv = shl i64 %n.vec239, 2
  %i.gw = getelementptr i8, ptr %i.e, i64 %i.gv
  %broadcast.splatinsert240 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat241 = shufflevector <4 x i32> %broadcast.splatinsert240, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph238
  %index243 = phi i64 [ 0, %vector.ph238 ], [ %index.next247, %vector.body242 ] ; 2 uses
  %i.gx = shl i64 %index243, 2
  %next.gep244 = getelementptr i8, ptr %i.e, i64 %i.gx ; 3 uses
  %i.gy = getelementptr i8, ptr %next.gep244, i64 16 ; 2 uses
  %wide.load245 = load <4 x i32>, ptr %next.gep244, align 4, !tbaa !160 ; 2 uses
  %wide.load246 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !160 ; 2 uses
  %i.gz = icmp slt <4 x i32> %wide.load245, zeroinitializer
  %i.ha = icmp slt <4 x i32> %wide.load246, zeroinitializer
  %i.hb = select <4 x i1> %i.gz, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat241
  %i.hc = select <4 x i1> %i.ha, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat241
  %i.hd = add nsw <4 x i32> %i.hb, %wide.load245
  %i.he = add nsw <4 x i32> %i.hc, %wide.load246
  store <4 x i32> %i.hd, ptr %next.gep244, align 4, !tbaa !160
  store <4 x i32> %i.he, ptr %i.gy, align 4, !tbaa !160
  %index.next247 = add nuw i64 %index243, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next247, %n.vec239
  br i1 %i.hf, label %middle.block248, label %vector.body242, !llvm.loop !1706

middle.block248:                                  ; preds = %vector.body242
  %cmp.n249 = icmp eq i64 %i.gu, %n.vec239
  br i1 %cmp.n249, label %.loopexit, label %.lr.ph136.preheader267

.lr.ph136.preheader267:                           ; preds = %.lr.ph136.preheader, %middle.block248
  %.0330135.ph = phi ptr [ %i.e, %.lr.ph136.preheader ], [ %i.gw, %middle.block248 ]
  br label %.lr.ph136

.lr.ph134:                                        ; preds = %.lr.ph134.preheader269, %.lr.ph134
  %.0329133 = phi ptr [ %i.hk, %.lr.ph134 ], [ %.0329133.ph, %.lr.ph134.preheader269 ] ; 3 uses
  %i.hg = load i32, ptr %.0329133, align 4, !tbaa !160 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 0
  %i.hi = select i1 %i.hh, i32 0, i32 %i.c
  %i.hj = sub nsw i32 %i.hg, %i.hi
  store i32 %i.hj, ptr %.0329133, align 4, !tbaa !160
  %i.hk = getelementptr inbounds nuw i8, ptr %.0329133, i64 4 ; 2 uses
  %i.hl = icmp ult ptr %i.hk, %i.e
  br i1 %i.hl, label %.lr.ph134, label %.preheader, !llvm.loop !1707

.lr.ph136:                                        ; preds = %.lr.ph136.preheader267, %.lr.ph136
  %.0330135 = phi ptr [ %i.hq, %.lr.ph136 ], [ %.0330135.ph, %.lr.ph136.preheader267 ] ; 3 uses
  %i.hm = load i32, ptr %.0330135, align 4, !tbaa !160 ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 0
  %i.ho = select i1 %i.hn, i32 0, i32 %i.c
  %i.hp = add nsw i32 %i.ho, %i.hm
  store i32 %i.hp, ptr %.0330135, align 4, !tbaa !160
  %i.hq = getelementptr inbounds nuw i8, ptr %.0330135, i64 4 ; 2 uses
  %i.hr = icmp ult ptr %i.hq, %i.cf
  br i1 %i.hr, label %.lr.ph136, label %.loopexit, !llvm.loop !1708

bb.bi:                                            ; preds = %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread"
  %.sroa.0138.0.copyload = load ptr, ptr %4, align 8, !tbaa !365
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.2139.0.copyload = load i32, ptr %.sroa.2139.0..sroa_idx, align 8, !tbaa !160
  %i.hs = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %.sroa.0138.0.copyload, i32 %.sroa.2139.0.copyload) #28 ; 2 uses
  %.fca.0.extract134 = extractvalue { ptr, i32 } %i.hs, 0
  %.fca.1.extract135 = extractvalue { ptr, i32 } %i.hs, 1
  store ptr %.fca.0.extract134, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract135, ptr %.sroa.2139.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !497
  %i.ht = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 238, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract126 = extractvalue { ptr, i32 } %i.ht, 0
  %.fca.1.extract127 = extractvalue { ptr, i32 } %i.ht, 1
  store ptr %.fca.0.extract126, ptr %13, align 8
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract127, ptr %.sroa.2129.0..sroa_idx, align 8
  %i.hu = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #28 ; 2 uses
  %.fca.0.extract122 = extractvalue { ptr, i32 } %i.hu, 0 ; 2 uses
  %.fca.1.extract123 = extractvalue { ptr, i32 } %i.hu, 1 ; 2 uses
  store ptr %.fca.0.extract122, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract123, ptr %.sroa.2139.0..sroa_idx, align 8, !tbaa !160
  %i.hv = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract122, i32 %.fca.1.extract123) #28 ; 2 uses
  %.fca.0.extract111 = extractvalue { ptr, i32 } %i.hv, 0
  %.fca.1.extract112 = extractvalue { ptr, i32 } %i.hv, 1
  store ptr %.fca.0.extract111, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract112, ptr %.sroa.2139.0..sroa_idx, align 8, !tbaa !160
  %i.hw = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !179
  %i.hz = add i32 %i.hy, -53
  %spec.select.i.i461 = icmp ult i32 %i.hz, 2
  br i1 %spec.select.i.i461, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.2106.0.copyload = load i32, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !160
  %i.ia = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr nonnull %i.hw, i32 %.sroa.2106.0.copyload) #28 ; 2 uses
  %.fca.0.extract101 = extractvalue { ptr, i32 } %i.ia, 0
  %.fca.1.extract102 = extractvalue { ptr, i32 } %i.ia, 1
  store ptr %.fca.0.extract101, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract102, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !497
  %i.ib = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 238, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract93 = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract94 = extractvalue { ptr, i32 } %i.ib, 1
  store ptr %.fca.0.extract93, ptr %15, align 8
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract94, ptr %.sroa.296.0..sroa_idx, align 8
  %i.ic = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #28 ; 2 uses
  %.fca.0.extract89 = extractvalue { ptr, i32 } %i.ic, 0 ; 2 uses
  %.fca.1.extract90 = extractvalue { ptr, i32 } %i.ic, 1 ; 2 uses
  store ptr %.fca.0.extract89, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract90, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !160
  %i.id = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract89, i32 %.fca.1.extract90) #28 ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.id, 0
  %.fca.1.extract79 = extractvalue { ptr, i32 } %i.id, 1
  store ptr %.fca.0.extract78, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract79, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !160
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ie = icmp sgt i64 %i.d, 0
  br i1 %i.ie, label %.lr.ph132.preheader, label %.loopexit

.lr.ph132.preheader:                              ; preds = %bb.bk
  %i.if = add i64 %i.d, %7
  %i.ig = add i64 %7, 4
  %i.ih = tail call i64 @llvm.umax.i64(i64 %i.if, i64 %i.ig)
  %i.ii = xor i64 %7, -1
  %i.ij = add i64 %i.ih, %i.ii                    ; 2 uses
  %i.ik = lshr i64 %i.ij, 2
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ij, 28
  br i1 %min.iters.check252, label %.lr.ph132.preheader266, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph132.preheader
  %n.vec254 = and i64 %i.il, 9223372036854775800  ; 3 uses
  %i.im = shl i64 %n.vec254, 2
  %i.in = getelementptr i8, ptr %1, i64 %i.im
  %broadcast.splatinsert255 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat256 = shufflevector <4 x i32> %broadcast.splatinsert255, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph253
  %index258 = phi i64 [ 0, %vector.ph253 ], [ %index.next262, %vector.body257 ] ; 2 uses
  %i.io = shl i64 %index258, 2
  %next.gep259 = getelementptr i8, ptr %1, i64 %i.io ; 3 uses
  %i.ip = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !160 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !160 ; 2 uses
  %i.iq = icmp slt <4 x i32> %wide.load260, zeroinitializer
  %i.ir = icmp slt <4 x i32> %wide.load261, zeroinitializer
  %i.is = select <4 x i1> %i.iq, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat256
  %i.it = select <4 x i1> %i.ir, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat256
  %i.iu = sub nsw <4 x i32> %wide.load260, %i.is
  %i.iv = sub nsw <4 x i32> %wide.load261, %i.it
  store <4 x i32> %i.iu, ptr %next.gep259, align 4, !tbaa !160
  store <4 x i32> %i.iv, ptr %i.ip, align 4, !tbaa !160
  %index.next262 = add nuw i64 %index258, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next262, %n.vec254
  br i1 %i.iw, label %middle.block263, label %vector.body257, !llvm.loop !1709

middle.block263:                                  ; preds = %vector.body257
  %cmp.n264 = icmp eq i64 %i.il, %n.vec254
  br i1 %cmp.n264, label %.loopexit, label %.lr.ph132.preheader266

.lr.ph132.preheader266:                           ; preds = %.lr.ph132.preheader, %middle.block263
  %.0331131.ph = phi ptr [ %1, %.lr.ph132.preheader ], [ %i.in, %middle.block263 ]
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader266, %.lr.ph132
  %.0331131 = phi ptr [ %i.jb, %.lr.ph132 ], [ %.0331131.ph, %.lr.ph132.preheader266 ] ; 3 uses
  %i.ix = load i32, ptr %.0331131, align 4, !tbaa !160 ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  %i.iz = select i1 %i.iy, i32 0, i32 %i.c
  %i.ja = sub nsw i32 %i.ix, %i.iz
  store i32 %i.ja, ptr %.0331131, align 4, !tbaa !160
  %i.jb = getelementptr inbounds nuw i8, ptr %.0331131, i64 4 ; 2 uses
  %i.jc = icmp ult ptr %i.jb, %i.e
  br i1 %i.jc, label %.lr.ph132, label %.loopexit, !llvm.loop !1710

bb.bl:                                            ; preds = %.loopexit169
  %or.cond7 = and i1 %i.cd, %i.ff
  br i1 %or.cond7, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %.sroa.066.0.copyload = load ptr, ptr %4, align 8, !tbaa !365
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.267.0.copyload = load i32, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jd = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %.sroa.066.0.copyload, i32 %.sroa.267.0.copyload) #28 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.jd, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.jd, 1
  store ptr %.fca.0.extract62, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract63, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !497
  %i.je = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 68, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.je, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.je, 1
  store ptr %.fca.0.extract54, ptr %17, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.257.0..sroa_idx, align 8
  %i.jf = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #28 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.jf, 0 ; 2 uses
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.jf, 1 ; 2 uses
  store ptr %.fca.0.extract50, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract51, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract50, i32 %.fca.1.extract51) #28 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.jg, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.jg, 1
  store ptr %.fca.0.extract39, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract40, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jh = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !179
  %i.jk = add i32 %i.jj, -53
  %spec.select.i.i462 = icmp ult i32 %i.jk, 2
  br i1 %spec.select.i.i462, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  %i.jl = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr nonnull %i.jh, i32 %.sroa.234.0.copyload) #28 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.jl, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.jl, 1
  store ptr %.fca.0.extract29, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract30, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !497
  %i.jm = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 68, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.jm, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.jm, 1
  store ptr %.fca.0.extract21, ptr %19, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  %i.jn = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #28 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.jn, 0 ; 2 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.jn, 1 ; 2 uses
  store ptr %.fca.0.extract17, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract18, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  %i.jo = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract17, i32 %.fca.1.extract18) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.jo, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.jo, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jp = icmp slt i64 %i.d, %.idx
  br i1 %i.jp, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.jq = add i64 %i.d, %7
  %i.jr = add i64 %i.jq, 4
  %i.js = add i64 %.idx, %7
  %i.jt = tail call i64 @llvm.umax.i64(i64 %i.jr, i64 %i.js)
  %i.ju = xor i64 %7, -1
  %i.jv = add i64 %i.jt, %i.ju
  %i.jw = sub i64 %i.jv, %i.d                     ; 2 uses
  %i.jx = lshr i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jw, 28
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.jy, 9223372036854775800     ; 3 uses
  %i.jz = shl i64 %n.vec, 2
  %i.ka = getelementptr i8, ptr %i.e, i64 %i.jz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.kb ; 3 uses
  %i.kc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !160 ; 2 uses
  %wide.load220 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !160 ; 2 uses
  %i.kd = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.ke = icmp slt <4 x i32> %wide.load220, zeroinitializer
  %i.kf = select <4 x i1> %i.kd, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat
  %i.kg = select <4 x i1> %i.ke, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat
  %i.kh = add nsw <4 x i32> %i.kf, %wide.load
  %i.ki = add nsw <4 x i32> %i.kg, %wide.load220
  store <4 x i32> %i.kh, ptr %next.gep, align 4, !tbaa !160
  store <4 x i32> %i.ki, ptr %i.kc, align 4, !tbaa !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !1711

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jy, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0130.ph = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.ka, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader270, %.lr.ph
  %.0130 = phi ptr [ %i.ko, %.lr.ph ], [ %.0130.ph, %.lr.ph.preheader270 ] ; 3 uses
  %i.kk = load i32, ptr %.0130, align 4, !tbaa !160 ; 2 uses
  %i.kl = icmp slt i32 %i.kk, 0
  %i.km = select i1 %i.kl, i32 0, i32 %i.c
  %i.kn = add nsw i32 %i.km, %i.kk
  store i32 %i.kn, ptr %.0130, align 4, !tbaa !160
  %i.ko = getelementptr inbounds nuw i8, ptr %.0130, i64 4 ; 2 uses
  %i.kp = icmp ult ptr %i.ko, %i.cf
  br i1 %i.kp, label %.lr.ph, label %.loopexit, !llvm.loop !1712

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph136, %.lr.ph132, %middle.block, %middle.block248, %middle.block263, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread", %bb.bo, %bb.bk, %.preheader, %bb.bl
  %.0326 = phi i1 [ false, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread" ], [ false, %bb.bl ], [ true, %.preheader ], [ true, %bb.bk ], [ true, %bb.bo ], [ true, %middle.block263 ], [ true, %middle.block248 ], [ true, %middle.block ], [ true, %.lr.ph136 ], [ true, %.lr.ph132 ], [ true, %.lr.ph ]
  ret i1 %.0326
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL42lowerVECTOR_SHUFFLEAsLanePermuteAndShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.670", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.192", align 8 ; 3 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::ArrayRef.192", align 8 ; 3 uses
  %i.c = trunc i64 %2 to i32                      ; 7 uses
  %i.d = sdiv i32 %i.c, 2                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i16 0, ptr %i.a, align 2
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %2, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i8, ptr %i.a, align 2, !tbaa !636, !range !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre26 = load i8, ptr %.phi.trans.insert, align 1, !range !40
  %i.f = trunc nuw i8 %.pre to i1
  %i.g = trunc nuw i8 %.pre26 to i1
  %i.h = select i1 %i.f, i1 true, i1 %i.g
  br i1 %i.h, label %bb.e, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !160  ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.l = urem i32 %i.j, %i.c
  %i.m = udiv i32 %i.l, %i.d                      ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = udiv i32 %i.n, %i.d
  %.not85 = icmp eq i32 %i.m, %i.o
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i8 1, ptr %i.q, align 1, !tbaa !636
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1713

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 12, ptr %i.t, align 4, !tbaa !545
  store i32 0, ptr %i.s, align 8, !tbaa !544
  %.idx = shl nuw nsw i64 %2, 2
  %i.u = icmp ugt i64 %2, 12
  br i1 %i.u, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.r, i64 noundef %2, i64 noundef 4) #28
  %.pre8.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !544
  %i.v = zext i32 %.pre8.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.e
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  store i32 %i.c, ptr %i.s, align 8, !tbaa !544
  br label %._crit_edge19

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread
  %.pre8.i.i36 = phi i64 [ %i.v, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.w = load ptr, ptr %8, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.pre8.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 4 %1, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !544
  %i.y = add i32 %.pre.i.i, %i.c
  store i32 %i.y, ptr %i.s, align 8, !tbaa !544
  %i.z = load ptr, ptr %8, align 8, !tbaa !34
  %wide.trip.count24 = and i64 %2, 2147483647
  br label %bb.g

._crit_edge19:                                    ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %4, i32 %5) #28 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 96, ptr null) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.ab, 1
  store ptr %.fca.0.extract21, ptr %9, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store <4 x i32> <i32 2, i32 3, i32 0, i32 1>, ptr %i.b, align 16, !tbaa !160
  store ptr %i.b, ptr %10, align 8, !tbaa !558
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.ac, align 8, !tbaa !559
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract31, i32 %.fca.1.extract32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %10) #28 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract15, i32 %.fca.1.extract16) #28 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract6, ptr %11, align 8, !tbaa !365
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !160
  %i.af = load ptr, ptr %8, align 8, !tbaa !34
  store ptr %i.af, ptr %12, align 8, !tbaa !558
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !544
  %i.ai = zext i32 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !559
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %12) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aj, 1
  %i.ak = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.r
  br i1 %i.al, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge19
  call void @free(ptr noundef %i.ak) #28
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %._crit_edge19, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
end_hunk_1
