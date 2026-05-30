inline.NumInlined: 1732
inline.NumDeleted: 1003
begin_hunk_0_@_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv:bb.a
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
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !3453
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !3453, !range !3481, !noundef !107
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !3511

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
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !3453
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !3453, !range !3481, !noundef !107
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

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
  %i.h = icmp eq i64 %i.as, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !3512

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.au, %bb.b ]
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
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !3513

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.n, %.lr.ph.i5.i ], [ %.030.lcssa, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -16 ; 4 uses
  %.sroa.02.0.copyload.i.i6.i = load i64, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i7.i = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i, align 8
  %i.o = load i64, ptr %0, align 8, !tbaa !3361
  store i64 %i.o, ptr %i.n, align 8, !tbaa !3498
  %i.p = load i64, ptr %i.f, align 8, !tbaa !3361
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i7.i, align 8, !tbaa !3500
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 4
  tail call void @_ZSt13__adjust_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_T0_SA_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 %.sroa.02.0.copyload.i.i6.i, i64 %.sroa.4.0.copyload.i.i8.i)
  %i.t = icmp sgt i64 %i.r, 16
  br i1 %i.t, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_T0_.exit, !llvm.loop !3514

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %.0172954 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.03053 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.au, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %.03053, i64 -16
  tail call void @_ZSt22__move_median_to_firstIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_S9_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.w, ptr noundef nonnull %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph55
  %.013.i.i = phi ptr [ %.03053, %.lr.ph55 ], [ %.114.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph55 ], [ %i.ag, %bb.g ]
  %i.y = load i64, ptr %0, align 8, !tbaa !3361   ; 4 uses
  %i.z = load i64, ptr %i.f, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.1.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %i.ag, %bb.e ] ; 10 uses
  %i.aa = load i64, ptr %.1.i.i, align 8, !tbaa !3361 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, %i.y
  %i.ac = icmp sgt i64 %i.aa, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ugt i64 %i.ae, %i.z
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.ab, i1 %i.af, i1 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  br i1 %.sroa.05.0.i.i.i.i.i.i, label %bb.e, label %.preheader.i.i.preheader, !llvm.loop !3515

.preheader.i.i.preheader:                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 5 uses
  %i.ai = load i64, ptr %.114.i.i, align 8, !tbaa !3361 ; 3 uses
  %i.aj = icmp eq i64 %i.y, %i.ai
  %i.ak = icmp sgt i64 %i.y, %i.ai
  %i.al = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp ugt i64 %i.z, %i.am
  %.sroa.05.0.i.i.i.i15.i.i = select i1 %i.aj, i1 %i.an, i1 %i.ak
  br i1 %.sroa.05.0.i.i.i.i15.i.i, label %.preheader.i.i, label %bb.f, !llvm.loop !3516

bb.f:                                             ; preds = %.preheader.i.i
  %i.ao = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ao, label %bb.g, label %_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEET_S9_S9_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  store i64 %i.ai, ptr %.1.i.i, align 8, !tbaa !3361
  store i64 %i.aa, ptr %.114.i.i, align 8, !tbaa !3361
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !3361
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !3361
  store i64 %i.ar, ptr %i.ah, align 8, !tbaa !3361
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !3361
  br label %bb.d, !llvm.loop !3517

