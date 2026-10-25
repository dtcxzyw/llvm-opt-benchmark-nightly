Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeReader?download=true
inline.NumInlined: 16889
inline.NumDeleted: 7457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4llvm7PHINode6CreateEPNS_4TypeEjRKNS_5TwineENS_14InsertPositionE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findEPKS2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::DenseMapIterator.659") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  %i.a = load i32, ptr %1, align 8, !noalias !2466
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2466
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2466
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !2466
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.d, ptr %i.c ; 4 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.f, ptr %i.i ; 3 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.h, i32 4 ; 4 uses
  %i.j = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.j, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i.i.i.i, -1             ; 2 uses
  %i.l = ptrtoint ptr %2 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !114, !noalias !2465
  %i.v = and i32 %i.q, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i, label %.loopexit.i, !prof !355

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !577, !noalias !2465
  %i.ab = icmp eq ptr %2, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c, !prof !356

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add nuw i32 %.017.i.i.i, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !114, !noalias !2465
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i, label %.loopexit.i, !prof !357

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = zext i32 %.sink.i.i.i.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.al
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E7find_asIPKS2_EENS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEERKT_.exit

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.an = zext i32 %.sink.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.an ; 2 uses
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E7find_asIPKS2_EENS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEERKT_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E7find_asIPKS2_EENS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEERKT_.exit: ; preds = %bb.d, %.loopexit.i
  %.lcssa.sink.i = phi ptr [ %i.z, %bb.d ], [ %i.ao, %.loopexit.i ]
  %.sink.i = phi ptr [ %i.am, %bb.d ], [ %i.ao, %.loopexit.i ]
  store ptr %.lcssa.sink.i, ptr %0, align 8, !tbaa !688, !alias.scope !2465
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ap, align 8, !tbaa !2467, !alias.scope !2465
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink2.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !2468, !alias.scope !2465
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink1.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !2469, !alias.scope !2465
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 268435455
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !739
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #29
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = add i32 %i.g, 1
  %i.i = and i32 %i.h, 268435455                  ; 2 uses
  %i.j = and i32 %i.g, -268435456
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.a, align 4
  %i.l = add nsw i32 %i.i, -1
  %i.m = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !571
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !618  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !619  ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !571
  %.not2.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not2.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.r, ptr %i.u, align 8, !tbaa !618
  store ptr null, ptr %i.s, align 8, !tbaa !619
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.q, align 8, !tbaa !618
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i:      ; preds = %bb.f, %bb.c
  store ptr %1, ptr %i.p, align 8, !tbaa !562
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %i.v = load i8, ptr %1, align 8, !tbaa !519
  %i.w = icmp ugt i8 %i.v, 10
  br i1 %i.w, label %bb.h, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !571  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !619
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !618
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i:      ; preds = %bb.i, %bb.h
  store ptr %i.x, ptr %i.q, align 8, !tbaa !618
  store ptr %i.p, ptr %i.x, align 8, !tbaa !571
  br label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit

_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, %bb.g, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = and i32 %i.ab, 268435455
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !571
  %i.af = load i32, ptr %i.d, align 4, !tbaa !739
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %2, ptr %i.aj, align 8, !tbaa !577
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader14getValueSignedERKN4llvm15SmallVectorImplImEEjjPNS1_4TypeEjPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr nofree readonly captures(none) %.0.val, i32 %.8.val, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %.8.val, %1
  br i1 %i.a, label %_ZN12_GLOBAL__N_113BitcodeReader14getFnValueByIDEjPN4llvm4TypeEjPNS1_10BasicBlockE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98   ; 4 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = lshr exact i64 %i.d, 1
  br label %_ZN12_GLOBAL__N_113BitcodeReader22decodeSignRotatedValueEm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 1
  br i1 %.not.i, label %_ZN12_GLOBAL__N_113BitcodeReader22decodeSignRotatedValueEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.d, 1
  %i.i = sub nsw i64 0, %i.h
  br label %_ZN12_GLOBAL__N_113BitcodeReader22decodeSignRotatedValueEm.exit

