Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/trie_index_factory?download=true
inline.NumInlined: 1274
inline.NumDeleted: 741
begin_hunk_0_@_ZN7rocksdb10trie_index16TrieIndexBuilder6FinishEPNS_5SliceE:bb.a
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.02629 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %.02629 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.al = icmp eq i64 %i.ak, %i.ag
  br i1 %i.al, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.f
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !27
  %bcmp.i = call i32 @bcmp(ptr %i.an, ptr %i.am, i64 %i.ag)
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ap = add i64 %.02629, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.aa
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !200

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.e, %bb.d
  %.026.lcssa = phi i64 [ %i.ad, %bb.d ], [ %.02629, %bb.e ], [ %i.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.02629, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 5 uses
  %i.aq = sub i64 %.026.lcssa, %.035
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !27
  store ptr %i.au, ptr %5, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  store i64 %i.aw, ptr %i.s, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @_ZN7rocksdb10trie_index16LoudsTrieBuilder15AddKeyWithSeqnoERKNS_5SliceERKNS0_15TrieBlockHandleEmj(ptr noundef nonnull align 8 dereferenceable(432) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef %i.at, i32 noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ay = icmp ult i64 %i.ad, %.026.lcssa
  br i1 %i.ay, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %.critedge, %.lr.ph34
  %.02533 = phi i64 [ %i.be, %.lr.ph34 ], [ %i.ad, %.critedge ] ; 2 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.az, i64 %.02533 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !79
  call void @_ZN7rocksdb10trie_index16LoudsTrieBuilder16AddOverflowBlockERKNS0_15TrieBlockHandleEm(ptr noundef nonnull align 8 dereferenceable(432) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 noundef %i.bd)
  %i.be = add i64 %.02533, 1                      ; 2 uses
  %exitcond37.not = icmp eq i64 %i.be, %.026.lcssa
  br i1 %exitcond37.not, label %.loopexit, label %.lr.ph34, !llvm.loop !201

.loopexit28:                                      ; preds = %.loopexit, %..loopexit28_crit_edge, %.preheader
  %.pre40 = phi ptr [ %.pre39, %..loopexit28_crit_edge ], [ %i.m, %.preheader ], [ %i.t, %.loopexit ] ; 3 uses
  %i.bf = phi ptr [ %.pre, %..loopexit28_crit_edge ], [ %i.n, %.preheader ], [ %i.u, %.loopexit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.not.i.i = icmp eq ptr %.pre40, %i.bf
  br i1 %.not.i.i, label %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit28, %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i ], [ %i.bf, %.loopexit28 ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #24
  br label %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %.pre40
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !81
  br label %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE5clearEv.exit

_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE5clearEv.exit: ; preds = %.loopexit28, %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bo = phi ptr [ %i.bf, %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %.pre40, %.loopexit28 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !82
  %i.br = icmp eq ptr %i.bq, %i.bo
  br i1 %i.br, label %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE5clearEv.exit
  %i.bs = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) #22 ; 0 uses
  br label %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE5clearEv.exit, %bb.g
  call void @_ZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(432) %i.i)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !21
  store ptr %i.bu, ptr %2, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !88, !alias.scope !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !205
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE13shrink_to_fitEv.exit, %bb.b
  ret void
}

declare void @_ZN7rocksdb10trie_index16LoudsTrieBuilder15AddKeyWithSeqnoERKNS_5SliceERKNS0_15TrieBlockHandleEmj(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7rocksdb10trie_index16LoudsTrieBuilder16AddOverflowBlockERKNS0_15TrieBlockHandleEm(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

declare void @_ZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK7rocksdb10trie_index16TrieIndexBuilder13EstimatedSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = mul i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 56
  %i.l = shl nsw i64 %i.k, 4
  %i.m = add i64 %i.l, %i.c
  ret i64 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index17TrieIndexIteratorC2EPKNS0_9LoudsTrieEPKNS_10ComparatorEb(ptr noundef nonnull align 8 dereferenceable(424) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN7rocksdb10trie_index17TrieIndexIteratorE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb10trie_index17LoudsTrieIteratorC1EPKNS0_9LoudsTrieE(ptr noundef nonnull align 8 dereferenceable(281) %i.b, ptr noundef %1)
  %i.c = zext i1 %3 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %1, ptr %i.d, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.g, align 8, !tbaa !21
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.j, align 8, !tbaa !21
  store i8 0, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 409
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.k, i8 0, i64 33, i1 false)
  store i8 %i.c, ptr %i.l, align 1, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 0, ptr %i.m, align 4, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 1, ptr %i.n, align 8, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 0, ptr %i.o, align 4, !tbaa !115
  ret void
}

declare void @_ZN7rocksdb10trie_index17LoudsTrieIteratorC1EPKNS0_9LoudsTrieE(ptr noundef nonnull align 8 dereferenceable(281), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index17TrieIndexIterator7PrepareEPKNS_11ScanOptionsEm(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !119, !range !83, !noundef !84
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !119
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.h) #22
  br label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !117
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.k, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 1, ptr %i.l, align 8, !tbaa !121
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE9push_backERKS1_.exit
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.06 ; 7 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !117  ; 10 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !122
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 32, i1 false), !tbaa.struct !123
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !119
  %i.r = load i8, ptr %i.p, align 8, !tbaa !119, !range !83, !noundef !84
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i

_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !132
  store i64 %i.x, ptr %i.v, align 8, !tbaa !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.y, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !134
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr null, ptr %i.ae, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.t, ptr %3, align 8, !tbaa !139
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store i8 1, ptr %i.q, align 8, !tbaa !119
  br label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i

_ZSt12construct_atIN7rocksdb11ScanOptionsEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !117
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZSt12construct_atIN7rocksdb11ScanOptionsEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i, %bb.e
  %i.ah = add nuw i64 %.06, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !206
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 96076792050570581
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = load ptr, ptr %0, align 8, !tbaa !116
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 96
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit, label %bb.j

_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 96
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !116    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !117  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !123, !alias.scope !212
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !119, !alias.scope !210
  %i.v = load i8, ptr %i.t, align 8, !tbaa !119, !range !83, !alias.scope !211, !noundef !84
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !131, !alias.scope !211 ; 3 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !131, !alias.scope !210
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !132, !alias.scope !211 ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !132, !alias.scope !210
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140, !alias.scope !211 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !133, !alias.scope !210
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !134, !alias.scope !211
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !134, !alias.scope !210
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !136, !alias.scope !212
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 4 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !137, !alias.scope !210
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 4 uses
  %i.al = icmp eq ptr %i.x, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !131, !alias.scope !210
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !137, !alias.scope !211
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !137, !alias.scope !210
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = phi ptr [ %i.aj, %bb.e ], [ %i.x, %bb.d ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !142, !noalias !211
  %i.aq = urem i64 %i.ap, %i.aa
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !143, !noalias !211
  br label %bb.h

_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store i8 0, ptr %i.t, align 8, !tbaa !119, !alias.scope !211
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  store i64 0, ptr %i.as, align 8, !tbaa !144, !alias.scope !211
  store i64 1, ptr %i.z, align 8, !tbaa !132, !alias.scope !211
  store ptr null, ptr %i.ak, align 8, !tbaa !137, !alias.scope !211
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !131, !alias.scope !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !alias.scope !211
  store i8 1, ptr %i.u, align 8, !tbaa !119, !alias.scope !210
  store i8 0, ptr %i.t, align 8, !tbaa !119, !alias.scope !211
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.s) #22
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.h, %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %.not.i.i.i = icmp eq ptr %i.at, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit
  %i.av = phi ptr [ %.pr, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.av, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #24
  br label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.o, ptr %0, align 8, !tbaa !116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !117
  %i.bb = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %1
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index17TrieIndexIterator23SeekToFirstAndGetResultEPNS_13IterateResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(424) initializes((412, 424)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i32 0, ptr %i.a, align 4, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 420 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(281) %i.d)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !147
  store ptr @.str.5, ptr %2, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !148
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 0, i64 noundef %i.n, ptr noundef %i.h, i64 noundef %i.k) ; 0 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.q = load i64, ptr %i.m, align 8, !tbaa !21
  store ptr %i.p, ptr %2, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.s = load i8, ptr %i.r, align 1, !tbaa !112, !range !83, !noundef !84
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i8, ptr %i.u, align 8, !range !83
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !149  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1008
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.y
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !158
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1048
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.y
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !158
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !115
  br label %_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit

_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit: ; preds = %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 2, ptr %i.aj, align 8, !tbaa !147
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(281)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index17TrieIndexIterator22SeekToLastAndGetResultEPNS_13IterateResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(424) initializes((412, 424)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 412 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 420 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(281) %i.d)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !147
  store ptr @.str.5, ptr %2, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !148
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 0, i64 noundef %i.n, ptr noundef %i.h, i64 noundef %i.k) ; 0 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.q = load i64, ptr %i.m, align 8, !tbaa !21
  store ptr %i.p, ptr %2, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.s = load i8, ptr %i.r, align 1, !tbaa !112, !range !83, !noundef !84
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i8, ptr %i.u, align 8, !range !83
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !149  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1008
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.y
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !158 ; 2 uses
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1048
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.y
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !158
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !115
  %i.aj = add i32 %i.ae, -1
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !113
  br label %_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit

_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit: ; preds = %bb.c, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 2, ptr %i.ak, align 8, !tbaa !147
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb10trie_index17TrieIndexIterator27SetupOverflowForCurrentLeafEb.exit, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb10trie_index17LoudsTrieIterator10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(281)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index17TrieIndexIterator16PrevAndGetResultEPNS_13IterateResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 412 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !113  ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !113
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #22
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !27
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr nonnull %i.g, i64 %i.h)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  %i.r = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #22
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !27
  %bcmp.i8 = tail call i32 @bcmp(ptr %i.v, ptr nonnull %i.q, i64 %i.r)
  %i.w = icmp eq i32 %bcmp.i8, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  %.1 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7rocksdb12Customizable5InnerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7rocksdb12Customizable8NickNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @.str.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7rocksdb10trie_index16TrieIndexFactory10NewBuilderEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @abort() #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK7rocksdb10trie_index16TrieIndexFactory9NewReaderERNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @abort() #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb10trie_index16TrieIndexBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb10trie_index16LoudsTrieBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.q) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb10trie_index16TrieIndexBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(488) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN7rocksdb10trie_index16TrieIndexBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZN7rocksdb10trie_index16TrieIndexBuilderD2Ev.exit