_ZSt27__unguarded_partition_pivotIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEET_S9_S9_T0_.exit: ; preds = %bb.f
  %i.as = add nsw i64 %.0172954, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIlmElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.03053, i64 noundef %i.as)
  %i.at = ptrtoint ptr %.1.i.i to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 256
  br i1 %i.av, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_T0_.exit, !llvm.loop !3512

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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.019.i.idx = phi i64 [ %.019.i.add, %bb.e ], [ 16, %bb.b ] ; 3 uses
  %.pn18.i = phi ptr [ %.019.i.ptr, %bb.e ], [ %0, %bb.b ] ; 4 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 6 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !3361   ; 2 uses
  %2 = load <2 x i64>, ptr %.019.i.ptr, align 8   ; 4 uses
  %3 = extractelement <2 x i64> %2, i64 0         ; 6 uses
  %4 = icmp eq i64 %3, %i.f
  %5 = icmp sgt i64 %3, %i.f
  %i.g = load i64, ptr %i.e, align 8
  %6 = extractelement <2 x i64> %2, i64 1         ; 3 uses
  %i.h = icmp ugt i64 %6, %i.g
  %.sroa.05.0.i.i.i.i.i = select i1 %4, i1 %i.h, i1 %5
  br i1 %.sroa.05.0.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.d

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c
  %i.i = add i64 %indvar, 1
  %i.j = lshr exact i64 %.019.i.idx, 4            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !3361
  store i64 %i.n, ptr %i.m, align 8, !tbaa !3498
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !3361
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !3500
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3518

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.019.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i64, ptr %i.t, align 8, !tbaa !3361
  store i64 %i.v, ptr %i.u, align 8, !tbaa !3498
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3361
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !3500
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !3361
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !3498
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !3361
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !3500
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !3361
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !3498
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !3361
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !3500
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !3361
  store i64 %i.an, ptr %i.am, align 8, !tbaa !3498
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !3361
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !3500
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i, !llvm.loop !3519

_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store <2 x i64> %2, ptr %0, align 8, !tbaa !3361
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = load i64, ptr %.pn18.i, align 8, !tbaa !3361 ; 3 uses
  %i.au = icmp eq i64 %3, %i.at
  %i.av = icmp sgt i64 %3, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp ugt i64 %6, %i.ax
  %.sroa.05.0.i.i.i.i13.i.i = select i1 %i.au, i1 %i.ay, i1 %i.av
  br i1 %.sroa.05.0.i.i.i.i13.i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.az = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %i.ax, %bb.d ]
  %i.ba = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %i.at, %bb.d ]
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.d ] ; 4 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.d ] ; 2 uses
  store i64 %i.ba, ptr %.0914.i.i, align 8, !tbaa !3498
  %i.bb = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !3500
  %.0.i.i = getelementptr inbounds i8, ptr %.015.i.i, i64 -16 ; 2 uses
  %i.bc = load i64, ptr %.0.i.i, align 8, !tbaa !3361 ; 3 uses
  %i.bd = icmp eq i64 %3, %i.bc
  %i.be = icmp sgt i64 %3, %i.bc
  %i.bf = getelementptr inbounds i8, ptr %.015.i.i, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp ugt i64 %6, %i.bg
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.bd, i1 %i.bh, i1 %i.be
  br i1 %.sroa.05.0.i.i.i.i.i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i, !llvm.loop !3520

_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.09.lcssa.i.i = phi ptr [ %.019.i.ptr, %bb.d ], [ %.015.i.i, %.lr.ph.i.i ]
  store <2 x i64> %2, ptr %.09.lcssa.i.i, align 8, !tbaa !3361
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i, %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 16   ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %bb.c, !llvm.loop !3521

_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit: ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bi, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14
  %.07.i = phi ptr [ %i.by, %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14 ], [ %i.bi, %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit ] ; 6 uses
  %7 = load <2 x i64>, ptr %.07.i, align 8        ; 3 uses
  %8 = extractelement <2 x i64> %7, i64 0         ; 4 uses
  %.012.i.i = getelementptr inbounds i8, ptr %.07.i, i64 -16 ; 2 uses
  %i.bj = load i64, ptr %.012.i.i, align 8, !tbaa !3361 ; 3 uses
  %i.bk = icmp eq i64 %8, %i.bj
  %i.bl = icmp sgt i64 %8, %i.bj
  %i.bm = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %9 = extractelement <2 x i64> %7, i64 1         ; 2 uses
  %i.bo = icmp ugt i64 %9, %i.bn
  %.sroa.05.0.i.i.i.i13.i.i13 = select i1 %i.bk, i1 %i.bo, i1 %i.bl
  br i1 %.sroa.05.0.i.i.i.i13.i.i13, label %.lr.ph.i.i17, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14

