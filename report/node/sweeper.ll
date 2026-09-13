Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sweeper?download=true
inline.NumInlined: 1831
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5cppgc8internal14StatsCollector12GetScopeNameENS1_7ScopeIdENS0_14CollectionTypeE:bb.a
bb.al:                                            ; preds = %bb.a
  %i.bu = icmp eq i8 %1, 1
  %i.bv = select i1 %i.bu, ptr @.str.75, ptr @.str.76
  br label %bb.ap

bb.am:                                            ; preds = %bb.a
  %i.bw = icmp eq i8 %1, 1
  %i.bx = select i1 %i.bw, ptr @.str.77, ptr @.str.78
  br label %bb.ap

bb.an:                                            ; preds = %bb.a
  %i.by = icmp eq i8 %1, 1
  %i.bz = select i1 %i.by, ptr @.str.79, ptr @.str.80
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  %i.ca = icmp eq i8 %1, 1
  %i.cb = select i1 %i.ca, ptr @.str.81, ptr @.str.82
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.cb, %bb.ao ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.h ], [ %i.p, %bb.i ], [ %i.r, %bb.j ], [ %i.t, %bb.k ], [ %i.v, %bb.l ], [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %i.ab, %bb.o ], [ %i.ad, %bb.p ], [ %i.af, %bb.q ], [ %i.ah, %bb.r ], [ %i.aj, %bb.s ], [ %i.al, %bb.t ], [ %i.an, %bb.u ], [ %i.ap, %bb.v ], [ %i.ar, %bb.w ], [ %i.at, %bb.x ], [ %i.av, %bb.y ], [ %i.ax, %bb.z ], [ %i.az, %bb.aa ], [ %i.bb, %bb.ab ], [ %i.bd, %bb.ac ], [ %i.bf, %bb.ad ], [ %i.bh, %bb.ae ], [ %i.bj, %bb.af ], [ %i.bl, %bb.ag ], [ %i.bn, %bb.ah ], [ %i.bp, %bb.ai ], [ %i.br, %bb.aj ], [ %i.bt, %bb.ak ], [ %i.bv, %bb.al ], [ %i.bx, %bb.am ], [ %i.bz, %bb.an ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5cppgc8internal12_GLOBAL__N_113SweepingStateD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 312
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5cppgc8internal8FreeList5BlockESaIS3_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 328
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #23
  br label %_ZNSt6vectorIN5cppgc8internal8FreeList5BlockESaIS3_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN5cppgc8internal8FreeList5BlockESaIS3_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5cppgc8internal8FreeList5BlockESaIS3_EED2Ev.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZSt8_DestroyIN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIN5cppgc8internal8FreeList5BlockESaIS3_EED2Ev.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 352 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exit.i.i

_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackINS1_13SweepingState14SweptPageStateEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.val1.i.i to i64
  %i.w = ptrtoint ptr %.val.i.i to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.x) #23
  br label %_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackINS1_13SweepingState14SweptPageStateEED2Ev.exit

_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackINS1_13SweepingState14SweptPageStateEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5cppgc8internal12_GLOBAL__N_113SweepingState14SweptPageStateEEvT_S6_.exit.i.i, %bb.d
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.a) #22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1, label %_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackIPNS0_8BasePageEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackINS1_13SweepingState14SweptPageStateEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #23
  br label %_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackIPNS0_8BasePageEED2Ev.exit

_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackIPNS0_8BasePageEED2Ev.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115ThreadSafeStackINS1_13SweepingState14SweptPageStateEED2Ev.exit, %bb.e
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %0) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZN5cppgc8internal9BaseSpace14RemoveAllPagesEv(ptr dead_on_unwind writable sret(%"class.std::vector.78") align 8, ptr noundef nonnull align 8 dereferenceable(61)) local_unnamed_addr #8

declare noundef ptr @_ZN5cppgc8internal9LargePage12ObjectHeaderEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