_ZN12_GLOBAL__N_113BitcodeReader22decodeSignRotatedValueEm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ -9223372036854775808, %bb.d ]
  %i.j = trunc i64 %.0.i to i32                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.l = load i8, ptr %i.k, align 8, !tbaa !689, !range !75, !noundef !76
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = sub i32 %2, %i.j
  %spec.select = select i1 %i.m, i32 %i.n, i32 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 255
  %i.r = icmp eq i32 %i.q, 9
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_113BitcodeReader22decodeSignRotatedValueEm.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !558, !nonnull !76, !align !376
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.u = tail call noundef ptr @_ZN4llvm14MetadataLoader23getMetadataFwdRefOrLoadEj(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %spec.select) #29
  %i.v = tail call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u) #29
  br label %_ZN12_GLOBAL__N_113BitcodeReader14getFnValueByIDEjPN4llvm4TypeEjPNS1_10BasicBlockE.exit

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_113BitcodeReader22decodeSignRotatedValueEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.x = tail call noundef ptr @_ZN4llvm22BitcodeReaderValueList14getValueFwdRefEjPNS_4TypeEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i32 noundef %spec.select, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5) #29
  br label %_ZN12_GLOBAL__N_113BitcodeReader14getFnValueByIDEjPN4llvm4TypeEjPNS1_10BasicBlockE.exit

_ZN12_GLOBAL__N_113BitcodeReader14getFnValueByIDEjPN4llvm4TypeEjPNS1_10BasicBlockE.exit: ; preds = %bb.g, %bb.f, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ %i.v, %bb.f ], [ %i.x, %bb.g ]
  ret ptr %.011
}

declare ptr @_ZN4llvm10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6insertEOSt4pairIS3_S5_E(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.670") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.b = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2474 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.b, 0
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.b, 1
  %i.c = load i32, ptr %1, align 8, !noalias !2475
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0           ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2475
  %i.g = select i1 %.not.i.i.i.i.i, ptr %i.f, ptr %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2475
  %i.k = select i1 %.not.i.i.i.i.i, ptr %i.j, ptr %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !noalias !2475
  %i.n = select i1 %.not.i.i.i.i.i, i32 %i.m, i32 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.o
  store ptr %.fca.0.extract.i, ptr %0, align 8, !alias.scope !2474
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2474
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2474
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2474
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.fca.1.extract.i, ptr %i.q, align 8, !tbaa !2477, !alias.scope !2474
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #29
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN4llvm8Function16setPersonalityFnEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm14LandingPadInst6CreateEPNS_4TypeEjRKNS_5TwineENS_14InsertPositionE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11InstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare void @_ZN4llvm14LandingPadInst9addClauseEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113BitcodeReader19parseAlignmentValueEmRN4llvm10MaybeAlignE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2040) %1, i64 noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(2) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = icmp ugt i64 %2, 33
  br i1 %i.a, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !89
  store ptr @.str.184, ptr %4, align 8, !tbaa !90
  store i8 3, ptr %i.c, align 8, !tbaa !88
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.b, ptr noundef nonnull align 8 dereferenceable(34) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.c

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 0
  %i.e = trunc nuw nsw i64 %2 to i16
  %i.f = add nuw nsw i16 %i.e, 255
  %i.g = or i16 %i.f, 256
  %.sroa.02.0.insert.insert.i = select i1 %.not.i, i16 0, i16 %i.g
  store i16 %.sroa.02.0.insert.insert.i, ptr %3, align 1
  store ptr null, ptr %0, align 8, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.fr9 = freeze i32 %i.b                         ; 4 uses
  %i.c = and i32 %.fr9, 255                       ; 2 uses
  %i.d = icmp eq i32 %i.c, 12
  br i1 %i.d, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %trunc.i.i = trunc i32 %.fr9 to i8              ; 3 uses
  %i.e = icmp ult i8 %trunc.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.e, i1 %switch.lobit, i1 false
  %i.f = and i32 %.fr9, 253
  %spec.select.i = icmp eq i32 %i.f, 4
  %or.cond11 = or i1 %or.cond, %spec.select.i
  br i1 %or.cond11, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  switch i8 %trunc.i.i, label %bb.c [
    i8 15, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 13, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 10, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 16, label %bb.d
    i8 17, label %bb.d
  ]

bb.c:                                             ; preds = %switch.early.test
  %i.g = and i32 %.fr9, 254
  %spec.select.i5 = icmp eq i32 %i.g, 18
  %.not4 = icmp eq i32 %i.c, 21
  %or.cond8 = or i1 %spec.select.i5, %.not4
  br i1 %or.cond8, label %bb.d, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %bb.c
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #29
  br label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %bb.b, %switch.early.test, %switch.early.test, %switch.early.test, %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.a ], [ %i.h, %bb.d ], [ true, %bb.b ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ false, %bb.c ]
  ret i1 %.0
}