_ZN7rocksdb10trie_index16TrieIndexBuilderD2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb10trie_index16LoudsTrieBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.q) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 488) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb10trie_index17TrieIndexIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !119, !range !83, !noundef !84
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !119
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.h) #22
  br label %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb11ScanOptionsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb11ScanOptionsES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pr.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !283
  %.not1.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not1.i.i.i, label %bb.d, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  store i64 0, ptr %i.ab, align 8, !tbaa !283
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !284 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !285
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN7rocksdb10trie_index17LoudsTrieIterator8LevelPosES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN7rocksdb10trie_index17LoudsTrieIterator8LevelPosES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !285
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit.i.i

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb10trie_index17LoudsTrieIterator8LevelPosES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %bb.d
  %.not.i.i.i1.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !286
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ak) #24
  br label %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EED2Ev.exit.i

_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EED2Ev.exit.i: ; preds = %bb.e, %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EE5clearEv.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN7rocksdb10trie_index17LoudsTrieIteratorD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #24
  br label %_ZN7rocksdb10trie_index17LoudsTrieIteratorD2Ev.exit

_ZN7rocksdb10trie_index17LoudsTrieIteratorD2Ev.exit: ; preds = %_ZN7rocksdb10autovectorINS_10trie_index17LoudsTrieIterator8LevelPosELm24EED2Ev.exit.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb10trie_index17TrieIndexIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7rocksdb10trie_index17TrieIndexIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 424) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb10trie_index15TrieIndexReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(1128) dereferenceable(1128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb10trie_index15TrieIndexReaderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb10trie_index9LoudsTrieD2Ev(ptr noundef nonnull align 8 dead_on_return(1104) dereferenceable(1104) %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb10trie_index15TrieIndexReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(1128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb10trie_index15TrieIndexReaderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb10trie_index9LoudsTrieD2Ev(ptr noundef nonnull align 8 dead_on_return(1104) dereferenceable(1104) %i.a) #22, !inline_history !287
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1128) #24
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #26
  unreachable

_ZNKSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !18
  %i.s = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7rocksdb10trie_index16TrieIndexBuilder13BufferedEntryESaIS3_EE12_M_check_lenEmPKc.exit
end_hunk_1
begin_hunk_2_@__cxa_end_catch

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !133 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #24
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !132
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !132
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !133 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 80) #24
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !5

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !132
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !116    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #26
  unreachable

_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 32, i1 false), !tbaa.struct !123
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !119
  %i.t = load i8, ptr %i.r, align 8, !tbaa !119, !range !83, !noundef !84
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.v, align 8, !tbaa !131
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !132
  store i64 %i.z, ptr %i.x, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr null, ptr %i.aa, align 8, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !134
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store ptr null, ptr %i.ag, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.v, ptr %3, align 8, !tbaa !139
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store i8 1, ptr %i.s, align 8, !tbaa !119
  br label %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE12_M_check_lenEmPKc.exit, %.noexc
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.bj, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !123, !alias.scope !310
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !119, !alias.scope !308
  %i.al = load i8, ptr %i.aj, align 8, !tbaa !119, !range !83, !alias.scope !309, !noundef !84
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.c, label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !131, !alias.scope !309 ; 3 uses
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !131, !alias.scope !308
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !132, !alias.scope !309 ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !132, !alias.scope !308
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !140, !alias.scope !309 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !133, !alias.scope !308
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !134, !alias.scope !309
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !134, !alias.scope !308
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !136, !alias.scope !310
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 4 uses
  store ptr null, ptr %i.az, align 8, !tbaa !137, !alias.scope !308
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 4 uses
  %i.bb = icmp eq ptr %i.an, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !131, !alias.scope !308
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !137, !alias.scope !309
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !137, !alias.scope !308
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bd = phi ptr [ %i.az, %bb.d ], [ %i.an, %bb.c ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !142, !noalias !309
  %i.bg = urem i64 %i.bf, %i.aq
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bg
  store ptr %i.ar, ptr %i.bh, align 8, !tbaa !143, !noalias !309
  br label %bb.g

_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store i8 0, ptr %i.aj, align 8, !tbaa !119, !alias.scope !309
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  store i64 0, ptr %i.bi, align 8, !tbaa !144, !alias.scope !309
  store i64 1, ptr %i.ap, align 8, !tbaa !132, !alias.scope !309
  store ptr null, ptr %i.ba, align 8, !tbaa !137, !alias.scope !309
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !131, !alias.scope !309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !309
  store i8 1, ptr %i.ak, align 8, !tbaa !119, !alias.scope !308
  store i8 0, ptr %i.aj, align 8, !tbaa !119, !alias.scope !309
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.ai) #22
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb11ScanOptionsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.bk, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31
  %.012.i.i.i28 = phi ptr [ %i.cp, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %i.bl, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  %.0911.i.i.i29 = phi ptr [ %i.co, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %1, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i29, i64 32, i1 false), !tbaa.struct !123, !alias.scope !313
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 88 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 88 ; 2 uses
  store i8 0, ptr %i.bp, align 8, !tbaa !119, !alias.scope !311
  %i.bq = load i8, ptr %i.bo, align 8, !tbaa !119, !range !83, !alias.scope !312, !noundef !84
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.h, label %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !131, !alias.scope !312 ; 3 uses
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !131, !alias.scope !311
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !132, !alias.scope !312 ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !132, !alias.scope !311
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !140, !alias.scope !312 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !133, !alias.scope !311
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !134, !alias.scope !312
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !134, !alias.scope !311
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !136, !alias.scope !313
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 80 ; 4 uses
  store ptr null, ptr %i.ce, align 8, !tbaa !137, !alias.scope !311
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 80 ; 4 uses
  %i.cg = icmp eq ptr %i.bs, %i.cf
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ce, ptr %i.bm, align 8, !tbaa !131, !alias.scope !311
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !137, !alias.scope !312
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !137, !alias.scope !311
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ci = phi ptr [ %i.ce, %bb.i ], [ %i.bs, %bb.h ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !142, !noalias !312
  %i.cl = urem i64 %i.ck, %i.bv
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cl
  store ptr %i.bw, ptr %i.cm, align 8, !tbaa !143, !noalias !312
  br label %bb.l

_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store i8 0, ptr %i.bo, align 8, !tbaa !119, !alias.scope !312
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72
  store i64 0, ptr %i.cn, align 8, !tbaa !144, !alias.scope !312
  store i64 1, ptr %i.bu, align 8, !tbaa !132, !alias.scope !312
  store ptr null, ptr %i.cf, align 8, !tbaa !137, !alias.scope !312
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !131, !alias.scope !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false), !alias.scope !312
  store i8 1, ptr %i.bp, align 8, !tbaa !119, !alias.scope !311
  store i8 0, ptr %i.bo, align 8, !tbaa !119, !alias.scope !312
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(64) %i.bn) #22
  br label %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31