.lr.ph.i.i17:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i17
  %i.bp = phi i64 [ %i.bw, %.lr.ph.i.i17 ], [ %i.bn, %.lr.ph.i ]
  %i.bq = phi i64 [ %i.bs, %.lr.ph.i.i17 ], [ %i.bj, %.lr.ph.i ]
  %.015.i.i18 = phi ptr [ %.0.i.i20, %.lr.ph.i.i17 ], [ %.012.i.i, %.lr.ph.i ] ; 4 uses
  %.0914.i.i19 = phi ptr [ %.015.i.i18, %.lr.ph.i.i17 ], [ %.07.i, %.lr.ph.i ] ; 2 uses
  store i64 %i.bq, ptr %.0914.i.i19, align 8, !tbaa !3498
  %i.br = getelementptr inbounds nuw i8, ptr %.0914.i.i19, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !3500
  %.0.i.i20 = getelementptr inbounds i8, ptr %.015.i.i18, i64 -16 ; 2 uses
  %i.bs = load i64, ptr %.0.i.i20, align 8, !tbaa !3361 ; 3 uses
  %i.bt = icmp eq i64 %8, %i.bs
  %i.bu = icmp sgt i64 %8, %i.bs
  %i.bv = getelementptr inbounds i8, ptr %.015.i.i18, i64 -8
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp ugt i64 %9, %i.bw
  %.sroa.05.0.i.i.i.i.i.i21 = select i1 %i.bt, i1 %i.bx, i1 %i.bu
  br i1 %.sroa.05.0.i.i.i.i.i.i21, label %.lr.ph.i.i17, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14, !llvm.loop !3520

_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14: ; preds = %.lr.ph.i.i17, %.lr.ph.i
  %.09.lcssa.i.i15 = phi ptr [ %.07.i, %.lr.ph.i ], [ %.015.i.i18, %.lr.ph.i.i17 ]
  store <2 x i64> %7, ptr %.09.lcssa.i.i15, align 8, !tbaa !3361
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.by, %1
  br i1 %.not.i16, label %_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !3522

bb.f:                                             ; preds = %bb.a
  %i.bz = icmp eq ptr %0, %1
  br i1 %i.bz, label %_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.016.i22 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i22, %1
  br i1 %.not17.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i23
  %.019.i24 = phi ptr [ %.016.i22, %.lr.ph.i23 ], [ %.0.i30, %bb.j ] ; 9 uses
  %.pn18.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.019.i24, %bb.j ] ; 4 uses
  %i.cb = load i64, ptr %0, align 8, !tbaa !3361  ; 2 uses
  %10 = load <2 x i64>, ptr %.019.i24, align 8    ; 4 uses
  %11 = extractelement <2 x i64> %10, i64 0       ; 6 uses
  %12 = icmp eq i64 %11, %i.cb
  %13 = icmp sgt i64 %11, %i.cb
  %i.cc = load i64, ptr %i.ca, align 8
  %14 = extractelement <2 x i64> %10, i64 1       ; 3 uses
  %i.cd = icmp ugt i64 %14, %i.cc
  %.sroa.05.0.i.i.i.i.i26 = select i1 %12, i1 %i.cd, i1 %13
  br i1 %.sroa.05.0.i.i.i.i.i26, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ce = ptrtoint ptr %.019.i24 to i64
  %i.cf = sub i64 %i.ce, %i.b
  %i.cg = ashr exact i64 %i.cf, 4                 ; 6 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.preheader.i38, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37

.lr.ph.i.i.i.i.i.preheader.i38:                   ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 32 ; 3 uses
  %min.iters.check = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i38
  %n.vec = and i64 %i.cg, 9223372036854775800     ; 3 uses
  %i.cj = and i64 %i.cg, 7
  %i.ck = mul i64 %n.vec, -16                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.019.i24, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -16                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cn ; 2 uses
  %next.gep52 = getelementptr i8, ptr %.019.i24, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep52, i64 -64
  %i.cp = getelementptr inbounds i8, ptr %next.gep52, i64 -128
  %interleaved.vec = load <8 x i64>, ptr %i.co, align 8, !tbaa !3361
  %interleaved.vec64 = load <8 x i64>, ptr %i.cp, align 8, !tbaa !3361
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -64
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -128
  store <8 x i64> %interleaved.vec, ptr %i.cq, align 8, !tbaa !3361
  store <8 x i64> %interleaved.vec64, ptr %i.cr, align 8, !tbaa !3361
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !3523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37, label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader.i38
  %.010.i.i.i.i.i.i40.ph = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.preheader.i38 ], [ %i.cj, %middle.block ] ; 6 uses
  %.069.i.i.i.i.i.i41.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.preheader.i38 ], [ %i.cl, %middle.block ] ; 14 uses
  %.078.i.i.i.i.i.i42.ph = phi ptr [ %.019.i24, %.lr.ph.i.i.i.i.i.preheader.i38 ], [ %i.cm, %middle.block ] ; 14 uses
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -16
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !3361
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !3498
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !3361
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !3500
  %i.cz = icmp samesign ugt i64 %.010.i.i.i.i.i.i40.ph, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i39.1, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37