declare i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, ptr noundef, i8, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113BitcodeReader22typeCheckLoadStoreInstEPN4llvm4TypeES3_(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2040) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 15
  br i1 %i.d, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113BitcodeReader11parseModuleEmbN4llvm15ParserCallbacksE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #29, !noalias !2898
  call void @_ZN4llvm15BitstreamCursor10readRecordEjRNS_15SmallVectorImplImEEPNS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.31") align 8 %147, ptr noundef nonnull align 8 dereferenceable(344) %i.cv, i32 noundef %.sroa.076.4.extract.trunc.i, ptr noundef nonnull align 8 dereferenceable(16) %144, ptr noundef null) #29
  %i.tm = load i8, ptr %i.lm, align 8, !noalias !2898 ; 3 uses
  %i.tn = trunc i8 %i.tm to i1
  br i1 %i.tn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i30.i, label %bb.ah

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i30.i: ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %i.to = load i64, ptr %147, align 8, !tbaa !85, !noalias !2904
  %i.tp = inttoptr i64 %i.to to ptr
  store ptr null, ptr %147, align 8, !tbaa !85, !noalias !2904
  store ptr %i.tp, ptr %0, align 8, !tbaa !82, !alias.scope !2904
  br label %.critedge24.i

bb.ah:                                            ; preds = %bb.ag
  %i.tq = load i32, ptr %147, align 8, !tbaa !114, !noalias !2898
  switch i32 %i.tq, label %bb.cv [
    i32 1, label %bb.ai
    i32 2, label %bb.co
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.tr = load i32, ptr %i.lg, align 8, !tbaa !96, !noalias !2898 ; 3 uses
  %i.ts = and i32 %i.tr, 1
  %.not21.i = icmp eq i32 %i.ts, 0
  br i1 %.not21.i, label %.preheader.i, label %bb.aj

.preheader.i:                                     ; preds = %bb.ai
  %.not22115.i = icmp eq i32 %i.tr, 0
  br i1 %.not22115.i, label %._crit_edge118.i, label %.lr.ph117.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #29, !noalias !2898
  store i8 1, ptr %i.lv, align 1, !tbaa !89, !noalias !2898
  store ptr @.str.203, ptr %148, align 8, !tbaa !90, !noalias !2898
  store i8 3, ptr %i.lu, align 8, !tbaa !88, !noalias !2898
  call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBase5errorERKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %i.cu, ptr noundef nonnull align 8 dereferenceable(34) %148)
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #29, !noalias !2898
  %.pre.i = load i8, ptr %i.lm, align 8, !noalias !2898
  br label %.critedge24.i

._crit_edge118.i:                                 ; preds = %_ZN4llvm11AttrBuilderD2Ev.exit.i, %.preheader.i
  %i.tt = load ptr, ptr %i.dj, align 8, !tbaa !601, !noalias !2898, !nonnull !76, !align !376
  %i.tu = load ptr, ptr %145, align 8, !tbaa !79, !noalias !2898
  %i.tv = load i32, ptr %i.lj, align 8, !tbaa !96, !noalias !2898
  %i.tw = zext i32 %i.tv to i64
  %i.tx = call ptr @_ZN4llvm13AttributeList3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr %i.tu, i64 %i.tw) #29 ; 2 uses
  %i.ty = load ptr, ptr %i.lc, align 8, !tbaa !661, !noalias !2898 ; 6 uses
  %i.tz = load ptr, ptr %i.ln, align 8, !tbaa !486, !noalias !2898
  %.not.i.i.i = icmp eq ptr %i.ty, %i.tz
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge118.i
  %i.ua = ptrtoint ptr %i.tx to i64
  store i64 %i.ua, ptr %i.ty, align 8, !tbaa !556
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %i.ub, ptr %i.lc, align 8, !tbaa !661, !noalias !2898
  br label %.sink.split.i

bb.al:                                            ; preds = %._crit_edge118.i
  %i.uc = load ptr, ptr %i.lb, align 8, !tbaa !485, !noalias !2898 ; 5 uses
  %i.ud = ptrtoint ptr %i.ty to i64
  %i.ue = ptrtoint ptr %i.uc to i64               ; 2 uses
  %i.uf = sub i64 %i.ud, %i.ue                    ; 3 uses
  %i.ug = icmp eq i64 %i.uf, 9223372036854775800
  br i1 %i.ug, label %bb.am, label %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #33
  unreachable

