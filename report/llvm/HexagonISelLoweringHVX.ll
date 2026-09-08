Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@"_ZZNK4llvm21HexagonTargetLowering23combineConcatOfShufflesENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_":bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i32 noundef %i.av)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = zext i32 %i.ax to i64
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.av, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !190
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.01439, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.s
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT28getDoubleNumVectorElementsVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !431    ; 3 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread: ; preds = %bb.a
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !149
  br label %bb.b

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.a
  %i.f = tail call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #20 ; 2 uses
  %.pre = load i16, ptr %0, align 8, !tbaa !431   ; 2 uses
  %i.g = extractvalue { i16, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i16, ptr } %i.f, 1        ; 2 uses
  %.not.i7 = icmp eq i16 %.pre, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.i = phi ptr [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %i.h, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %i.j = phi i16 [ %i.e, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %i.g, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %i.k = phi i16 [ %i.a, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %.pre, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ] ; 2 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !151
  %i.p = add i16 %i.k, -163
  %spec.select.i.i.i = icmp ult i16 %i.p, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.o to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.q = tail call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.c ]
  %i.s = phi i16 [ %i.j, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %.sroa.6.0.extract.shift.i = and i64 %.sroa.0.0.in.i, 1095216660480
  %i.t = shl i64 %.sroa.0.0.in.i, 1               ; 2 uses
  %.sroa.0.0.insert.ext.i8 = and i64 %i.t, 4294967294
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i8, %.sroa.6.0.extract.shift.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.t to i32 ; 2 uses
  %i.u = and i64 %.sroa.0.0.in.i, 4294967296
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.v = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.s, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.w = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.s, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i = phi i16 [ %i.v, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %.not.i9 = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i9, label %bb.f, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

bb.f:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  %i.x = tail call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %i.s, ptr %i.r, i64 %.sroa.0.0.insert.insert.i) #20 ; 2 uses
  %i.y = extractvalue { i16, ptr } %i.x, 0
  %i.z = extractvalue { i16, ptr } %i.x, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i, %bb.f
  %.sroa.3.0.i = phi ptr [ %i.z, %bb.f ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.sroa.0.0.i = phi i16 [ %i.y, %bb.f ], [ %.sroa.04.0.i.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.3.0.i, 1
  ret { i16, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering31combineConcatVectorsBeforeLegalENS_7SDValueERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !149
  %i.e = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !149
  %.not = icmp eq i16 %i.h, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !435, !nonnull !21, !align !58
  %i.k = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering23combineConcatOfShufflesENS_7SDValueERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr nonnull %1, i32 poison, ptr noundef nonnull align 8 dereferenceable(920) %i.j) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %bb.b ], [ 0, %bb.a ]
  %.sroa.013.0 = phi ptr [ %.fca.0.extract, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering31createExtendingPartialReduceMLAEjNS_3EVTEjS1_RKNS_7SDValueES4_RjRKNS_5SDLocERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i16 %2, ptr nofree readnone captures(address_is_null) %3, i32 noundef %4, ptr noundef byval(%"struct.llvm::EVT") align 8 %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(920) %10) local_unnamed_addr #3 align 2 {
bb.a:
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !782, !nonnull !21, !align !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.f = load i32, ptr %i.e, align 8, !tbaa !143
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %5, align 8, !tbaa !431    ; 2 uses
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !149
  %i.m = insertvalue { i16, ptr } poison, i16 %i.l, 0
  %i.n = insertvalue { i16, ptr } %i.m, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.n, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq i16 %2, 7
  %i.p = icmp eq ptr %3, null
  %.not4.i = select i1 %.not.i.i, i1 %i.p, i1 false
  br i1 %.not4.i, label %bb.e, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.q = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.r = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %.not.i.i35 = icmp eq i16 %i.r, 5
  %i.s = icmp eq ptr %i.q, null
  %.not4.i36 = select i1 %.not.i.i35, i1 %i.s, i1 false
  br i1 %.not4.i36, label %bb.f, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = load i16, ptr %5, align 8, !tbaa !431    ; 3 uses
  %.not.i37 = icmp eq i16 %i.t, 0
  br i1 %.not.i37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !151
  %i.y = add i16 %i.t, -163
  %spec.select.i.i.i = icmp ult i16 %i.y, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.x to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.h:                                             ; preds = %bb.f
  %i.z = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.g, %bb.h
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = shl i32 %4, 2                           ; 3 uses
  %.not.i38 = icmp eq i32 %i.aa, 0
  br i1 %.not.i38, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.in.i to i32 ; 3 uses
  %i.ab = urem i32 %.sroa.0.0.extract.trunc, %i.aa
  %i.ac = udiv i32 %.sroa.0.0.extract.trunc, %i.aa ; 2 uses
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  store i32 %i.ac, ptr %8, align 4, !tbaa !152
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !403
  %i.ah = lshr i32 %.sroa.0.0.extract.trunc, 2    ; 2 uses
  %i.ai = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 7, i32 noundef %i.ah) ; 2 uses
  %.not.i39 = icmp eq i16 %i.ai, 0
  br i1 %.not.i39, label %bb.k, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i16 7, ptr null, i32 noundef %i.ah, i1 noundef zeroext false) #20 ; 2 uses
  %i.ak = extractvalue { i16, ptr } %i.aj, 0
  %i.al = extractvalue { i16, ptr } %i.aj, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %bb.j, %bb.k
  %.sroa.3.0.i = phi ptr [ %i.al, %bb.k ], [ null, %bb.j ] ; 2 uses
  %.sroa.0.0.i = phi i16 [ %i.ak, %bb.k ], [ %i.ai, %bb.j ] ; 2 uses
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %10, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract4, ptr %11, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %10, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.an, 1
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit, %bb.e, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %bb.i, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, %bb.a
  %.sroa.10.2 = phi i32 [ 0, %bb.a ], [ 0, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ 0, %bb.e ], [ 0, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit ], [ %.fca.1.extract, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ 0, %bb.i ], [ 0, %_ZNK4llvm3EVT21getVectorElementCountEv.exit ]
  %.sroa.049.2 = phi ptr [ null, %bb.a ], [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ null, %bb.e ], [ null, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit ], [ %.fca.0.extract, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ null, %bb.i ], [ null, %_ZNK4llvm3EVT21getVectorElementCountEv.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.049.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.10.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17splitVecReduceAddEPNS_6SDNodeERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 11 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 10 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load i32, ptr %i.d, align 8, !tbaa !143
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.h, align 8, !tbaa !149 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !402 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !201  ; 2 uses
  %.sroa.038.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !202 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !196
  %i.o = zext i32 %.sroa.7.0.copyload.i to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.p, align 8, !tbaa !149 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !402
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.q, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.s = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !149
  %i.v = insertvalue { i16, ptr } poison, i16 %i.u, 0
  %i.w = insertvalue { i16, ptr } %i.v, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.x = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i:     ; preds = %bb.d, %bb.c
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.w, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.y = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  %.not.i25.i = icmp ne i16 %.sroa.0.0.copyload.i, %i.y
  %i.aa = icmp ne ptr %.sroa.21.0.copyload.i, %i.z
  %i.ab = select i1 %.not.i25.i, i1 true, i1 %i.aa
  br i1 %i.ab, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !189
  %.not.i = icmp eq i32 %i.ad, 61
  br i1 %.not.i, label %bb.f, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !203
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false), !tbaa.struct !203
  %i.ah = load ptr, ptr %5, align 8, !tbaa !199   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !189
  switch i32 %i.aj, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread [
    i32 228, label %bb.g
    i32 227, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !189
  switch i32 %i.am, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread [
    i32 228, label %bb.k
    i32 227, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %6, align 8, !tbaa !199   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !189
  switch i32 %i.ap, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread [
    i32 228, label %bb.k
    i32 227, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.aq = phi ptr [ %i.an, %bb.j ], [ %i.ak, %bb.g ], [ %i.ak, %bb.h ], [ %i.an, %bb.i ]
  %.sink.i = phi i32 [ 414, %bb.j ], [ 415, %bb.g ], [ 416, %bb.h ], [ 416, %bb.i ]
  %.024.not.i = phi i1 [ true, %bb.j ], [ true, %bb.g ], [ false, %bb.h ], [ true, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false), !tbaa.struct !203
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !201 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false), !tbaa.struct !203
  %i.av = load ptr, ptr %5, align 8, !tbaa !199
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !200
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !196 ; 2 uses
  %i.az = zext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %.sroa.0.0.copyload.i.i26.i = load i16, ptr %i.ba, align 8, !tbaa !149
  %.sroa.21.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.21.0.copyload.i.i28.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i27.i, align 8, !tbaa !402
  %i.bb = load ptr, ptr %6, align 8, !tbaa !199
  %i.bc = load i32, ptr %i.j, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !196
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i31.i = load i16, ptr %i.bg, align 8, !tbaa !149
  %.sroa.21.0..sroa_idx.i.i32.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.21.0.copyload.i.i33.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i32.i, align 8, !tbaa !402
  %.not.i36.i = icmp ne i16 %.sroa.0.0.copyload.i.i26.i, %.sroa.0.0.copyload.i.i31.i
  %i.bh = icmp ne ptr %.sroa.21.0.copyload.i.i28.i, %.sroa.21.0.copyload.i.i33.i
  %i.bi = select i1 %.not.i36.i, i1 true, i1 %i.bh ; 2 uses
  %brmerge.i = or i1 %.024.not.i, %i.bi
  br i1 %brmerge.i, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit, label %_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread25

_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread25: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre = load ptr, ptr %5, align 8, !tbaa !199
  %.pre29 = load i32, ptr %i.i, align 8, !tbaa !200
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre30 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !196
  %.pre31 = zext i32 %.pre29 to i64
  br label %bb.l

_ZL23DetectExtendingMultiplyRKN4llvm7SDValueENS_3EVTERjRS0_S5_.exit.thread: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i, %bb.i, %bb.f, %bb.e, %bb.g
end_hunk_0
