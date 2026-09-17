Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/StripedEDFThreadPoolExecutor?download=true
inline.NumInlined: 1775
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@__cxa_guard_acquire
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #31

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !198

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #48
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !198

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #48
  br i1 %i.f, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread: ; preds = %.split.i, %_ZN5folly13usingJEMallocEv.exit.i, %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit
  br label %bb.c

bb.c:                                             ; preds = %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread
  %i.g = phi i1 [ true, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ false, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ false, %.split ]
  %i.h = phi i8 [ 1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ -1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ -1, %.split ]
  store atomic i8 %i.h, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E release, align 1
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #31

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !1731

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710, !range !1665, !noundef !184
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !1731

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710, !range !1665, !noundef !184
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind
declare extern_weak void @sdallocx(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPSt4pairIlmElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.ar, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !3649

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.at, %bb.b ]
  %.030.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.i = lshr exact i64 %.lcssa51, 4              ; 2 uses
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.015.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.015.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  tail call void @_ZSt13__adjust_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_T0_SA_T1_T2_(ptr noundef %0, i64 noundef %.015.i.i.i, i64 noundef %i.i, i64 %.sroa.02.0.copyload.i.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.not.i.i.i = icmp eq i64 %.015.i.i.i, 0
  %i.m = add nsw i64 %.015.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !3650

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.n, %.lr.ph.i5.i ], [ %.030.lcssa, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i.i6.i = load i64, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i7.i = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i, align 8
  %i.o = load i64, ptr %0, align 8, !tbaa !1669
  store i64 %i.o, ptr %i.n, align 8, !tbaa !1726
  %i.p = load i64, ptr %i.f, align 8, !tbaa !1669
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i7.i, align 8, !tbaa !1727
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 4
  tail call void @_ZSt13__adjust_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_T0_SA_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 %.sroa.02.0.copyload.i.i6.i, i64 %.sroa.4.0.copyload.i.i8.i)
  %i.t = icmp sgt i64 %i.r, 16
  br i1 %i.t, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_T0_.exit, !llvm.loop !3651

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %.0172954 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph ]
  %.03053 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.at, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %.03053, i64 -16
  tail call void @_ZSt22__move_median_to_firstIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_S9_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.w, ptr noundef nonnull %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph55
  %.013.i.i = phi ptr [ %.03053, %.lr.ph55 ], [ %.114.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph55 ], [ %i.ag, %bb.g ]
  %i.y = load i64, ptr %0, align 8, !tbaa !1669   ; 4 uses
  %i.z = load i64, ptr %i.f, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.1.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %i.ag, %bb.e ] ; 10 uses
  %i.aa = load i64, ptr %.1.i.i, align 8, !tbaa !1669 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, %i.y
  %i.ac = icmp sgt i64 %i.aa, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ugt i64 %i.ae, %i.z
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.ab, i1 %i.af, i1 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  br i1 %.sroa.05.0.i.i.i.i.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !3652

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.e ] ; 3 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 5 uses
  %i.ah = load i64, ptr %.114.i.i, align 8, !tbaa !1669 ; 3 uses
  %i.ai = icmp eq i64 %i.y, %i.ah
  %i.aj = icmp sgt i64 %i.y, %i.ah
  %i.ak = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.z, %i.al
  %.sroa.05.0.i.i.i.i15.i.i = select i1 %i.ai, i1 %i.am, i1 %i.aj
  br i1 %.sroa.05.0.i.i.i.i15.i.i, label %.preheader.i.i, label %bb.f, !llvm.loop !3653

bb.f:                                             ; preds = %.preheader.i.i
  %i.an = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.an, label %bb.g, label %_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEET_S9_S9_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  store i64 %i.ah, ptr %.1.i.i, align 8, !tbaa !1669
  store i64 %i.aa, ptr %.114.i.i, align 8, !tbaa !1669
  %i.ap = load i64, ptr %3, align 8, !tbaa !1669
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !1669
  store i64 %i.aq, ptr %3, align 8, !tbaa !1669
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !1669
  br label %bb.d, !llvm.loop !3654

_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEET_S9_S9_T0_.exit: ; preds = %bb.f
  %i.ar = add nsw i64 %.0172954, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIlmElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.03053, i64 noundef %i.ar)
  %i.as = ptrtoint ptr %.1.i.i to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = icmp sgt i64 %i.at, 256
  br i1 %i.au, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_T0_.exit, !llvm.loop !3649