_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.al
  %i.uh = ashr exact i64 %i.uf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.uh, i64 1)
  %i.ui = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.uh ; 2 uses
  %i.uj = icmp ult i64 %i.ui, %i.uh
  %i.uk = call i64 @llvm.umin.i64(i64 %i.ui, i64 1152921504606846975)
  %i.ul = select i1 %i.uj, i64 1152921504606846975, i64 %i.uk ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ul, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.um = shl nuw nsw i64 %i.ul, 3
  %i.un = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.um) #32 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uf
  %i.up = ptrtoint ptr %i.tx to i64
  store i64 %i.up, ptr %i.uo, align 8, !tbaa !556
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.uc, %i.ty
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.us, %.lr.ph.i.i.i.i.i.i.i ], [ %i.un, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ur, %.lr.ph.i.i.i.i.i.i.i ], [ %i.uc, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  %i.uq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !556, !alias.scope !2906
  store i64 %i.uq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !556, !alias.scope !2905
  %i.ur = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i189 = icmp eq ptr %i.ur, %i.ty
  br i1 %.not.i.i.i.i.i.i.i189, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2714

_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.un, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.us, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.uc, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.uu = load ptr, ptr %i.ln, align 8, !tbaa !486, !noalias !2898
  %i.uv = ptrtoint ptr %i.uu to i64
  %i.uw = sub i64 %i.uv, %i.ue
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.uw) #31
  br label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.an, %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.un, ptr %i.lb, align 8, !tbaa !485, !noalias !2898
  store ptr %i.ut, ptr %i.lc, align 8, !tbaa !661, !noalias !2898
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %i.ul
  store ptr %i.ux, ptr %i.ln, align 8, !tbaa !486, !noalias !2898
  br label %.sink.split.i

.lr.ph117.i:                                      ; preds = %.preheader.i, %_ZN4llvm11AttrBuilderD2Ev.exit.i
  %.020116.i = phi i32 [ %i.xi, %_ZN4llvm11AttrBuilderD2Ev.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #29, !noalias !2898
  %i.uy = load ptr, ptr %i.dj, align 8, !tbaa !601, !noalias !2898, !nonnull !76, !align !376
  store ptr %i.uy, ptr %149, align 8, !tbaa !169, !noalias !2898
  store ptr %i.lp, ptr %i.lo, align 8, !tbaa !79, !noalias !2898
  store i32 0, ptr %i.lq, align 8, !tbaa !96, !noalias !2898
  store i32 8, ptr %i.lr, align 4, !tbaa !97, !noalias !2898
  %i.uz = or disjoint i32 %.020116.i, 1
  %i.va = zext i32 %i.uz to i64
  %i.vb = load ptr, ptr %144, align 8, !tbaa !79, !noalias !2898 ; 2 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.va
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !98 ; 4 uses
  %i.ve = zext i32 %.020116.i to i64              ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.ve
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !98
  %i.vh = trunc i64 %i.vd to i32
  %i.vi = lshr i32 %i.vh, 16                      ; 2 uses
  %.not.i32.i = icmp eq i32 %i.vi, 0
  br i1 %.not.i32.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph117.i
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.vj, i1 true)
  %i.vl = trunc nuw nsw i64 %i.vk to i16
  %i.vm = xor i16 %i.vl, 319
  %i.vn = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder16addAlignmentAttrENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(88) %149, i16 %i.vm) #29 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph117.i
  %i.vo = lshr i64 %i.vd, 11
  %i.vp = and i64 %i.vo, 2199021158400
  %i.vq = and i64 %i.vd, 65535
  %i.vr = or disjoint i64 %i.vp, %i.vq            ; 4 uses
  %i.vs = icmp eq i64 %i.vg, 4294967295
  br i1 %i.vs, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.vt = and i64 %i.vd, 512
  %.not30.i.i = icmp eq i64 %i.vt, 0              ; 3 uses
  %i.vu = and i64 %i.vr, 2199021223423            ; 2 uses
  %spec.select41.i.i = select i1 %.not30.i.i, i64 %i.vr, i64 %i.vu ; 2 uses
  %i.vv = and i64 %spec.select41.i.i, 1024
  %.not31.i.i = icmp eq i64 %i.vv, 0
  br i1 %.not31.i.i, label %bb.ar, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aq
  %spec.select.i.i = select i1 %.not30.i.i, i32 1365, i32 0
  %i.vw = and i64 %spec.select41.i.i, 2199021222911
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not30.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.thread.i.i
  %.140.i.i = phi i64 [ %i.vw, %.thread.i.i ], [ %i.vu, %bb.ar ]
  %.sroa.0.138.i.i = phi i32 [ %spec.select.i.i, %.thread.i.i ], [ 0, %bb.ar ]
  %i.vx = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder13addMemoryAttrENS_17MemoryEffectsBaseINS_13IRMemLocationEEE(ptr noundef nonnull align 8 dereferenceable(88) %149, i32 %.sroa.0.138.i.i) #29 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %.5.i.i = phi i64 [ %i.vr, %bb.ap ], [ %.140.i.i, %bb.as ], [ %i.vr, %bb.ar ] ; 3 uses
  %i.vy = and i64 %.5.i.i, 2097152
  %.not32.i.i = icmp eq i64 %i.vy, 0
  br i1 %.not32.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vz = and i64 %.5.i.i, -2097153
  %i.wa = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15addCapturesAttrENS_11CaptureInfoE(ptr noundef nonnull align 8 dereferenceable(88) %149, i16 0) #29 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.6.i.i = phi i64 [ %i.vz, %bb.au ], [ %.5.i.i, %bb.at ] ; 2 uses
  %.not.i.i33.i = icmp eq i64 %.6.i.i, 0
  br i1 %.not.i.i33.i, label %_ZL30decodeLLVMAttributesForBitcodeRN4llvm11AttrBuilderEmm.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.av, %bb.ck
  %.0.i.i.i = phi i32 [ %i.ws, %bb.ck ], [ 0, %bb.av ] ; 6 uses
  switch i32 %.0.i.i.i, label %bb.cd [
    i32 106, label %_ZL30decodeLLVMAttributesForBitcodeRN4llvm11AttrBuilderEmm.exit.i
    i32 31, label %bb.cc
    i32 81, label %bb.cb
    i32 15, label %bb.ca
    i32 73, label %bb.bz
    i32 84, label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i
    i32 58, label %177
    i32 40, label %178
    i32 16, label %179
    i32 90, label %180
    i32 45, label %181
    i32 23, label %182
    i32 86, label %183
    i32 22, label %184
    i32 54, label %185
    i32 55, label %186
    i32 34, label %187
    i32 3, label %188
    i32 51, label %189
    i32 74, label %190
    i32 75, label %191
    i32 91, label %192
    i32 39, label %193
    i32 33, label %194
    i32 21, label %195
    i32 17, label %196
    i32 101, label %197
    i32 57, label %bb.aw
    i32 102, label %bb.ax
    i32 46, label %bb.ay
    i32 60, label %bb.az
    i32 19, label %bb.ba
    i32 29, label %bb.bb
    i32 76, label %bb.bc
    i32 68, label %bb.bd
    i32 64, label %bb.be
    i32 24, label %bb.bf
    i32 56, label %bb.bg
    i32 5, label %bb.bh
    i32 4, label %bb.bi
    i32 52, label %bb.bj
    i32 88, label %bb.bk
    i32 47, label %bb.bl
    i32 18, label %bb.bm
    i32 6, label %bb.bn
    i32 59, label %bb.bo
    i32 38, label %bb.bp
    i32 80, label %bb.bq
    i32 79, label %bb.br
    i32 83, label %bb.bs
    i32 72, label %bb.bt
    i32 77, label %bb.bu
    i32 62, label %bb.bv
    i32 26, label %bb.bw
    i32 49, label %bb.bx
    i32 70, label %bb.by
  ]

177:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

178:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

179:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

180:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

181:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

182:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

183:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

184:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

185:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

186:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

187:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

188:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

189:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

190:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

191:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

192:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

193:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

194:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

195:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

196:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

197:                                              ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.aw:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.ax:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.ay:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.az:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.ba:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bb:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bc:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bd:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.be:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bf:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bg:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bh:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bi:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bj:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bk:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bl:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bm:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bn:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bo:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bp:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bq:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.br:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bs:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bt:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bu:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bv:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bw:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bx:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.by:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.bz:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.ca:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.cb:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.cc:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

bb.cd:                                            ; preds = %.preheader.i.i.i
  br label %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i

_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i: ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %.preheader.i.i.i
  %.0.i.i.i.i = phi i64 [ 0, %bb.cd ], [ -9223372036854775808, %bb.cc ], [ 4611686018427387904, %bb.cb ], [ 2305843009213693952, %bb.ca ], [ 1152921504606846976, %bb.bz ], [ 576460752303423488, %bb.by ], [ 2, %177 ], [ 4, %178 ], [ 8, %179 ], [ 16, %180 ], [ 32, %181 ], [ 64, %182 ], [ 128, %183 ], [ 256, %184 ], [ 512, %185 ], [ 1024, %186 ], [ 2048, %187 ], [ 4096, %188 ], [ 8192, %189 ], [ 16384, %190 ], [ 32768, %191 ], [ 2031616, %192 ], [ 4194304, %193 ], [ 8388608, %194 ], [ 16777216, %195 ], [ 33554432, %196 ], [ 469762048, %197 ], [ 536870912, %bb.aw ], [ 1073741824, %bb.ax ], [ 2147483648, %bb.ay ], [ 4294967296, %bb.az ], [ 8589934592, %bb.ba ], [ 17179869184, %bb.bb ], [ 34359738368, %bb.bc ], [ 68719476736, %bb.bd ], [ 137438953472, %bb.be ], [ 274877906944, %bb.bf ], [ 549755813888, %bb.bg ], [ 1099511627776, %bb.bh ], [ 2199023255552, %bb.bi ], [ 4398046511104, %bb.bj ], [ 8796093022208, %bb.bk ], [ 17592186044416, %bb.bl ], [ 35184372088832, %bb.bm ], [ 70368744177664, %bb.bn ], [ 140737488355328, %bb.bo ], [ 281474976710656, %bb.bp ], [ 2251799813685248, %bb.bq ], [ 4503599627370496, %bb.br ], [ 9007199254740992, %bb.bs ], [ 18014398509481984, %bb.bt ], [ 36028797018963968, %bb.bu ], [ 72057594037927936, %bb.bv ], [ 144115188075855872, %bb.bw ], [ 288230376151711744, %bb.bx ], [ 1, %.preheader.i.i.i ]
  %i.wb = and i64 %.0.i.i.i.i, %.6.i.i            ; 3 uses
  %.not19.i.i.i = icmp eq i64 %i.wb, 0
  br i1 %.not19.i.i.i, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i
  switch i32 %.0.i.i.i, label %bb.ch [
    i32 91, label %bb.cf
    i32 101, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.wc = lshr i64 %i.wb, 16                      ; 2 uses
  %i.wd = add nsw i64 %i.wc, -33
  %.not.i.not.i.i.i.i = icmp ult i64 %i.wd, -32
  %i.we = trunc i64 %i.wc to i16
  %i.wf = sub i16 64, %i.we
  %i.wg = xor i16 %i.wf, 319
  %.sroa.0.0.insert.insert.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i16 0, i16 %i.wg
  %i.wh = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder16addAlignmentAttrENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(88) %149, i16 %.sroa.0.0.insert.insert.i.i.i.i) #29 ; 0 uses
  br label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  %i.wi = lshr i64 %i.wb, 26                      ; 2 uses
  %i.wj = add nsw i64 %i.wi, -33
  %.not.i.not.i20.i.i.i = icmp ult i64 %i.wj, -32
  %i.wk = trunc nuw nsw i64 %i.wi to i16
  %i.wl = sub nsw i16 64, %i.wk
  %i.wm = xor i16 %i.wl, 319
  %.sroa.0.0.insert.insert.i21.i.i.i = select i1 %.not.i.not.i20.i.i.i, i16 0, i16 %i.wm
  %i.wn = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder21addStackAlignmentAttrENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(88) %149, i16 %.sroa.0.0.insert.insert.i21.i.i.i) #29 ; 0 uses
  br label %bb.ck

