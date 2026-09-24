Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegionStore?download=true
inline.NumInlined: 7608
inline.NumDeleted: 3882
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_118RegionStoreManager11killBindingEPKvN5clang4ento3LocE:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.val16, i64 68 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !226
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !226
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %_ZNK5clang4ento4SVal5getAsINS0_3loc12MemRegionValEEESt8optionalIT_Ev.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS3_4SValENS1_IS9_SA_EEEEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %.val16), !inline_history !3
  br label %_ZNK5clang4ento4SVal5getAsINS0_3loc12MemRegionValEEESt8optionalIT_Ev.exit

_ZNK5clang4ento4SVal5getAsINS0_3loc12MemRegionValEEESt8optionalIT_Ev.exit: ; preds = %bb.j, %bb.i, %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN5clang4ento8StoreRefC2EPKvRNS0_12StoreManagerE.exit15

bb.k:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8, !tbaa !245
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !246
  %.not.i14 = icmp eq ptr %2, null
  br i1 %.not.i14, label %_ZN5clang4ento8StoreRefC2EPKvRNS0_12StoreManagerE.exit15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %1, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2) #19, !inline_history !4
  br label %_ZN5clang4ento8StoreRefC2EPKvRNS0_12StoreManagerE.exit15

_ZN5clang4ento8StoreRefC2EPKvRNS0_12StoreManagerE.exit15: ; preds = %bb.l, %bb.k, %_ZNK5clang4ento4SVal5getAsINS0_3loc12MemRegionValEEESt8optionalIT_Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118RegionStoreManager15getInitialStoreEPKN5clang10StackFrameE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.clang::ento::StoreRef") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ImmutableMap.1198", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1064
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1094 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127
  %i.h = add nsw i32 %i.g, -41
  %i.i = icmp ult i32 %i.h, -6
  %.not16 = icmp eq ptr %i.d, null
  %.not = or i1 %.not16, %i.i
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl6isMainEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #19
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !256, !nonnull !59, !align !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2600
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1095, !nonnull !59, !align !60
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 11
  %i.q = and i64 %i.p, 2
  %i.r = xor i64 %i.q, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call fastcc void @_ZNK4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEE14asImmutableMapEv(ptr dead_on_unwind noalias writable align 8 %3, ptr null, ptr nonnull %i.s)
  %.val2.i = load ptr, ptr %3, align 8, !tbaa !212 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i.i.i, label %_ZNK12_GLOBAL__N_117RegionBindingsRef7asStoreEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i, i64 68 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !226
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !226
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZNK12_GLOBAL__N_117RegionBindingsRef7asStoreEv.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS3_4SValENS1_IS9_SA_EEEEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %.val2.i), !inline_history !3
  br label %_ZNK12_GLOBAL__N_117RegionBindingsRef7asStoreEv.exit

_ZNK12_GLOBAL__N_117RegionBindingsRef7asStoreEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.x = ptrtoint ptr %.val2.i to i64
  %i.y = and i64 %i.x, -3
  %i.z = or disjoint i64 %i.y, %.0                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !245
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !246
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %_ZN4llvm12ImmutableMapIPKN5clang4ento9MemRegionENS0_IN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS7_S8_EEEENS9_IS5_SB_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_117RegionBindingsRef7asStoreEv.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.aa) #19, !inline_history !4
  br label %_ZN4llvm12ImmutableMapIPKN5clang4ento9MemRegionENS0_IN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS7_S8_EEEENS9_IS5_SB_EEED2Ev.exit

_ZN4llvm12ImmutableMapIPKN5clang4ento9MemRegionENS0_IN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS7_S8_EEEENS9_IS5_SB_EEED2Ev.exit: ; preds = %bb.g, %_ZNK12_GLOBAL__N_117RegionBindingsRef7asStoreEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN5clang4ento12StoreManager12getLValueVarEPKNS_7VarDeclEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !629, !nonnull !59, !align !60
  %i.c = tail call noundef ptr @_ZN5clang4ento16MemRegionManager12getVarRegionEPKNS_7VarDeclEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef %1, ptr noundef %2) #19
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %i.c, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 4, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