_ZSt14__partial_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEET_S9_S9_T0_.exit, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.019.i.idx = phi i64 [ %.019.i.add, %bb.e ], [ 16, %bb.b ] ; 3 uses
  %.pn18.i = phi ptr [ %.019.i.ptr, %bb.e ], [ %0, %bb.b ] ; 5 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 6 uses
  %i.f = load i64, ptr %.019.i.ptr, align 8, !tbaa !1669 ; 8 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !1669   ; 2 uses
  %i.h = icmp eq i64 %i.f, %i.g
  %i.i = icmp sgt i64 %i.f, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  %i.l = load i64, ptr %i.e, align 8
  %i.m = icmp ugt i64 %i.k, %i.l
  %.sroa.05.0.i.i.i.i.i = select i1 %i.h, i1 %i.m, i1 %i.i
  br i1 %.sroa.05.0.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.d

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c
  %i.n = add i64 %indvar, 1
  %i.o = lshr exact i64 %.019.i.idx, 4            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32 ; 2 uses
  %xtraiter53 = and i64 %i.n, 3                   ; 2 uses
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter55 = phi i64 [ %prol.iter55.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !1669
  store i64 %i.s, ptr %i.r, align 8, !tbaa !1726
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1669
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !1727
  %i.w = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter55.next = add i64 %prol.iter55, 1     ; 2 uses
  %prol.iter55.cmp.not = icmp eq i64 %prol.iter55.next, %xtraiter53
  br i1 %prol.iter55.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3655

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %indvar, 3
  br i1 %i.x, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !1669
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !1726
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1669
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !1727
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !1669
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1726
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1669
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !1727
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !1669
  store i64 %i.am, ptr %i.al, align 8, !tbaa !1726
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1669
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !1727
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !1669
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !1726
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1669
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i64 %i.au, ptr %i.av, align 8, !tbaa !1727
  %i.aw = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i, !llvm.loop !91

_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %i.f, ptr %0, align 8, !tbaa !1726
  store i64 %i.k, ptr %i.e, align 8, !tbaa !1727
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %.pn18.i, align 8, !tbaa !1669 ; 3 uses
  %i.az = icmp eq i64 %i.f, %i.ay
  %i.ba = icmp sgt i64 %i.f, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp ugt i64 %i.k, %i.bc
  %.sroa.05.0.i.i.i.i13.i.i = select i1 %i.az, i1 %i.bd, i1 %i.ba
  br i1 %.sroa.05.0.i.i.i.i13.i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.be = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %i.bc, %bb.d ]
  %i.bf = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %i.ay, %bb.d ]
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.d ] ; 4 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.d ] ; 2 uses
  store i64 %i.bf, ptr %.0914.i.i, align 8, !tbaa !1726
  %i.bg = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !1727
  %.0.i.i = getelementptr inbounds i8, ptr %.015.i.i, i64 -16 ; 2 uses
  %i.bh = load i64, ptr %.0.i.i, align 8, !tbaa !1669 ; 3 uses
  %i.bi = icmp eq i64 %i.f, %i.bh
  %i.bj = icmp sgt i64 %i.f, %i.bh
  %i.bk = getelementptr inbounds i8, ptr %.015.i.i, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp ugt i64 %i.k, %i.bl
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.bi, i1 %i.bm, i1 %i.bj
  br i1 %.sroa.05.0.i.i.i.i.i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i, !llvm.loop !3656

_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.09.lcssa.i.i = phi ptr [ %.019.i.ptr, %bb.d ], [ %.015.i.i, %.lr.ph.i.i ] ; 2 uses
  store i64 %i.f, ptr %.09.lcssa.i.i, align 8, !tbaa !1726
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 8
  store i64 %i.k, ptr %i.bn, align 8, !tbaa !1727
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i, %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 16   ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %bb.c, !llvm.loop !3657

_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit: ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bo, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14
  %.07.i = phi ptr [ %i.cf, %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14 ], [ %i.bo, %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit ] ; 7 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.07.i, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 3 uses
  %.012.i.i = getelementptr inbounds i8, ptr %.07.i, i64 -16 ; 2 uses
  %i.bp = load i64, ptr %.012.i.i, align 8, !tbaa !1669 ; 3 uses
  %i.bq = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.bp
  %i.br = icmp sgt i64 %.sroa.0.0.copyload.i.i, %i.bp
  %i.bs = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp ugt i64 %.sroa.5.0.copyload.i.i, %i.bt
  %.sroa.05.0.i.i.i.i13.i.i13 = select i1 %i.bq, i1 %i.bu, i1 %i.br
  br i1 %.sroa.05.0.i.i.i.i13.i.i13, label %.lr.ph.i.i17, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14

.lr.ph.i.i17:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i17
  %i.bv = phi i64 [ %i.cc, %.lr.ph.i.i17 ], [ %i.bt, %.lr.ph.i ]
  %i.bw = phi i64 [ %i.by, %.lr.ph.i.i17 ], [ %i.bp, %.lr.ph.i ]
  %.015.i.i18 = phi ptr [ %.0.i.i20, %.lr.ph.i.i17 ], [ %.012.i.i, %.lr.ph.i ] ; 4 uses
  %.0914.i.i19 = phi ptr [ %.015.i.i18, %.lr.ph.i.i17 ], [ %.07.i, %.lr.ph.i ] ; 2 uses
  store i64 %i.bw, ptr %.0914.i.i19, align 8, !tbaa !1726
  %i.bx = getelementptr inbounds nuw i8, ptr %.0914.i.i19, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !1727
  %.0.i.i20 = getelementptr inbounds i8, ptr %.015.i.i18, i64 -16 ; 2 uses
  %i.by = load i64, ptr %.0.i.i20, align 8, !tbaa !1669 ; 3 uses
  %i.bz = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.by
  %i.ca = icmp sgt i64 %.sroa.0.0.copyload.i.i, %i.by
end_hunk_0
