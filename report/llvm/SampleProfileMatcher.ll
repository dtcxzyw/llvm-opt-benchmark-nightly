Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfileMatcher?download=true
inline.NumInlined: 5251
inline.NumDeleted: 2548
begin_hunk_0_@_ZN4llvm20SampleProfileMatcher27findFunctionsWithoutProfileEv:bb.a
  br i1 %.not.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !262
  br label %_ZN4llvm10sampleprof20SampleProfileNameSetD2Ev.exit

_ZN4llvm10sampleprof20SampleProfileNameSetD2Ev.exit: ; preds = %._crit_edge, %bb.c, %.loopexit.loopexit.i.i
  %i.ab = phi ptr [ %.pre.i.i, %.loopexit.loopexit.i.i ], [ %.pre13.i.i, %bb.c ], [ %.pre13.i.i, %._crit_edge ]
  call void @free(ptr noundef %i.ab) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit
  %.sroa.021.033 = phi ptr [ %.sroa.021.031, %.lr.ph ], [ %.sroa.021.0, %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.021.033, i64 -64 ; 4 uses
  %i.ad = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #20
  br i1 %i.ad, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #20 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.j, ptr %3, align 8, !tbaa !41
  store i32 3, ptr %i.l, align 4, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) @constinit, i64 48, i1 false)
  store i32 3, ptr %i.k, align 8, !tbaa !46
  %i.ah = call { ptr, i64 } @_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefENS_8ArrayRefIS2_EES2_(ptr %i.af, i64 %i.ag, ptr nonnull %i.j, i64 3, ptr nonnull @.str.17, i64 8)
  %.fr = freeze { ptr, i64 } %i.ah                ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefES2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ai) #20
  br label %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefES2_.exit

_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefES2_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ak = extractvalue { ptr, i64 } %.fr, 0       ; 6 uses
  %i.al = extractvalue { ptr, i64 } %.fr, 1       ; 8 uses
  %i.am = call noundef ptr @_ZN4llvm20SampleProfileMatcher22getFlattenedSamplesForERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.ac)
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.i, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit

bb.i:                                             ; preds = %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefES2_.exit
  %i.an = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ak, i64 %i.al) #20
  %i.ao = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr %i.ak, i64 %i.al, i32 noundef %i.an) #20 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit.thread, label %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit

_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit: ; preds = %bb.i
  %i.aq = sext i32 %i.ao to i64
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !280
  %.pre4.i.i.i = zext i32 %.pre.i.i.i to i64
  %.not27 = icmp eq i64 %i.aq, %.pre4.i.i.i
  br i1 %.not27, label %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit.thread, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit

_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit.thread: ; preds = %bb.i, %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !805 ; 4 uses
  %.not28 = icmp eq ptr %i.ar, null
  br i1 %.not28, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !301, !noalias !806 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !302, !noalias !806 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !303, !noalias !806 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i32 %i.ax, -1                       ; 3 uses
  %i.ba = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %i.ak, i64 %i.al) #20
  %.01627.i.i = and i32 %i.ba, %i.az              ; 4 uses
  %i.bb = zext i32 %.01627.i.i to i64             ; 3 uses
  %i.bc = lshr i64 %i.bb, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.bf = and i32 %.01627.i.i, 31
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %.lr.ph.i.i17, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread, !prof !92

.lr.ph.i.i17:                                     ; preds = %bb.k
  %i.bi = icmp eq i64 %i.al, 0
  br i1 %i.bi, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i17, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i
  %i.bj = phi i64 [ %i.bm, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %i.bb, %.lr.ph.i.i17 ]
  %.01628.us.i.i = phi i32 [ %.016.us.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %.01627.i.i, %.lr.ph.i.i17 ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bj
  %.sroa.2.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.us.i.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i.i, align 8, !tbaa !55
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.2.0.copyload.us.i.i, 0
  br i1 %.not.i.i.us.i.i, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, !prof !304

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.bl = add nuw i32 %.01628.us.i.i, 1
  %.016.us.i.i = and i32 %i.bl, %i.az             ; 3 uses
  %i.bm = zext i32 %.016.us.i.i to i64            ; 2 uses
  %i.bn = lshr i64 %i.bm, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !51
  %i.bq = and i32 %.016.us.i.i, 31
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %.lr.ph.split.us.i.i, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread, !prof !94

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i17, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i
  %i.bt = phi i64 [ %i.bx, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %i.bb, %.lr.ph.i.i17 ]
  %.01628.i.i = phi i32 [ %.016.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %.01627.i.i, %.lr.ph.i.i17 ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bt ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !55
  %.not.i.i.i.i = icmp eq i64 %i.al, %.sroa.2.0.copyload.i.i
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !304

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i: ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bu, align 8, !tbaa !53
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.ak, ptr %.sroa.0.0.copyload.i.i, i64 %i.al)
  %i.bv = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bv, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !305

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.i.i
  %i.bw = add nuw i32 %.01628.i.i, 1
  %.016.i.i = and i32 %i.bw, %i.az                ; 3 uses
  %i.bx = zext i32 %.016.i.i to i64               ; 2 uses
  %i.by = lshr i64 %i.bx, 5
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51
  %i.cb = and i32 %.016.i.i, 31
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = trunc i32 %i.cc to i1
  br i1 %i.cd, label %.lr.ph.split.i.i, label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread, !prof !94

_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, %bb.k, %bb.j, %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !807
  %.not.i.i.i.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i18, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEEixERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !807
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %1) #20, !noalias !807
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %1, ptr nonnull %i.ak, i64 %i.al) #20, !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !807
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %1, ptr noundef nonnull align 1 dereferenceable(16) %2) #20, !noalias !807
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !noalias !807
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !807
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !807
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEEixERKS3_.exit

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEEixERKS3_.exit: ; preds = %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread, %bb.l
  %.0.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.al, %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit.thread ]
  store i64 %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !55, !noalias !807
  %i.ce = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E24lookupOrInsertIntoBucketIRKmJS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !808
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !807
  %i.cf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store ptr %i.ac, ptr %i.cf, align 8, !tbaa !82
  br label %_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit

