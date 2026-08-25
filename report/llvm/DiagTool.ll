Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DiagTool?download=true
inline.NumInlined: 348
inline.NumDeleted: 175
begin_hunk_0_@_ZN8diagtool9DiagTools7getToolEN4llvm9StringRefE:bb.a
  %i.h = zext i32 %i.g to i64
  br label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = sext i32 %i.c to i64
  br label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.j = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.sink.i.i ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = icmp eq ptr %i.j, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit ]
  ret ptr %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8diagtool9DiagTools12registerToolEPNS_8DiagToolE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 7 uses
  %i.f = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.c, i64 %i.e) #15
  %i.g = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr %i.c, i64 %i.e, i32 noundef %i.f) #15 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEEixENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.e, 17
  %i.m = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.l, i64 noundef 8) #15 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryIPN8diagtool8DiagToolEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN4llvm14StringMapEntryIPN8diagtool8DiagToolEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryIPN8diagtool8DiagToolEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.o, align 1, !tbaa !18
  store i64 %i.e, ptr %i.m, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !35
  store ptr %i.m, ptr %i.j, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !26
  %i.t = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %i.g) #15
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !29
  br label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEEixENS_9StringRefE.exit: ; preds = %bb.a, %_ZN4llvm14StringMapEntryIPN8diagtool8DiagToolEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.x = phi ptr [ %.pre.i, %_ZN4llvm14StringMapEntryIPN8diagtool8DiagToolEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i ], [ %i.k, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %1, ptr %i.y, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8diagtool9DiagTools13printCommandsERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.lr.ph.i.i.i, label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %i.g = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE5beginEv.exit, !llvm.loop !37

_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %i.h, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = zext i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %.not62 = icmp eq ptr %.sroa.0.0.i, %i.l
  br i1 %.not62, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE5beginEv.exit
  %.pre = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !29
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit
  %i.m = add i32 %spec.select, 3                  ; 2 uses
  %i.n = ptrtoint ptr %.sroa.14.1 to i64
  %.not.i.i.i.i = icmp eq ptr %.sroa.047.1, %.sroa.8.1
  br i1 %.not.i.i.i.i, label %._crit_edge77, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = ptrtoint ptr %.sroa.8.1 to i64
  %i.p = ptrtoint ptr %.sroa.047.1 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 4
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.047.1, ptr nonnull %.sroa.8.1, i64 noundef %i.u)
  %i.v = icmp sgt i64 %i.q, 256
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.047.1, i64 256 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.047.1, ptr nonnull %i.w)
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %.sroa.8.1
  br i1 %.not4.i.i.i.i.i.i, label %.lr.ph76, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i ], [ %i.w, %bb.d ] ; 5 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.05.i.i.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !14 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !39
  %i.y = tail call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.y      ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.z = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !40
  br label %bb.e, !llvm.loop !41

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.07.0.i.i.i.i.i.i.i, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.05.i.i.i.i.i.i, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph76, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