bb.ch:                                            ; preds = %bb.ce
  %i.wo = add nsw i32 %.0.i.i.i, -85
  %i.wp = icmp ult i32 %i.wo, 6
  br i1 %i.wp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.wq = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder11addTypeAttrENS_9Attribute8AttrKindEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(88) %149, i32 noundef %.0.i.i.i, ptr noundef null) #29 ; 0 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.wr = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %149, i32 noundef %.0.i.i.i) #29 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cg, %bb.cf, %_ZL19getRawAttributeMaskN4llvm9Attribute8AttrKindE.exit.i.i.i
  %i.ws = add nuw nsw i32 %.0.i.i.i, 1
  br label %.preheader.i.i.i, !llvm.loop !2715

_ZL30decodeLLVMAttributesForBitcodeRN4llvm11AttrBuilderEmm.exit.i: ; preds = %.preheader.i.i.i, %bb.av
  %i.wt = load ptr, ptr %i.dj, align 8, !tbaa !601, !noalias !2898, !nonnull !76, !align !376
  %i.wu = load ptr, ptr %144, align 8, !tbaa !79, !noalias !2898
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.ve
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !98
  %i.wx = trunc i64 %i.ww to i32
  %i.wy = call ptr @_ZN4llvm13AttributeList3getERNS_11LLVMContextEjRKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.wt, i32 noundef %i.wx, ptr noundef nonnull align 8 dereferenceable(88) %149) #29 ; 2 uses
  %i.wz = load i32, ptr %i.lj, align 8, !tbaa !96, !noalias !2898 ; 2 uses
  %i.xa = load i32, ptr %i.lk, align 4, !tbaa !97, !noalias !2898
  %.not.i34.i = icmp ult i32 %i.wz, %i.xa
  br i1 %.not.i34.i, label %bb.cm, label %bb.cl, !prof !356