_ZN4llvm10sampleprof17ProfileSymbolList8containsENS_9StringRefE.exit: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.us.i.i, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS_8FunctionEJEEixERKS3_.exit, %_ZN4llvm10sampleprof15FunctionSamples18getCanonicalFnNameENS_9StringRefES2_.exit, %_ZNK4llvm10sampleprof20SampleProfileNameSet8containsENS_9StringRefE.exit, %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.021.033, i64 8
  %.sroa.021.0 = load ptr, ptr %i.cg, align 8, !tbaa !44 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.021.0, %i.i
  br i1 %.not26, label %._crit_edge, label %bb.f

bb.m:                                             ; preds = %bb.a, %_ZN4llvm10sampleprof20SampleProfileNameSetD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10sampleprof20SampleProfileNameSetC2ERKNS0_19SampleProfileReaderE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(190) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !809
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.b, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = load ptr, ptr %1, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %2, ptr noundef nonnull align 8 dereferenceable(190) %1) #20
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i11 = load ptr, ptr %i.f, align 8 ; 3 uses
  %.not25 = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i11
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.g = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  br i1 %i.g, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit

_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us: ; preds = %.lr.ph, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us
  %.sroa.021.026.us = phi ptr [ %i.t, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us ], [ %.sroa.0.0.copyload.i, %.lr.ph ]
  %i.i = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr null, i64 0) #20
  %i.j = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr null, i64 0, i32 noundef %i.i) #20 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  %.not.i.i.i.us = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.us, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.us, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.us: ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us
  %i.o = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 9, i64 noundef 8) #20 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 0, ptr %i.p, align 1, !tbaa !265
  store i64 0, ptr %i.o, align 8, !tbaa !267
  store ptr %i.o, ptr %i.m, align 8, !tbaa !264
  %i.q = load i32, ptr %i.h, align 4, !tbaa !268
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.h, align 4, !tbaa !268
  %i.s = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %i.j) #20 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us: ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.us, %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.026.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.t, %.sroa.0.0.copyload.i11
  br i1 %.not.us, label %._crit_edge, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit.us

._crit_edge:                                      ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit: ; preds = %.lr.ph, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit
  %.sroa.021.026 = phi ptr [ %i.ah, %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit ], [ %.sroa.0.0.copyload.i, %.lr.ph ] ; 3 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %.sroa.021.026, align 8, !tbaa !53 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8
  %.0.copyload.i.i.pn.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i16, null
  %.sroa.4.0.i = select i1 %.not.i, i64 0, i64 %.0.copyload.i.i.pn.i ; 7 uses
  %i.u = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.copyload.i16, i64 %.sroa.4.0.i) #20
  %i.v = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr %.sroa.0.0.copyload.i16, i64 %.sroa.4.0.i, i32 noundef %i.u) #20 ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !264
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

bb.b:                                             ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit
  %i.aa = add i64 %.sroa.4.0.i, 9
  %i.ab = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 8) #20 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %.sroa.0.0.copyload.i16, i64 %.sroa.4.0.i, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.4.0.i
  store i8 0, ptr %i.ad, align 1, !tbaa !265
  store i64 %.sroa.4.0.i, ptr %i.ab, align 8, !tbaa !267
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !264
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !268
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.h, align 4, !tbaa !268
  %i.ag = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %i.v) #20 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit: ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit, %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ah, %.sroa.0.0.copyload.i11
  br i1 %.not, label %._crit_edge, label %_ZNK4llvm10sampleprof22SampleProfileNameTable8iteratordeEv.exit
}

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20SampleProfileMatcher38matchFunctionsWithoutProfileByBasenameEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::tuple.634", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.491", align 1    ; 3 uses
  %3 = alloca %"class.llvm::DenseMapIterator.83", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.535", align 8    ; 3 uses
  %5 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %6 = alloca %"struct.llvm::ItaniumPartialDemangler", align 8 ; 6 uses
  %7 = alloca %"class.llvm::StringMap.322", align 8 ; 19 uses
  %8 = alloca %"class.llvm::StringSet", align 8   ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.llvm::StringMap.332", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.llvm::DenseSet.307", align 8 ; 7 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvm::sampleprof::SampleProfileMap", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %15 = alloca %"class.llvm::sampleprof::SampleContext", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !307
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28LoadFuncProfileforCGMatchingE, i64 120), align 8, !range !37
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.ba

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197, !nonnull !38, !align !191 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %5, ptr noundef nonnull align 8 dereferenceable(190) %i.i) #20
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !827
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !827
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4llvm23ItaniumPartialDemanglerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.r, align 8, !tbaa !306
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !85, !noalias !828
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91, !noalias !828 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = load i32, ptr %i.v, align 4, !tbaa !86, !noalias !828 ; 2 uses
  %i.x = load i32, ptr %i.c, align 8, !tbaa !307, !noalias !828
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i32 %i.w to i64                     ; 4 uses
  %.idx334 = shl nuw nsw i64 %i.z, 4              ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.w, 0
  %or.cond223 = select i1 %i.y, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond223, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !51, !noalias !829 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.ae = icmp eq i64 %i.ab, 1
  br i1 %i.ae, label %._crit_edge.thread, label %.lr.ph348

