Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tt?download=true
inline.NumInlined: 143
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@__cxx_global_var_init:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #19
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %.sroa.speculated = zext i32 %i.e to i64
  store i64 %.sroa.speculated, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, align 8, !tbaa !14
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN9Stockfish17SYSTEM_THREADS_NBE) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind noalias writable sret(%"class.std::set") align 8 %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !51
  %i.f = tail call ptr @__sched_cpualloc(i64 noundef 65536) #19 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false)
  %i.h = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 8192, ptr noundef nonnull %i.f) #19
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

bb.e:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #19
  ret void

.preheader:                                       ; preds = %bb.c, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %storemerge19 = phi i64 [ %i.af, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ 0, %bb.c ] ; 7 uses
  %i.i = and i64 %storemerge19, 63
  %i.j = lshr i64 %storemerge19, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %i.m = shl nuw i64 1, %i.i
  %i.n = and i64 %i.l, %i.m
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !52 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = icmp ult i64 %storemerge19, %i.p         ; 2 uses
  %.in.v.i.i.i = select i1 %i.q, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !46

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.q, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %bb.f ] ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.s = icmp eq ptr %.019.lcssa29.i.i.i, %i.r
  br i1 %i.s, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.u = phi i64 [ %.pre.i.i, %bb.g ], [ %i.p, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.v = icmp ult i64 %i.u, %storemerge19
  br i1 %i.v, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.h, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.h ] ; 3 uses
  %i.w = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.w, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = icmp ult i64 %storemerge19, %i.y
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.i, %select.unfold.i.i
  %i.aa = phi i1 [ %i.z, %bb.i ], [ true, %select.unfold.i.i ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %storemerge19, ptr %i.ac, align 8, !tbaa !14
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #19
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !51
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !51
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.h, %.preheader
  %i.af = add nuw nsw i64 %storemerge19, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, 65536
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !47
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9Stockfish7TTEntry11is_occupiedEv(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(10) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !25
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih(ptr nofree noundef nonnull align 2 captures(none) dereferenceable(10) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i16 %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq i16 %6, 0
  %i.b = load i16, ptr %0, align 2
  %i.c = trunc i64 %1 to i16                      ; 2 uses
  %.not = icmp eq i16 %i.b, %i.c                  ; 2 uses
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %6, ptr %i.d, align 2, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = icmp ne i8 %4, 3
  %brmerge.not = select i1 %i.e, i1 %.not, i1 false
  br i1 %brmerge.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = select i1 %3, i32 5, i32 3
  %i.g = add i32 %i.f, %5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !25
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -4
  %i.l = icmp sgt i32 %i.g, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i8 %8, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27
  %i.p = sub i8 %i.m, %i.o
  %.not14 = icmp ult i8 %i.p, 8
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  store i16 %i.c, ptr %0, align 2, !tbaa !28
  %i.q = trunc i32 %5 to i8
  %i.r = add i8 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.r, ptr %i.s, align 2, !tbaa !25
  %i.t = select i1 %3, i8 4, i8 0
  %i.u = or i8 %4, %i.t
  %i.v = or i8 %i.u, %8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !27
  %i.x = trunc i32 %2 to i16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.x, ptr %i.y, align 2, !tbaa !29
  %i.z = trunc i32 %7 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i8 0, -7) i8 @_ZNK9Stockfish7TTEntry12relative_ageEh(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(10) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i8 %1, 7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.c = load i8, ptr %i.b, align 1, !tbaa !27
  %i.d = sub i8 %i.a, %i.c
  %i.e = and i8 %i.d, -8
  ret i8 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9Stockfish8TTWriterC2EPNS_7TTEntryE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i16 %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 9 uses
  %i.b = icmp eq i16 %6, 0
  %i.c = load i16, ptr %i.a, align 2
  %i.d = trunc i64 %1 to i16                      ; 2 uses
  %.not.i = icmp eq i16 %i.c, %i.d                ; 2 uses
  %or.cond.i = select i1 %i.b, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %6, ptr %i.e, align 2, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp ne i8 %4, 3
  %brmerge.not.i = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %brmerge.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = select i1 %3, i32 5, i32 3
  %i.h = add i32 %5, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !25
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -4
  %i.m = icmp sgt i32 %i.h, %i.l
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i8 %8, 7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !27
  %i.q = sub i8 %i.n, %i.p
  %.not14.i = icmp ult i8 %i.q, 8
  br i1 %.not14.i, label %_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i16 %i.d, ptr %i.a, align 2, !tbaa !28
  %i.r = trunc i32 %5 to i8
  %i.s = add i8 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %i.t, align 2, !tbaa !25
  %i.u = select i1 %3, i8 4, i8 0
  %i.v = or i8 %4, %i.u
  %i.w = or i8 %i.v, %8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !27
  %i.y = trunc i32 %2 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.y, ptr %i.z, align 2, !tbaa !29
  %i.aa = trunc i32 %7 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !30
  br label %_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih.exit

_ZN9Stockfish7TTEntry4saveEmibNS_5BoundEiNS_4MoveEih.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish18TranspositionTable6resizeEmRNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) initializes((0, 8)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef %i.b) #19
  %i.c = shl i64 %1, 15
  %i.d = and i64 %i.c, 576460752303390720         ; 2 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !37
  %i.e = shl nuw i64 %i.d, 5
  %i.f = tail call noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef %i.e) #19 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %1)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #19, !inline_history !53 ; 0 uses
  tail call void @exit(i32 noundef 1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.k, align 8, !tbaa !38
  %i.l = tail call noundef i64 @_ZNK9Stockfish10ThreadPool11num_threadsEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #19 ; 4 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %.lr.ph.i
  %.01315.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.o = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  store ptr %0, ptr %i.o, align 16, !tbaa !40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.01315.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !14
  store ptr %i.o, ptr %3, align 8, !tbaa !41
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.n, align 8, !tbaa !44
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish18TranspositionTable5clearERNS1_10ThreadPoolEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.m, align 8, !tbaa !45
  call void @_ZN9Stockfish10ThreadPool13run_on_threadEmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.01315.i, ptr noundef nonnull align 8 %3) #19
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #19, !inline_history !54 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  %i.r = add nuw i64 %.01315.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i, label %.lr.ph17.i, label %bb.d, !llvm.loop !0

.lr.ph17.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %.lr.ph17.i
  %.016.i = phi i64 [ %i.s, %.lr.ph17.i ], [ 0, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 2 uses
  call void @_ZN9Stockfish10ThreadPool14wait_on_threadEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.016.i) #19
  %i.s = add nuw i64 %.016.i, 1                   ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond19.not.i, label %_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE.exit, label %.lr.ph17.i, !llvm.loop !1

_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE.exit: ; preds = %.lr.ph17.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish18TranspositionTable5clearERNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(17) initializes((16, 17)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 7 uses
end_hunk_0