declare void @_ZN5cppgc8internal9BaseSpace7AddPageEPNS0_8BasePageE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) local_unnamed_addr #8

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN5cppgc8internal8FreeList5ClearEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEET_SL_SL_T0_.exit
  %i.h = icmp eq i64 %i.dx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fo, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = icmp ult i64 %i.ad, %i.af
  %spec.select.i.us.i.i.i = select i1 %i.ag, i64 %i.y, i64 %i.w ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ak, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !49

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8
  %i.aq = load atomic i64, ptr %i.al monotonic, align 8
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.an, ptr %i.as, align 8
  %i.at = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.at, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i, !llvm.loop !50

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.au, align 8
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.av = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !51

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.cc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.az = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bc
  %i.be = load ptr, ptr %i.bb, align 8
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bj = load atomic i64, ptr %i.bi monotonic, align 8
  %i.bk = icmp ult i64 %i.bh, %i.bj
  %spec.select.i.i.i.i = select i1 %i.bk, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !49

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = load ptr, ptr %i.q, align 8
  store ptr %i.bq, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.br = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8
  %i.bx = load atomic i64, ptr %i.bs monotonic, align 8
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bu, ptr %i.bz, align 8
  %i.ca = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ca, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i, !llvm.loop !50

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ax, ptr %i.cb, align 8
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cc = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !51

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_T0_SM_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.cd, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_RT0_.exit.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = load ptr, ptr %.fr29, align 8
  store ptr %i.cf, ptr %i.cd, align 8
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 3 uses
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = icmp sgt i64 %i.ci, 2
  br i1 %i.cl, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i17.i
  %.034.i.i.i18.i = phi i64 [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cm = shl i64 %.034.i.i.i18.i, 1              ; 2 uses
  %i.cn = add i64 %i.cm, 2                        ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cn
  %i.cp = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cp
  %i.cr = load ptr, ptr %i.co, align 8
  %i.cs = load ptr, ptr %i.cq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cu = load atomic i64, ptr %i.ct monotonic, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load atomic i64, ptr %i.cv monotonic, align 8
  %i.cx = icmp ult i64 %i.cu, %i.cw
  %spec.select.i.i.i19.i = select i1 %i.cx, i64 %i.cp, i64 %i.cn ; 4 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i19.i
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i18.i
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = icmp slt i64 %spec.select.i.i.i19.i, %i.ck
  br i1 %i.db, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i, !llvm.loop !49

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i17.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ] ; 5 uses
  %i.dc = and i64 %i.ch, 8
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.de = add nsw i64 %i.ci, -2
  %i.df = ashr exact i64 %i.de, 1
  %i.dg = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.df
  br i1 %i.dg, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.dh = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.di = or disjoint i64 %i.dh, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.dk, ptr %i.dl, align 8
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.di, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load atomic i64, ptr %i.dp monotonic, align 8
  %i.dr = load atomic i64, ptr %i.dm monotonic, align 8
  %i.ds = icmp ult i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store ptr %i.do, ptr %i.dt, align 8
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.k, !llvm.loop !50

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i16.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.du = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i16.i
  store ptr %i.ce, ptr %i.du, align 8
  %i.dv = icmp sgt i64 %i.ch, 8
  br i1 %i.dv, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_T0_.exit, !llvm.loop !52

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dx, %bb.b ], [ %2, %.lr.ph ]
  %i.dw = phi i64 [ %i.fp, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dx = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dy = lshr i64 %i.dw, 1
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.eb = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ec = load ptr, ptr %i.dz, align 8            ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 3 uses
  %i.ee = load atomic i64, ptr %i.ed monotonic, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 3 uses
  %i.eg = load atomic i64, ptr %i.ef monotonic, align 8
  %i.eh = icmp ult i64 %i.ee, %i.eg
  %i.ei = load ptr, ptr %i.ea, align 8            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 4 uses
  br i1 %i.eh, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.ek = load atomic i64, ptr %i.ef monotonic, align 8
  %i.el = load atomic i64, ptr %i.ej monotonic, align 8
  %i.em = icmp ult i64 %i.ek, %i.el
  br i1 %i.em, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.en = load ptr, ptr %.fr29, align 8
  store ptr %i.ec, ptr %.fr29, align 8
  store ptr %i.en, ptr %i.dz, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.eo = load atomic i64, ptr %i.ed monotonic, align 8
  %i.ep = load atomic i64, ptr %i.ej monotonic, align 8
  %i.eq = icmp ult i64 %i.eo, %i.ep
  %i.er = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ei, ptr %.fr29, align 8
  store ptr %i.er, ptr %i.ea, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store ptr %i.eb, ptr %.fr29, align 8
  store ptr %i.er, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph54
  %i.es = load atomic i64, ptr %i.ed monotonic, align 8
  %i.et = load atomic i64, ptr %i.ej monotonic, align 8
  %i.eu = icmp ult i64 %i.es, %i.et
  br i1 %i.eu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ev = load ptr, ptr %.fr29, align 8
  store ptr %i.eb, ptr %.fr29, align 8
  store ptr %i.ev, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.ew = load atomic i64, ptr %i.ef monotonic, align 8
  %i.ex = load atomic i64, ptr %i.ej monotonic, align 8
  %i.ey = icmp ult i64 %i.ew, %i.ex
  %i.ez = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.ey, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.ei, ptr %.fr29, align 8
  store ptr %i.ez, ptr %i.ea, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store ptr %i.ec, ptr %.fr29, align 8
  store ptr %i.ez, ptr %i.dz, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.fh, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.fa = load ptr, ptr %.fr29, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.fh, %bb.w ] ; 8 uses
  %i.fc = load ptr, ptr %.sroa.012.1.i.i, align 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load atomic i64, ptr %i.fd monotonic, align 8
  %i.ff = load atomic i64, ptr %i.fb monotonic, align 8
  %i.fg = icmp ult i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.fg, label %bb.w, label %.preheader.i.i, !llvm.loop !53

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.fi = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
  %i.fj = load atomic i64, ptr %i.fb monotonic, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fl = load atomic i64, ptr %i.fk monotonic, align 8
  %i.fm = icmp ult i64 %i.fj, %i.fl
  br i1 %i.fm, label %.preheader.i.i, label %bb.x, !llvm.loop !54