.lr.ph.i.i.i.i.i.i39.1:                           ; preds = %.lr.ph.i.i.i.i.i.i39
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -32
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -32
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !3361
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !3498
  %i.dd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !3361
  %i.df = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -24
  store i64 %i.de, ptr %i.df, align 8, !tbaa !3500
  %.not = icmp eq i64 %.010.i.i.i.i.i.i40.ph, 2
  br i1 %.not, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37, label %.lr.ph.i.i.i.i.i.i39.2

.lr.ph.i.i.i.i.i.i39.2:                           ; preds = %.lr.ph.i.i.i.i.i.i39.1
  %i.dg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -48
  %i.dh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -48
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !3361
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !3498
  %i.dj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !3361
  %i.dl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -40
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !3500
  %i.dm = icmp samesign ugt i64 %.010.i.i.i.i.i.i40.ph, 3
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i39.3, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37

.lr.ph.i.i.i.i.i.i39.3:                           ; preds = %.lr.ph.i.i.i.i.i.i39.2
  %i.dn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -64
  %i.do = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -64
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !3361
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !3498
  %i.dq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -56
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !3361
  %i.ds = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -56
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !3500
  %.not68 = icmp eq i64 %.010.i.i.i.i.i.i40.ph, 4
  br i1 %.not68, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37, label %.lr.ph.i.i.i.i.i.i39.4

.lr.ph.i.i.i.i.i.i39.4:                           ; preds = %.lr.ph.i.i.i.i.i.i39.3
  %i.dt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -80
  %i.du = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -80
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !3361
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !3498
  %i.dw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !3361
  %i.dy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -72
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !3500
  %i.dz = icmp samesign ugt i64 %.010.i.i.i.i.i.i40.ph, 5
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i.i39.5, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37

.lr.ph.i.i.i.i.i.i39.5:                           ; preds = %.lr.ph.i.i.i.i.i.i39.4
  %i.ea = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -96
  %i.eb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -96
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !3361
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !3498
  %i.ed = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -88
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !3361
  %i.ef = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -88
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !3500
  %i.eg = icmp eq i64 %.010.i.i.i.i.i.i40.ph, 7
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i39.6, label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37

.lr.ph.i.i.i.i.i.i39.6:                           ; preds = %.lr.ph.i.i.i.i.i.i39.5
  %i.eh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -112
  %i.ei = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -112
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !3361
  store i64 %i.ej, ptr %i.ei, align 8, !tbaa !3498
  %i.ek = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.ph, i64 -104
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !3361
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.ph, i64 -104
  store i64 %i.el, ptr %i.em, align 8, !tbaa !3500
  br label %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37