bb.cl:                                            ; preds = %_ZL30decodeLLVMAttributesForBitcodeRN4llvm11AttrBuilderEmm.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %145, ptr %i.wy)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit.i

bb.cm:                                            ; preds = %_ZL30decodeLLVMAttributesForBitcodeRN4llvm11AttrBuilderEmm.exit.i
  %i.xb = zext i32 %i.wz to i64
  %i.xc = load ptr, ptr %145, align 8, !tbaa !79, !noalias !2898
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xb
  store ptr %i.wy, ptr %i.xd, align 1
  %i.xe = load i32, ptr %i.lj, align 8, !tbaa !96, !noalias !2898
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.lj, align 8, !tbaa !96, !noalias !2898
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit.i: ; preds = %bb.cm, %bb.cl
  %i.xg = load ptr, ptr %i.lo, align 8, !tbaa !79, !noalias !2898 ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.lp
  br i1 %i.xh, label %_ZN4llvm11AttrBuilderD2Ev.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit.i
  call void @free(ptr noundef %i.xg) #29
  br label %_ZN4llvm11AttrBuilderD2Ev.exit.i

_ZN4llvm11AttrBuilderD2Ev.exit.i:                 ; preds = %bb.cn, %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #29, !noalias !2898
  %i.xi = add i32 %.020116.i, 2                   ; 2 uses
  %.not22.i = icmp eq i32 %i.xi, %i.tr
  br i1 %.not22.i, label %._crit_edge118.i, label %.lr.ph117.i, !llvm.loop !2716

bb.co:                                            ; preds = %bb.ah
  %i.xj = load ptr, ptr %144, align 8, !tbaa !79, !noalias !2898 ; 2 uses
  %i.xk = load i32, ptr %i.lg, align 8, !tbaa !96, !noalias !2898 ; 2 uses
  %i.xl = zext i32 %i.xk to i64
  %.idx.i = shl nuw nsw i64 %i.xl, 3
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.idx.i
  %.not113.i = icmp eq i32 %i.xk, 0
  br i1 %.not113.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit50.i, %bb.co
  %i.xn = load ptr, ptr %i.dj, align 8, !tbaa !601, !noalias !2898, !nonnull !76, !align !376
  %i.xo = load ptr, ptr %145, align 8, !tbaa !79, !noalias !2898
  %i.xp = load i32, ptr %i.lj, align 8, !tbaa !96, !noalias !2898
  %i.xq = zext i32 %i.xp to i64
  %i.xr = call ptr @_ZN4llvm13AttributeList3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.xn, ptr %i.xo, i64 %i.xq) #29 ; 2 uses
  %i.xs = load ptr, ptr %i.lc, align 8, !tbaa !661, !noalias !2898 ; 6 uses
  %i.xt = load ptr, ptr %i.ln, align 8, !tbaa !486, !noalias !2898
  %.not.i.i35.i = icmp eq ptr %i.xs, %i.xt
  br i1 %.not.i.i35.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i
  %i.xu = ptrtoint ptr %i.xr to i64
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !556
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store ptr %i.xv, ptr %i.lc, align 8, !tbaa !661, !noalias !2898
  br label %.sink.split.i

bb.cq:                                            ; preds = %._crit_edge.i
  %i.xw = load ptr, ptr %i.lb, align 8, !tbaa !485, !noalias !2898 ; 5 uses
  %i.xx = ptrtoint ptr %i.xs to i64
  %i.xy = ptrtoint ptr %i.xw to i64               ; 2 uses
  %i.xz = sub i64 %i.xx, %i.xy                    ; 3 uses
  %i.ya = icmp eq i64 %i.xz, 9223372036854775800
  br i1 %i.ya, label %bb.cr, label %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i

bb.cr:                                            ; preds = %bb.cq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #33
  unreachable