bb.x:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEET_SL_SL_T0_.exit

bb.y:                                             ; preds = %bb.x
  store ptr %i.fi, ptr %.sroa.012.1.i.i, align 8
  store ptr %i.fc, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !55

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEET_SL_SL_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dx)
  %i.fn = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fo = sub i64 %i.fn, %i.a                     ; 2 uses
  %i.fp = ashr exact i64 %i.fo, 3                 ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 16
  br i1 %i.fq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_T0_.exit, !llvm.loop !48

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_122PrepareForSweepVisitor20VisitNormalPageSpaceERNS3_15NormalPageSpaceEEUlPKS4_SI_E_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN5cppgc8internal8BasePageESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 12 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.k, %i.m                       ; 9 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %i.e
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr nonnull align 8 %i.r, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.d, 8
  br i1 %i.u, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8
  store ptr %i.v, ptr %i.i, align 8
  br label %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.d
  store ptr %i.x, ptr %i.h, align 8
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %1, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIPPN5cppgc8internal8BasePageES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ad = icmp eq i64 %i.y, 8
  br i1 %i.ad, label %bb.j, label %_ZSt13move_backwardIPPN5cppgc8internal8BasePageES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.af = load ptr, ptr %1, align 8
  store ptr %i.af, ptr %i.ae, align 8
  br label %_ZSt13move_backwardIPPN5cppgc8internal8BasePageES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN5cppgc8internal8BasePageES4_ET0_T_S6_S5_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.t, label %bb.k, label %bb.l, !prof !21

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN5cppgc8internal8BasePageES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPN5cppgc8internal8BasePageES4_ET0_T_S6_S5_.exit
  %i.ag = icmp eq i64 %i.d, 8
  br i1 %i.ag, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %2, align 8
  store ptr %i.ah, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ai = icmp eq i64 %i.n, 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.n ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.b, %i.ak                     ; 3 uses
  %i.am = icmp sgt i64 %i.al, 8
  br i1 %i.am, label %bb.n, label %bb.o, !prof !21

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.aj, i64 %i.al, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.an = icmp eq i64 %i.al, 8
  br i1 %i.an, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.aj, align 8
  store ptr %i.ao, ptr %i.i, align 8
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ap = sub nuw nsw i64 %i.e, %i.o
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap ; 3 uses
  store ptr %i.ar, ptr %i.h, align 8
  %i.as = icmp sgt i64 %i.n, 8
  br i1 %i.as, label %bb.q, label %bb.r, !prof !21

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr align 8 %1, i64 %i.n, i1 false)
  br label %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  br i1 %i.ai, label %bb.s, label %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr %1, align 8
  store ptr %i.at, ptr %i.ar, align 8
  br label %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit43

_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.au = load ptr, ptr %i.h, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.n
  store ptr %i.av, ptr %i.h, align 8
  %i.aw = icmp sgt i64 %i.n, 8
  br i1 %i.aw, label %bb.t, label %bb.u, !prof !21

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit43
  %i.ax = icmp eq i64 %i.n, 8
  br i1 %i.ax, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.v:                                             ; preds = %bb.u
  %i.ay = load ptr, ptr %2, align 8
  store ptr %i.ay, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN5cppgc8internal8BasePageESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.w:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %0, align 8               ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bb = sub i64 %i.k, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 4 uses
  %i.bd = sub nsw i64 1152921504606846975, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.x, label %_ZNKSt6vectorIPN5cppgc8internal8BasePageESaIS3_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #24
  unreachable

_ZNKSt6vectorIPN5cppgc8internal8BasePageESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.e)
  %i.bf = add nsw i64 %.sroa.speculated.i, %i.bc  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bc
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN5cppgc8internal8BasePageESaIS3_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPN5cppgc8internal8BasePageESaIS3_EE12_M_check_lenEmPKc.exit
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #21
  br label %_ZNSt12_Vector_baseIPN5cppgc8internal8BasePageESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN5cppgc8internal8BasePageESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN5cppgc8internal8BasePageESaIS3_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bl = phi ptr [ %i.bk, %bb.y ], [ null, %_ZNKSt6vectorIPN5cppgc8internal8BasePageESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bm = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bn = sub i64 %i.bm, %i.ba                    ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, 8
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !21

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPN5cppgc8internal8BasePageESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.az, i64 %i.bn, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPN5cppgc8internal8BasePageESaIS3_EE11_M_allocateEm.exit
  %i.bp = icmp eq i64 %i.bn, 8
  br i1 %i.bp, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN5cppgc8internal8BasePageES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.az, align 8
end_hunk_0