_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37: ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.i.i.i.i.i.i39.1, %.lr.ph.i.i.i.i.i.i39.2, %.lr.ph.i.i.i.i.i.i39.3, %.lr.ph.i.i.i.i.i.i39.4, %.lr.ph.i.i.i.i.i.i39.5, %.lr.ph.i.i.i.i.i.i39.6, %middle.block, %bb.h
  store <2 x i64> %10, ptr %0, align 8, !tbaa !3361
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.en = load i64, ptr %.pn18.i25, align 8, !tbaa !3361 ; 3 uses
  %i.eo = icmp eq i64 %11, %i.en
  %i.ep = icmp sgt i64 %11, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 8
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp ugt i64 %14, %i.er
  %.sroa.05.0.i.i.i.i13.i.i27 = select i1 %i.eo, i1 %i.es, i1 %i.ep
  br i1 %.sroa.05.0.i.i.i.i13.i.i27, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.i, %.lr.ph.i.i32
  %i.et = phi i64 [ %i.fa, %.lr.ph.i.i32 ], [ %i.er, %bb.i ]
  %i.eu = phi i64 [ %i.ew, %.lr.ph.i.i32 ], [ %i.en, %bb.i ]
  %.015.i.i33 = phi ptr [ %.0.i.i35, %.lr.ph.i.i32 ], [ %.pn18.i25, %bb.i ] ; 4 uses
  %.0914.i.i34 = phi ptr [ %.015.i.i33, %.lr.ph.i.i32 ], [ %.019.i24, %bb.i ] ; 2 uses
  store i64 %i.eu, ptr %.0914.i.i34, align 8, !tbaa !3498
  %i.ev = getelementptr inbounds nuw i8, ptr %.0914.i.i34, i64 8
  store i64 %i.et, ptr %i.ev, align 8, !tbaa !3500
  %.0.i.i35 = getelementptr inbounds i8, ptr %.015.i.i33, i64 -16 ; 2 uses
  %i.ew = load i64, ptr %.0.i.i35, align 8, !tbaa !3361 ; 3 uses
  %i.ex = icmp eq i64 %11, %i.ew
  %i.ey = icmp sgt i64 %11, %i.ew
  %i.ez = getelementptr inbounds i8, ptr %.015.i.i33, i64 -8
  %i.fa = load i64, ptr %i.ez, align 8            ; 2 uses
  %i.fb = icmp ugt i64 %14, %i.fa
  %.sroa.05.0.i.i.i.i.i.i36 = select i1 %i.ex, i1 %i.fb, i1 %i.ey
  br i1 %.sroa.05.0.i.i.i.i.i.i36, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i28, !llvm.loop !3520

_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.i
  %.09.lcssa.i.i29 = phi ptr [ %.019.i24, %bb.i ], [ %.015.i.i33, %.lr.ph.i.i32 ]
  store <2 x i64> %10, ptr %.09.lcssa.i.i29, align 8, !tbaa !3361
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i28, %_ZSt13move_backwardIPSt4pairIlmES2_ET0_T_S4_S3_.exit.i37
  %.0.i30 = getelementptr inbounds nuw i8, ptr %.019.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit, label %bb.g, !llvm.loop !3521

