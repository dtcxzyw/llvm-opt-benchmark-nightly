Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryPasses?download=true
inline.NumInlined: 8495
inline.NumDeleted: 4160
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #30
  %i.f = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr %1, i64 %2, i32 noundef %i.e) #30 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !637
  br i1 %i.g, label %bb.d, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !638
  %.pre8.i = zext i32 %.pre.i to i64
  %i.j = icmp eq i64 %i.i, %.pre8.i
  br i1 %i.j, label %bb.d, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !640
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !531
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #30 ; 0 uses
  %.sroa.011.0.extract.trunc = trunc i64 %i.n to i32
  br label %bb.o

bb.d:                                             ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.p = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #30 ; 0 uses
  %i.q = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #30
  %i.r = icmp eq i32 %i.q, 35
  br i1 %i.r, label %bb.e, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1657
  %i.u = add i32 %i.t, 15                         ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #30
  %i.x = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr %1, i64 %2, i32 noundef %i.w) #30 ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !637
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !640
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.f, label %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  %i.ac = add i64 %2, 17
  %i.ad = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ac, i64 noundef 8) #30 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i

_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %2
  store i8 0, ptr %i.af, align 1, !tbaa !68
  store i64 %2, ptr %i.ad, align 8, !tbaa !692
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.v, ptr %i.ag, align 8, !tbaa !1659
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !640
  %i.ah = load i32, ptr %i.s, align 4, !tbaa !1657
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !1657
  %i.aj = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i32 noundef %i.x) #30 ; 0 uses
  br label %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit

_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit: ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit, %_ZN4llvm14StringMapEntryImE6createINS_15MallocAllocatorEJmEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !206
  %i.am = icmp eq ptr %1, null
  %i.an = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.am, %i.an
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.235) #32
  unreachable

bb.i:                                             ; preds = %_ZN4llvm9StringMapImNS_15MallocAllocatorEE6insertESt4pairINS_9StringRefEmE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %2, ptr %i.a, align 8, !tbaa !531
  %i.ao = icmp ugt i64 %2, 15
  br i1 %i.ao, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !67
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !531
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !68
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.ar = phi ptr [ %i.ap, %bb.j ], [ %i.al, %bb.i ] ; 2 uses
  switch i64 %2, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %1, align 1, !tbaa !68
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.at = load i64, ptr %i.a, align 8, !tbaa !531 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !199
  %i.av = load ptr, ptr %3, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !220 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !581
  %.not.i = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i, label %bb.m, label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit, !prof !578

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.bb = zext i32 %i.ay to i64
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bb ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !206
  %i.bf = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.al
  br i1 %i.bg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.au, align 8, !tbaa !199 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.bj, i1 false)
  br label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !67
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !68
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !68
  br label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !199
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !199
  store ptr %i.al, ptr %3, align 8, !tbaa !67
  store i64 0, ptr %i.au, align 8, !tbaa !199
  %i.bn = load i32, ptr %i.ax, align 8, !tbaa !220
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ax, align 8, !tbaa !220
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bq = icmp eq ptr %.pre, %i.al
  br i1 %i.bq, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit
  %i.br = load i64, ptr %i.al, align 8, !tbaa !68
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bs) #31
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12emplace_backIJS6_EEERS6_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bt = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #30 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit
  %.1 = phi i32 [ %i.u, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit ], [ %.sroa.011.0.extract.trunc, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsImEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #30, !noalias !1664
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !220, !noalias !1664 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48, !noalias !1664 ; 4 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !781, !noalias !1664
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1664
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i.a, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i.a, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !781, !noalias !1664
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1664
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1   ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %4 = zext i32 %i.w to i64                       ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.c to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68, !noalias !1664 ; 2 uses
  %i.aa = lshr i64 %i.z, 56
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ab
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.critedge.i.i.i ], [ %4, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i.a = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.a, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68, !noalias !1664 ; 2 uses
  %i.af = lshr i64 %i.ae, 56
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ag
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.z, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ae, %.critedge.i.i.i ]
  %i.ah = shl i64 %.lcssa.i.i, 8
  %i.ai = ashr exact i64 %i.ah, 8
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1666
  %.not.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.06.0.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !700, !nonnull !55, !noundef !55 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !1667
  %i.aq = icmp eq i16 %3, %i.ap
  br i1 %i.aq, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.e, !llvm.loop !1662

bb.f:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = zext i16 %3 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1668 ; 2 uses
  %i.av = urem i64 %i.as, %i.au                   ; 2 uses
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !1669
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !699, !nonnull !55, !noundef !55
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !700 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !1667
  %i.bc = icmp eq i16 %3, %i.bb
  br i1 %i.bc, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %bb.f ]
  %i.bd = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !700, !nonnull !55, !noundef !55 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !1667 ; 2 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.au
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.av
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.bi = icmp eq i16 %3, %i.bf
  br i1 %i.bi, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1663

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.e ], [ %i.az, %bb.f ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !841
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 15
  %i.bn = and i64 %i.bm, -16                      ; 2 uses
  %i.bo = add i64 %i.bn, 16                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !842
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h, !prof !578

bb.g:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.bs = inttoptr i64 %i.bo to ptr
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !841
  %i.bt = inttoptr i64 %i.bn to ptr
  br label %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit

bb.h:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.bu = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit

_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit:                ; preds = %bb.g, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.g ], [ %i.bu, %bb.h ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationImEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !845
  %i.bw = ptrtoint ptr %.0.i.i.i.i to i64
  tail call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit
  %.sroa.0.sroa.010.0.in = phi ptr [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsImEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.bv, %_ZN4llvm7ErrorOrIRKmEaSEOS3_.exit ]
  ret ptr %.sroa.0.sroa.010.0.in
}

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18growAndEmplaceBackIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !220
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !206
  %i.i = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !199  ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.g, align 8, !tbaa !67
  %i.p = load i64, ptr %i.j, align 8, !tbaa !68
  store i64 %i.p, ptr %i.h, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !199
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !199
  store ptr %i.j, ptr %1, align 8, !tbaa !67
  store i64 0, ptr %i.q, align 8, !tbaa !199
  store i8 0, ptr %i.j, align 8, !tbaa !68
  %i.t = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.u = load i32, ptr %i.d, align 8, !tbaa !220  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.v, 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.x, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !206
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !199 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.y, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !67
  %i.af = load i64, ptr %i.z, align 8, !tbaa !68
  store i64 %i.af, ptr %i.x, align 8, !tbaa !68
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !199
  store ptr %i.z, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !67
  store i64 0, ptr %i.ag, align 8, !tbaa !199
  store i8 0, ptr %i.z, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1670

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !220 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.al = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.al, 5
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
end_hunk_0