_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31: ; preds = %bb.l, %_ZSt12construct_atIN7rocksdb11ScanOptionsEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i30
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 96 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 96 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.co, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !3

_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.bl, %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cp, %_ZSt19__relocate_object_aIN7rocksdb11ScanOptionsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !122
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ct) #24
  br label %_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.m
  store ptr %i.p, ptr %0, align 8, !tbaa !116
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !117
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !122
  ret void

bb.n:                                             ; preds = %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.o:                                             ; preds = %_ZNSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE12_M_constructIJRKSF_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  %i.cy = call ptr @__cxa_begin_catch(ptr %i.cx) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.r unwind label %bb.n

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.cv

bb.q:                                             ; preds = %bb.n
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #23
  unreachable

bb.r:                                             ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132  ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !137
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 4 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc:                                           ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 80) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit: ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !142  ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !142
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.x, align 8, !tbaa !140
  %i.y = load ptr, ptr %0, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !132
  %i.ab = urem i64 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !143
  %.02738 = load ptr, ptr %i.k, align 8, !tbaa !133 ; 2 uses
  %.not3039 = icmp eq ptr %.02738, null
  br i1 %.not3039, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit, %bb.s
  %.02741 = phi ptr [ %.027, %bb.s ], [ %.02738, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit ] ; 3 uses
  %.040 = phi ptr [ %i.ad, %bb.s ], [ %i.l, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit ] ; 2 uses
  %i.ad = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc33:                                         ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.02741, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit36 unwind label %bb.n

bb.n:                                             ; preds = %.noexc33
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 80) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #23
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit36: ; preds = %.noexc33
  store ptr %i.ad, ptr %.040, align 8, !tbaa !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.02741, i64 72
end_hunk_2