declare { ptr, i8 } @_ZN5clang4ento12StoreManager13getLValueIvarEPKNS_12ObjCIvarDeclENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr, i8) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN5clang4ento12StoreManager14getLValueFieldEPKNS_9FieldDeclENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, i8 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN5clang4ento12StoreManager20getLValueFieldOrIvarEPKNS_4DeclENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, i8 %3) #19
  ret { ptr, i8 } %i.a
}

declare { ptr, i8 } @_ZN5clang4ento12StoreManager16getLValueElementENS_8QualTypeENS0_6NonLocENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(40), i64, ptr, i8, ptr, i8) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i8 } @_ZN12_GLOBAL__N_118RegionStoreManager14ArrayToPointerEN5clang4ento3LocENS1_8QualTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, ptr %1, i8 %2, i64 %3) unnamed_addr #3 align 2 {
bb.a:
  switch i8 %2, label %.fold.split [
    i8 2, label %bb.c
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255, !nonnull !59, !align !60 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !43
  %i.e = tail call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef 0, i64 %.sroa.0.0.copyload.i) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !629, !nonnull !59, !align !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !256, !nonnull !59, !align !60
  %i.j = tail call noundef ptr @_ZN5clang4ento16MemRegionManager16getElementRegionENS_8QualTypeENS0_6NonLocEPKNS0_9SubRegionERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(152) %i.g, i64 %3, ptr %i.e, i8 6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.i) #19
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split, %bb.b
  %.sroa.011.0 = phi ptr [ %1, %bb.a ], [ %i.j, %bb.b ], [ null, %.fold.split ]
  %.sroa.414.0 = phi i8 [ %2, %bb.a ], [ 4, %bb.b ], [ 1, %.fold.split ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.414.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118RegionStoreManager18removeDeadBindingsEPKvPKN5clang10StackFrameERNS3_4ento12SymbolReaperE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.clang::ento::StoreRef") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::ImutAVLTreeInOrderIterator", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::ImmutableMap.1198", align 8 ; 4 uses
  %7 = alloca %"class.llvm::mapped_iterator.1387", align 8 ; 14 uses
  %8 = alloca %"class.llvm::mapped_iterator.1387", align 8 ; 14 uses
  %9 = alloca %"class.llvm::mapped_iterator.1387", align 8 ; 12 uses
  %10 = alloca %"class.llvm::ImmutableMapRef<const clang::ento::MemRegion *, llvm::ImmutableMap<(anonymous namespace)::BindingKey, clang::ento::SVal>>::iterator", align 8 ; 6 uses
  %11 = alloca %"class.llvm::mapped_iterator.1387", align 8 ; 12 uses
  %12 = alloca %"class.llvm::ImmutableMapRef<const clang::ento::MemRegion *, llvm::ImmutableMap<(anonymous namespace)::BindingKey, clang::ento::SVal>>::iterator", align 8 ; 8 uses
  %13 = alloca %"class.llvm::ImmutableMap<(anonymous namespace)::BindingKey, clang::ento::SVal>::iterator", align 8 ; 15 uses
  %14 = alloca %"class.llvm::ImmutableMap<(anonymous namespace)::BindingKey, clang::ento::SVal>::iterator", align 8 ; 7 uses
  %15 = alloca %"class.llvm::ImmutableMapRef<const clang::ento::MemRegion *, llvm::ImmutableMap<(anonymous namespace)::BindingKey, clang::ento::SVal>>::iterator", align 8 ; 11 uses
  %16 = alloca %"class.llvm::ImmutableMapRef<const clang::ento::MemRegion *, llvm::ImmutableMap<(anonymous namespace)::BindingKey, clang::ento::SVal>>::iterator", align 8 ; 7 uses
  %17 = alloca %"class.(anonymous namespace)::RemoveDeadBindingsWorker", align 8 ; 40 uses
  %18 = alloca %"class.llvm::iterator_range.1386", align 8 ; 17 uses
  %19 = alloca %"class.llvm::mapped_iterator.1387", align 8 ; 14 uses
  %20 = alloca %"class.llvm::mapped_iterator.1387", align 8 ; 10 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = and i64 %i.b, -4                         ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0           ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_117RegionBindingsRefC2ERKS0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !226, !noalias !1150
  %i.i = trunc i64 %i.b to i8
  %i.j = lshr i8 %i.i, 1
  %i.k = and i8 %i.j, 1
  %i.l = add i32 %i.h, 1                          ; 3 uses
  store i32 %i.l, ptr %i.g, align 4, !tbaa !226, !noalias !1150
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS3_4SValENS1_IS9_SA_EEEEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !1150, !inline_history !3
  %.pre = load i32, ptr %i.g, align 4, !tbaa !226
  br label %bb.d

_ZN12_GLOBAL__N_117RegionBindingsRefC2ERKS0_.exit.thread: ; preds = %bb.a
  %.lobit4.i = lshr i64 %i.b, 1
  %i.n = trunc nuw nsw i64 %.lobit4.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86, !nonnull !59, !align !60
  %i.q = getelementptr i8, ptr %i.p, i64 240
  %.val14161 = load ptr, ptr %i.q, align 8
  br label %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorkerC2ERNS_18RegionStoreManagerERN5clang4ento19ProgramStateManagerENS_17RegionBindingsRefERNS4_12SymbolReaperEPKNS3_10StackFrameE.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %21 = phi i32 [ %.pre, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86, !nonnull !59, !align !60
  %i.t = add i32 %21, 1
  store i32 %i.t, ptr %i.g, align 4, !tbaa !226
  %i.u = getelementptr i8, ptr %i.s, i64 240
  %.val14 = load ptr, ptr %i.u, align 8
  %i.v = add i32 %21, 2
  store i32 %i.v, ptr %i.g, align 4, !tbaa !226
  br label %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorkerC2ERNS_18RegionStoreManagerERN5clang4ento19ProgramStateManagerENS_17RegionBindingsRefERNS4_12SymbolReaperEPKNS3_10StackFrameE.exit

_ZN12_GLOBAL__N_124RemoveDeadBindingsWorkerC2ERNS_18RegionStoreManagerERN5clang4ento19ProgramStateManagerENS_17RegionBindingsRefERNS4_12SymbolReaperEPKNS3_10StackFrameE.exit: ; preds = %_ZN12_GLOBAL__N_117RegionBindingsRefC2ERKS0_.exit.thread, %bb.d
  %.val14165 = phi ptr [ %.val14161, %_ZN12_GLOBAL__N_117RegionBindingsRefC2ERKS0_.exit.thread ], [ %.val14, %bb.d ] ; 2 uses
  %.sroa.0144.2153164 = phi ptr [ null, %_ZN12_GLOBAL__N_117RegionBindingsRefC2ERKS0_.exit.thread ], [ %i.e, %bb.d ] ; 7 uses
  %.sroa.24.2155163 = phi i8 [ %i.n, %_ZN12_GLOBAL__N_117RegionBindingsRefC2ERKS0_.exit.thread ], [ %i.k, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.w, ptr %17, align 8, !tbaa !630
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i32 16, ptr %i.x, align 8, !tbaa !631
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 12 uses
  store i32 0, ptr %i.y, align 4, !tbaa !632
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store i8 1, ptr %i.z, align 8, !tbaa !633
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 152 ; 13 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 168 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 160 ; 20 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 164 ; 6 uses
  store i32 10, ptr %i.ad, align 4, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 248
  store ptr %1, ptr %i.ae, align 8, !tbaa !635
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 256
  %i.ag = getelementptr inbounds nuw i8, ptr %.val14165, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !674, !nonnull !59, !align !60
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !675
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 264
  store ptr %.val14165, ptr %i.ai, align 8, !tbaa !676
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 272 ; 7 uses
  store ptr %.sroa.0144.2153164, ptr %i.aj, align 8, !tbaa !212
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 280
  store ptr %i.f, ptr %i.ak, align 8, !tbaa !215
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 288
  store ptr %i.c, ptr %i.al, align 8
  %.sroa.6.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 296
  store i8 %.sroa.24.2155163, ptr %.sroa.6.i.sroa.4.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 304 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 320 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !111
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 312 ; 5 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !108
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 316 ; 2 uses
  store i32 12, ptr %i.ap, align 4, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 416 ; 6 uses
  store ptr %4, ptr %i.aq, align 8, !tbaa !1151
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 424 ; 2 uses
  store ptr %3, ptr %i.ar, align 8, !tbaa !1152
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorkerC2ERNS_18RegionStoreManagerERN5clang4ento19ProgramStateManagerENS_17RegionBindingsRefERNS4_12SymbolReaperEPKNS3_10StackFrameE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0144.2153164, i64 68 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !226
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !226
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.f, label %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS3_4SValENS1_IS9_SA_EEEEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0144.2153164), !inline_history !3
  %.val.i23.pre = load ptr, ptr %i.aj, align 8, !tbaa !212
  br label %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit

_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorkerC2ERNS_18RegionStoreManagerERN5clang4ento19ProgramStateManagerENS_17RegionBindingsRefERNS4_12SymbolReaperEPKNS3_10StackFrameE.exit, %bb.e, %bb.f
  %.val.i23 = phi ptr [ %.sroa.0144.2153164, %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorkerC2ERNS_18RegionStoreManagerERN5clang4ento19ProgramStateManagerENS_17RegionBindingsRefERNS4_12SymbolReaperEPKNS3_10StackFrameE.exit ], [ %.sroa.0144.2153164, %bb.e ], [ %.val.i23.pre, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call fastcc void @_ZNK4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEE5beginEv(ptr dead_on_unwind noalias writable align 8 %15, ptr %.val.i23)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aw, i8 0, i64 160, i1 false), !alias.scope !1153
  store ptr %i.aw, ptr %16, align 8, !tbaa !111, !alias.scope !1153
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !108, !alias.scope !1153
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 20, ptr %i.ay, align 4, !tbaa !109, !alias.scope !1153
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 12
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_EppEv.exit.i, %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit
  %.val9.i = phi i32 [ %.val9.pre.i, %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_EppEv.exit.i ], [ 0, %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit ] ; 3 uses
  %.val8.i = phi ptr [ %.val8.pre.i, %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_EppEv.exit.i ], [ %i.aw, %_ZN4llvm15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS2_4SValENS_16ImutKeyValueInfoIS8_S9_EEEENSA_IS5_SC_EEED2Ev.exit ] ; 3 uses
  %.val6.i = load ptr, ptr %15, align 8           ; 3 uses
  %.val7.i = load i32, ptr %i.az, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i24 = icmp eq i32 %.val7.i, 0     ; 2 uses
  %.not.i8.i.i.i.i = icmp eq i32 %.val9.i, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i24, i1 true, i1 %.not.i8.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.split.i, label %_ZNK4llvm20iterator_facade_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSL_RSL_EneERKSH_.exit.i

.split.i:                                         ; preds = %bb.g
  %i.bb = icmp ne i32 %.val9.i, 0
  %i.bc = xor i1 %i.bb, %.not.i.i.i.i.i24
  br i1 %i.bc, label %bb.h, label %.split.i._crit_edge

.split.i._crit_edge:                              ; preds = %.split.i
  %.phi.trans.insert = zext i32 %.val7.i to i64
  %.phi.trans.insert194 = getelementptr inbounds nuw [8 x i8], ptr %.val6.i, i64 %.phi.trans.insert
  %.phi.trans.insert195 = getelementptr inbounds i8, ptr %.phi.trans.insert194, i64 -8
  %.pre.a = load ptr, ptr %.phi.trans.insert195, align 8, !tbaa !230
  br label %bb.k

_ZNK4llvm20iterator_facade_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSL_RSL_EneERKSH_.exit.i: ; preds = %bb.g
  %i.bd = zext i32 %.val7.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val6.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !230 ; 2 uses
  %i.bh = zext i32 %.val9.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !230
  %i.bl = icmp eq ptr %i.bg, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm20iterator_facade_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSL_RSL_EneERKSH_.exit.i, %.split.i
  %i.bm = icmp eq ptr %.val8.i, %i.aw
  br i1 %i.bm, label %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_ED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %.val8.i) #19
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !111
  br label %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_ED2Ev.exit.i

_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_ED2Ev.exit.i: ; preds = %bb.i, %bb.h
  %i.bn = phi ptr [ %.val6.i, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZN12_GLOBAL__N_115ClusterAnalysisINS_24RemoveDeadBindingsWorkerEE16GenerateClustersEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEENS_26ImutAVLTreeInOrderIteratorISF_EESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSN_RSN_ED2Ev.exit.i
  call void @free(ptr noundef %i.bn) #19
  br label %_ZN12_GLOBAL__N_115ClusterAnalysisINS_24RemoveDeadBindingsWorkerEE16GenerateClustersEv.exit

bb.k:                                             ; preds = %.split.i._crit_edge, %_ZNK4llvm20iterator_facade_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSL_RSL_EneERKSH_.exit.i
  %i.bq = phi ptr [ %.pre.a, %.split.i._crit_edge ], [ %i.bg, %_ZNK4llvm20iterator_facade_baseINS_20ImutAVLValueIteratorINS_15ImmutableMapRefIPKN5clang4ento9MemRegionENS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyENS4_4SValENS_16ImutKeyValueInfoISA_SB_EEEENSC_IS7_SE_EEEEEESt26bidirectional_iterator_tagKSt4pairIS7_SE_ElPSL_RSL_EneERKSH_.exit.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !229 ; 15 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !254 ; 4 uses
  %i.bw = and i32 %i.bv, -2
  %i.bx = icmp ne i32 %i.bw, 22
  %.not.not74.i.i = icmp eq ptr %i.bs, null       ; 3 uses
  %.not.not.i.i = or i1 %.not.not74.i.i, %i.bx
  br i1 %.not.not.i.i, label %_ZN12_GLOBAL__N_115ClusterAnalysisINS_24RemoveDeadBindingsWorkerEE13AddToWorkListEPKN5clang4ento9MemRegionEPKN4llvm12ImmutableMapINS_10BindingKeyENS4_4SValENS8_16ImutKeyValueInfoISA_SB_EEEE.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load ptr, ptr %i.aq, align 8, !tbaa !692, !nonnull !59, !align !60
  %i.bz = call noundef zeroext i1 @_ZNK5clang4ento12SymbolReaper6isLiveEPKNS0_9VarRegionEb(ptr noundef nonnull align 8 dereferenceable(160) %i.by, ptr noundef nonnull %i.bs, i1 noundef zeroext false) #19
  br i1 %i.bz, label %bb.m, label %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorker19VisitAddedToClusterEPKN5clang4ento9MemRegionERKN4llvm12ImmutableMapINS_10BindingKeyENS2_4SValENS6_16ImutKeyValueInfoIS8_S9_EEEE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ca = load i8, ptr %i.z, align 8, !tbaa !633, !range !243, !noalias !1154, !noundef !59
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.n, label %_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %17, align 8, !tbaa !630, !noalias !1154 ; 2 uses
  %i.cd = load i32, ptr %i.y, align 4, !tbaa !632, !noalias !1154 ; 4 uses
  %i.ce = zext i32 %i.cd to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not22.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.critedge.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %i.ch, %.critedge.i.i.i.i.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.cg = load ptr, ptr %.023.i.i.i.i.i, align 8, !tbaa !42, !noalias !1154
  %.not15.i.i.i.i.i = icmp eq ptr %i.cg, %i.bt
  br i1 %.not15.i.i.i.i.i, label %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorker19VisitAddedToClusterEPKN5clang4ento9MemRegionERKN4llvm12ImmutableMapINS_10BindingKeyENS2_4SValENS6_16ImutKeyValueInfoIS8_S9_EEEE.exit.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i15.i = icmp eq ptr %i.ch, %i.cf
  br i1 %.not.i.i.i.i15.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %bb.n
  %i.ci = load i32, ptr %i.x, align 8, !tbaa !631, !noalias !1154
  %i.cj = icmp ult i32 %i.cd, %i.ci
  br i1 %i.cj, label %_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.thread.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.i.i

_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.thread.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.ck = add nuw i32 %i.cd, 1
  store i32 %i.ck, ptr %i.y, align 4, !tbaa !632, !noalias !1154
  store ptr %i.bt, ptr %i.cf, align 8, !tbaa !42, !noalias !1154
  br label %.critedge.i.i.i

_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.m
  %i.cl = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(432) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #19, !noalias !1154
  %i.cm = extractvalue { ptr, i8 } %i.cl, 1
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.critedge.i.i.i, label %_ZN12_GLOBAL__N_124RemoveDeadBindingsWorker19VisitAddedToClusterEPKN5clang4ento9MemRegionERKN4llvm12ImmutableMapINS_10BindingKeyENS2_4SValENS6_16ImutKeyValueInfoIS8_S9_EEEE.exit.i

.critedge.i.i.i:                                  ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.i.i, %_ZN4llvm15SmallPtrSetImplIPKNS_12ImmutableMapIN12_GLOBAL__N_110BindingKeyEN5clang4ento4SValENS_16ImutKeyValueInfoIS3_S6_EEEEE6insertESB_.exit.i.thread.i.i
end_hunk_0