_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i: ; preds = %bb.cq
  %i.yb = ashr exact i64 %i.xz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i37.i = call i64 @llvm.umax.i64(i64 %i.yb, i64 1)
  %i.yc = add nsw i64 %.sroa.speculated.i.i.i.i37.i, %i.yb ; 2 uses
  %i.yd = icmp ult i64 %i.yc, %i.yb
  %i.ye = call i64 @llvm.umin.i64(i64 %i.yc, i64 1152921504606846975)
  %i.yf = select i1 %i.yd, i64 1152921504606846975, i64 %i.ye ; 3 uses
  %.not.i.i.i.i38.i = icmp ne i64 %i.yf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38.i)
  %i.yg = shl nuw nsw i64 %i.yf, 3
  %i.yh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yg) #32 ; 5 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 %i.xz
  %i.yj = ptrtoint ptr %i.xr to i64
  store i64 %i.yj, ptr %i.yi, align 8, !tbaa !556
  %.not10.i.i.i.i.i.i39.i = icmp eq ptr %i.xw, %i.xs
  br i1 %.not10.i.i.i.i.i.i39.i, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i44.i, label %.lr.ph.i.i.i.i.i.i40.i

.lr.ph.i.i.i.i.i.i40.i:                           ; preds = %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i, %.lr.ph.i.i.i.i.i.i40.i
  %.012.i.i.i.i.i.i41.i = phi ptr [ %i.ym, %.lr.ph.i.i.i.i.i.i40.i ], [ %i.yh, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i ] ; 2 uses
  %.0911.i.i.i.i.i.i42.i = phi ptr [ %i.yl, %.lr.ph.i.i.i.i.i.i40.i ], [ %i.xw, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  %i.yk = load i64, ptr %.0911.i.i.i.i.i.i42.i, align 8, !tbaa !556, !alias.scope !2908
  store i64 %i.yk, ptr %.012.i.i.i.i.i.i41.i, align 8, !tbaa !556, !alias.scope !2907
  %i.yl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i42.i, i64 8 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i41.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i43.i = icmp eq ptr %i.yl, %i.xs
  br i1 %.not.i.i.i.i.i.i43.i, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i44.i, label %.lr.ph.i.i.i.i.i.i40.i, !llvm.loop !2714

_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i44.i: ; preds = %.lr.ph.i.i.i.i.i.i40.i, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i
  %.0.lcssa.i.i.i.i.i.i45.i = phi ptr [ %i.yh, %_ZNKSt6vectorIN4llvm13AttributeListESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i36.i ], [ %i.ym, %.lr.ph.i.i.i.i.i.i40.i ]
  %i.yn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i45.i, i64 8
  %.not.i23.i.i.i46.i = icmp eq ptr %i.xw, null
  br i1 %.not.i23.i.i.i46.i, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i47.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i44.i
  %i.yo = load ptr, ptr %i.ln, align 8, !tbaa !486, !noalias !2898
  %i.yp = ptrtoint ptr %i.yo to i64
  %i.yq = sub i64 %i.yp, %i.xy
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.yq) #31
  br label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i47.i

_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i47.i: ; preds = %bb.cs, %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i44.i
  store ptr %i.yh, ptr %i.lb, align 8, !tbaa !485, !noalias !2898
  store ptr %i.yn, ptr %i.lc, align 8, !tbaa !661, !noalias !2898
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %i.yf
  store ptr %i.yr, ptr %i.ln, align 8, !tbaa !486, !noalias !2898
  br label %.sink.split.i

.lr.ph.i:                                         ; preds = %bb.co, %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit50.i
  %.019114.i = phi ptr [ %i.zc, %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit50.i ], [ %i.xj, %bb.co ] ; 2 uses
  %i.ys = load i64, ptr %.019114.i, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #29, !noalias !2898
  %i.yt = trunc i64 %i.ys to i32
  store i32 %i.yt, ptr %i.ac, align 4, !tbaa !114, !noalias !2898
  %i.yu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEEixEOj(ptr noundef nonnull align 8 dereferenceable(48) %i.jb, ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.yu, align 8, !tbaa !556 ; 2 uses
  %i.yv = load i32, ptr %i.lj, align 8, !tbaa !96, !noalias !2898 ; 2 uses
  %i.yw = load i32, ptr %i.lk, align 4, !tbaa !97, !noalias !2898
  %.not.i49.i = icmp ult i32 %i.yv, %i.yw
  br i1 %.not.i49.i, label %bb.cu, label %bb.ct, !prof !356

bb.ct:                                            ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %145, ptr %.sroa.0.0.copyload.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE9push_backES1_.exit50.i

bb.cu:                                            ; preds = %.lr.ph.i
  %i.yx = zext i32 %i.yv to i64
  %i.yy = load ptr, ptr %145, align 8, !tbaa !79, !noalias !2898
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yx
  store ptr %.sroa.0.0.copyload.i, ptr %i.yz, align 1
end_hunk_1