bb.f:                                             ; preds = %bb.c
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.047.1, ptr nonnull %.sroa.8.1)
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit
  %i.ae = phi ptr [ %i.bg, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.067 = phi i32 [ %spec.select, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.047.066 = phi ptr [ %.sroa.047.1, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.8.065 = phi ptr [ %.sroa.8.1, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit ], [ null, %.lr.ph.preheader ] ; 7 uses
  %.sroa.14.064.a = phi ptr [ %.sroa.043.1, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit ], [ %.sroa.0.0.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.043.063 = phi ptr [ %.sroa.14.1, %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.8.065, %.sroa.043.063
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store ptr %i.af, ptr %.sroa.8.065, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.065, i64 8
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ah = ptrtoint ptr %.sroa.8.065 to i64
  %i.ai = ptrtoint ptr %.sroa.047.066 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775792
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.al = ashr exact i64 %i.aj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 576460752303423487)
  %i.ap = select i1 %i.an, i64 576460752303423487, i64 %i.ao ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #17 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.af, ptr %i.as, align 8, !tbaa !39
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx40, align 8, !tbaa !14
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.047.066, %.sroa.8.065
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i17:                             ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i17
  %.012.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i17 ], [ %i.ar, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i17 ], [ %.sroa.047.066, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !40, !alias.scope !43
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.at, %.sroa.8.065
  br i1 %.not.i.i.i.i.i.i18, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i17, !llvm.loop !47

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i17, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i17 ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.047.066, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.066, i64 noundef %i.aj) #16
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ap
  %.pre81 = load ptr, ptr %.sroa.14.064.a, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.g, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.aw = phi ptr [ %.pre81, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ae, %bb.g ]
  %.sroa.14.1 = phi ptr [ %i.av, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.043.063, %bb.g ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.8.065, %bb.g ] ; 3 uses
  %.sroa.047.1 = phi ptr [ %i.ar, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.047.066, %bb.g ] ; 11 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 6 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.ay = trunc i64 %i.ax to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.067, i32 %i.ay) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.14.064.a, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i
  %i.bc = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %i.az, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit, !llvm.loop !37

_ZN4llvm17StringMapIterBaseIPN8diagtool8DiagToolELb0EEppEv.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit
  %i.bg = phi ptr [ %i.ba, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.be, %.lr.ph.i.i ]
  %.sroa.043.1 = phi ptr [ %i.az, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.bd, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.043.1, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge77:                                    ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.047.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge77
  %i.bh = ptrtoint ptr %.sroa.047.1 to i64
  %i.bi = sub i64 %i.n, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.1, i64 noundef %i.bi) #16
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit:  ; preds = %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE5beginEv.exit, %._crit_edge77, %bb.k
  ret void

bb.l:                                             ; preds = %.lr.ph76, %_ZN4llvm11raw_ostreamlsEc.exit
  %.sroa.032.075 = phi ptr [ %.sroa.047.1, %.lr.ph76 ], [ %i.dt, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 2) #15 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.pre82 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.n:                                             ; preds = %bb.l
  store i16 8224, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  store ptr %i.br, ptr %i.ad, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.m, %bb.n
  %i.bs = phi ptr [ %.pre82, %bb.m ], [ %i.br, %bb.n ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bp, %bb.m ], [ %1, %bb.n ] ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %.sroa.032.075, align 8, !tbaa !39 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.075, i64 8 ; 3 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !14 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ugt i64 %.sroa.26.0.copyload, %i.by
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ca = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %.sroa.05.0.copyload, i64 noundef %.sroa.26.0.copyload) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i21 = icmp eq i64 %.sroa.26.0.copyload, 0
  br i1 %.not.i21, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, i1 false)
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.26.0.copyload
  store ptr %i.cc, ptr %i.bv, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.o, %bb.p, %bb.q
  %i.cd = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %.not78 = icmp eq i32 %i.m, %i.ce
  br i1 %.not78, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.cf = sub i32 %i.m, %i.ce
  br label %.lr.ph72

._crit_edge73.loopexit:                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit31
  %.sroa.2.0.copyload.pre = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !14
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %._crit_edge73.loopexit ], [ %i.cd, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.032.075, align 8, !tbaa !39 ; 2 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.ch = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #15
  %i.ci = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.cg, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ch) #15 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, -1
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !27
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge73
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !28
  %i.cn = zext i32 %i.cm to i64
  br label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

bb.s:                                             ; preds = %._crit_edge73
  %i.co = sext i32 %i.ci to i64
  br label %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %bb.s, %bb.r
  %.sink.i.i.i = phi i64 [ %i.co, %bb.s ], [ %i.cn, %bb.r ]
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %.sink.i.i.i ; 2 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !28
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = icmp ne ptr %i.cp, %i.cv
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !33 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19 ; 5 uses
  %i.de = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.df = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ugt i64 %i.dd, %i.di
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.dk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.db, i64 noundef %i.dd) #15 ; 2 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.pre85 = load ptr, ptr %.phi.trans.insert84, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26

bb.u:                                             ; preds = %_ZN4llvm9StringMapIPN8diagtool8DiagToolENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %.not.i24 = icmp eq i64 %i.dd, 0
  br i1 %.not.i24, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.db, i64 %i.dd, i1 false)
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store ptr %i.dm, ptr %i.ad, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26:    ; preds = %bb.t, %bb.u, %bb.v
  %i.dn = phi ptr [ %.pre85, %bb.t ], [ %i.dm, %bb.v ], [ %i.df, %bb.u ] ; 3 uses
  %.0.i25 = phi ptr [ %i.dk, %bb.t ], [ %1, %bb.v ], [ %1, %bb.u ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i25, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !49
  %.not.i27 = icmp ult ptr %i.dn, %i.dp
  br i1 %.not.i27, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26
  %i.dq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i25, i8 noundef zeroext 10) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i25, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !54
  store i8 10, ptr %i.dn, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.w, %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.032.075, i64 16
  %.not55 = icmp eq ptr %.sroa.032.075, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not55, label %._crit_edge77, label %bb.l, !llvm.loop !57

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %_ZN4llvm11raw_ostreamlsEc.exit31
  %.01471 = phi i32 [ %i.dy, %_ZN4llvm11raw_ostreamlsEc.exit31 ], [ 0, %.lr.ph72.preheader ]
  %i.du = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 3 uses
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !49
  %.not.i29 = icmp ult ptr %i.du, %i.dv
  br i1 %.not.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph72
  %i.dw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 32) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit31

bb.z:                                             ; preds = %.lr.ph72
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dx, ptr %i.ad, align 8, !tbaa !54
  store i8 32, ptr %i.du, align 1, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEc.exit31
end_hunk_0