.lr.ph.i.i.i:                                     ; preds = %.lr.ph348
  %i.af = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.ab
  br i1 %i.ag, label %._crit_edge.thread, label %.lr.ph348, !llvm.loop !814

.lr.ph348:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.ah = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51, !noalias !829 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !814

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph348
  %i.al = shl i64 %i.ah, 9
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E5beginEv.exit: ; preds = %bb.d, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.al, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.aj, %._crit_edge.i.loopexit.i.i ]
  %i.am = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.an = shl nuw nsw i32 %i.am, 4
  %.idx = zext nneg i32 %i.an to i64
  %i.ao = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not224240 = icmp eq i64 %i.ao, %.idx334
  br i1 %.not224240, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E5beginEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.at = add nuw nsw i64 %i.z, 31
  %i.au = lshr i64 %i.at, 5                       ; 2 uses
  br label %bb.e

._crit_edge.thread:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E5beginEv.exit, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.as

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm16DenseMapIteratorImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !268
  %i.aw = icmp eq i32 %.pre, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  br i1 %i.aw, label %bb.as, label %bb.m

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.ao, %.lr.ph ], [ %i.dq, %_ZN4llvm16DenseMapIteratorImPNS_8FunctionENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0201.0241 = getelementptr i8, ptr %i.s, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0201.0241, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.ba = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #20 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1
  call fastcc void @_ZL20getDemangledBaseNameB5cxx11RN4llvm23ItaniumPartialDemanglerENS_9StringRefE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.bb, i64 %i.bc)
  %i.bd = load i64, ptr %i.ap, align 8, !tbaa !308 ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %9, align 8, !tbaa !309   ; 2 uses
  %i.bg = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.bf, i64 %i.bd) #20
  %i.bh = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr %i.bf, i64 %i.bd, i32 noundef %i.bg) #20 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit

_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit: ; preds = %bb.f
  %i.bj = sext i32 %i.bh to i64
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !280
  %.pre4.i.i = zext i32 %.pre.i.i to i64
  %.not230 = icmp eq i64 %i.bj, %.pre4.i.i
  br i1 %.not230, label %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit.thread, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit.thread: ; preds = %bb.f, %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit
  %i.bk = load ptr, ptr %9, align 8, !tbaa !309   ; 3 uses
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !308 ; 7 uses
  %i.bm = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.bk, i64 %i.bl) #20
  %i.bn = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr %i.bk, i64 %i.bl, i32 noundef %i.bm) #20 ; 2 uses
  %i.bo = load ptr, ptr %7, align 8, !tbaa !262
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !264 ; 4 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit.thread
  %i.bs = add i64 %i.bl, 17
  %i.bt = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.bs, i64 noundef 8) #20 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE11try_emplaceIJRS2_EEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  br label %_ZN4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE11try_emplaceIJRS2_EEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit.thread

_ZN4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE11try_emplaceIJRS2_EEESt4pairINS_17StringMapIterBaseIS2_Lb0EEEbENS_9StringRefEDpOT_.exit.thread: ; preds = %bb.g, %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store i8 0, ptr %i.bv, align 1, !tbaa !265
  store i64 %i.bl, ptr %i.bt, align 8, !tbaa !267
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !82
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !831
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !264
  %i.by = load i32, ptr %i.ar, align 4, !tbaa !268
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.ar, align 4, !tbaa !268
  %i.ca = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %7, i32 noundef %i.bn) #20 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

bb.i:                                             ; preds = %_ZNK4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEE5countENS_9StringRefE.exit.thread
  call void @_ZN4llvm13StringMapImpl9RemoveKeyEPNS_18StringMapEntryBaseE(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull %i.br) #20
  %i.cb = load i64, ptr %i.br, align 8, !tbaa !267
  %i.cc = add i64 %i.cb, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 noundef %i.cc, i64 noundef 8) #20
  %i.cd = load ptr, ptr %9, align 8, !tbaa !309   ; 3 uses
end_hunk_0