_ZSt26__unguarded_insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIPSt4pairIlmEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIvEEEEvT_T0_.exit.i14, %.preheader.i, %bb.f, %_ZSt16__insertion_sortIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_T0_SA_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.030 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.030, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr [16 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.f, align 8, !tbaa !3361 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !3361 ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.j
  %i.l = icmp sgt i64 %i.i, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = getelementptr i8, ptr %i.g, i64 24
  %i.o = load i64, ptr %i.m, align 8
  %i.p = load i64, ptr %i.n, align 8
  %i.q = icmp ugt i64 %i.o, %i.p
  %.sroa.05.0.i.i.i.i = select i1 %i.k, i1 %i.q, i1 %i.l
  %i.r = or disjoint i64 %i.d, 1
  %spec.select = select i1 %.sroa.05.0.i.i.i.i, i64 %i.r, i64 %i.e ; 4 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %.030
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !3361
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !3361
  %i.v = icmp slt i64 %spec.select, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !3526

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.w = and i64 %2, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.y = add nsw i64 %2, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nsw i64 %.0.lcssa, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !3361
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !3361
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ac, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ag = icmp sgt i64 %.1, %1
  br i1 %i.ag, label %.lr.ph.i, label %_ZSt11__push_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIvEEEEvT_T0_SA_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.01318.i = phi i64 [ %.019.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.019.in.i = add nsw i64 %.01318.i, -1
  %.019.i = sdiv i64 %.019.in.i, 2                ; 4 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !3361 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, %3
  %i.ak = icmp sgt i64 %i.ai, %3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ugt i64 %i.am, %4
  %.sroa.05.0.i.i.i.i.i = select i1 %i.aj, i1 %i.an, i1 %i.ak
  br i1 %.sroa.05.0.i.i.i.i.i, label %bb.e, label %_ZSt11__push_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIvEEEEvT_T0_SA_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds [16 x i8], ptr %0, i64 %.01318.i ; 2 uses
  store i64 %i.ai, ptr %i.ao, align 8, !tbaa !3498
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !3500
  %i.aq = icmp sgt i64 %.019.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIvEEEEvT_T0_SA_T1_RT2_.exit, !llvm.loop !3527

_ZSt11__push_heapIPSt4pairIlmElS1_N9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIvEEEEvT_T0_SA_T1_RT2_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.013.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.01318.i, %.lr.ph.i ], [ %.019.i, %bb.e ]
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.013.lcssa.i ; 2 uses
  store i64 %3, ptr %i.ar, align 8, !tbaa !3498
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %4, ptr %i.as, align 8, !tbaa !3500
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPSt4pairIlmEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIvEEEEvT_S9_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !3361   ; 8 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !3361   ; 8 uses
  %i.c = icmp eq i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.a, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.e, align 8              ; 3 uses
  %i.h = load i64, ptr %i.f, align 8              ; 3 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  %.sroa.05.0.i.i.i.i = select i1 %i.c, i1 %i.i, i1 %i.d
  %i.j = load i64, ptr %3, align 8, !tbaa !3361   ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  br i1 %.sroa.05.0.i.i.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.b, %i.j
  %i.n = icmp sgt i64 %i.b, %i.j
  %i.o = icmp ugt i64 %i.h, %i.l
  %.sroa.05.0.i.i.i.i22 = select i1 %i.m, i1 %i.o, i1 %i.n
  br i1 %.sroa.05.0.i.i.i.i22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %0, align 8, !tbaa !3361
  store i64 %i.b, ptr %0, align 8, !tbaa !3361
  store i64 %i.p, ptr %2, align 8, !tbaa !3361
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !3361
  %i.s = load i64, ptr %i.f, align 8, !tbaa !3361
  store i64 %i.s, ptr %i.q, align 8, !tbaa !3361
  store i64 %i.r, ptr %i.f, align 8, !tbaa !3361
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.a, %i.j
  %i.u = icmp sgt i64 %i.a, %i.j
  %i.v = icmp ugt i64 %i.g, %i.l
  %.sroa.05.0.i.i.i.i23 = select i1 %i.t, i1 %i.v, i1 %i.u
  %i.w = load i64, ptr %0, align 8, !tbaa !3361   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.sroa.05.0.i.i.i.i23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.j, ptr %0, align 8, !tbaa !3361
  store i64 %i.w, ptr %3, align 8, !tbaa !3361
  %i.y = load i64, ptr %i.x, align 8, !tbaa !3361
  %i.z = load i64, ptr %i.k, align 8, !tbaa !3361
  store i64 %i.z, ptr %i.x, align 8, !tbaa !3361
  store i64 %i.y, ptr %i.k, align 8, !tbaa !3361
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i64 %i.a, ptr %0, align 8, !tbaa !3361
  store i64 %i.w, ptr %1, align 8, !tbaa !3361
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !3361
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !3361
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !3361
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !3361
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp eq i64 %i.a, %i.j
  %i.ad = icmp sgt i64 %i.a, %i.j
  %i.ae = icmp ugt i64 %i.g, %i.l
  %.sroa.05.0.i.i.i.i24 = select i1 %i.ac, i1 %i.ae, i1 %i.ad
  br i1 %.sroa.05.0.i.i.i.i24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %0, align 8, !tbaa !3361
  store i64 %i.a, ptr %0, align 8, !tbaa !3361
  store i64 %i.af, ptr %1, align 8, !tbaa !3361
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3361
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !3361
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !3361
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !3361
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.b, %i.j
  %i.ak = icmp sgt i64 %i.b, %i.j
  %i.al = icmp ugt i64 %i.h, %i.l
  %.sroa.05.0.i.i.i.i25 = select i1 %i.aj, i1 %i.al, i1 %i.ak
  %i.am = load i64, ptr %0, align 8, !tbaa !3361  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.sroa.05.0.i.i.i.i25, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.j, ptr %0, align 8, !tbaa !3361
  store i64 %i.am, ptr %3, align 8, !tbaa !3361
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !3361
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !3361
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !3361
  store i64 %i.ao, ptr %i.k, align 8, !tbaa !3361
  br label %bb.l
end_hunk_0
