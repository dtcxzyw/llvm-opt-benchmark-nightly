Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.11?download=true
inline.NumInlined: 6091
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN4anki8services40_$LT$impl$u20$anki..backend..Backend$GT$9sort_deck17hb8daceea9319a447E":bb.a
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.o), !noalias !8076
  br label %_ZN4anki7backend7Backend8with_col17hd87bd4edf90f16e6E.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8076
  invoke void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$9sort_deck17h64a8a0da75a77911E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.s, i64 noundef %1, i1 noundef zeroext %2)
          to label %"_ZN4anki8services40_$LT$impl$u20$anki..backend..Backend$GT$9sort_deck28_$u7b$$u7b$closure$u7d$$u7d$17h6b1d027af4e090e8E.exit.i" unwind label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %i.ab, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE"(ptr nonnull %i.o, i8 %i.q) #31
          to label %common.resume.i unwind label %bb.r, !noalias !8076

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

"_ZN4anki8services40_$LT$impl$u20$anki..backend..Backend$GT$9sort_deck28_$u7b$$u7b$closure$u7d$$u7d$17h6b1d027af4e090e8E.exit.i": ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i34.i, label %bb.o

bb.o:                                             ; preds = %"_ZN4anki8services40_$LT$impl$u20$anki..backend..Backend$GT$9sort_deck28_$u7b$$u7b$closure$u7d$$u7d$17h6b1d027af4e090e8E.exit.i"
  %i.ae = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !8076
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i34.i, label %bb.p, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.ah = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !8076
  br i1 %i.ah, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i34.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ad monotonic, align 4, !noalias !8076
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i34.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i34.i: ; preds = %bb.q, %bb.p, %bb.o, %"_ZN4anki8services40_$LT$impl$u20$anki..backend..Backend$GT$9sort_deck28_$u7b$$u7b$closure$u7d$$u7d$17h6b1d027af4e090e8E.exit.i"
  %i.ai = atomicrmw xchg ptr %i.o, i32 0 release, align 4, !noalias !8076
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit35.sink.split.i", label %_ZN4anki7backend7Backend8with_col17hd87bd4edf90f16e6E.exit, !prof !12

bb.r:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !8076
  unreachable

_ZN4anki7backend7Backend8with_col17hd87bd4edf90f16e6E.exit: ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit35.sink.split.i", %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i34.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 4 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %.sroa.015.0.copyload = load i32, ptr %1, align 4 ; 4 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.416.0.copyload = load i32, ptr %.sroa.416.0..sroa_idx, align 4 ; 6 uses
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.1218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.1218.0.copyload = load i32, ptr %.sroa.1218.0..sroa_idx, align 4 ; 3 uses
  %.sroa.1520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.1520.0.copyload = load i32, ptr %.sroa.1520.0..sroa_idx, align 4 ; 3 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4 ; 4 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4 ; 2 uses
  %i.a = add nsw i32 %.sroa.015.0.copyload, -2
  %i.b = icmp samesign ugt i32 %.sroa.015.0.copyload, 1
  %narrow.i = select i1 %i.b, i32 %i.a, i32 3
  switch i32 %narrow.i, label %bb.b [
    i32 0, label %"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE.exit"
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.817.0.copyload23 = load i64, ptr %.sroa.817.0..sroa_idx, align 4
  %i.c = trunc i32 %.sroa.416.0.copyload to i1
  %.sroa.032.0.i = and i32 %.sroa.416.0.copyload, 1
  %.sroa.49.sroa.0.0.insert.insert.i = select i1 %i.c, i64 %.sroa.817.0.copyload23, i64 0
  br label %"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE.exit"

bb.d:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.sroa.817.0..sroa_idx, align 4
  %.sroa.23.sroa.0.0.extract.trunc = trunc i32 %.sroa.23.0.copyload to i8
  %i.e = trunc i32 %.sroa.416.0.copyload to i1
  %.sroa.027.0.i = and i32 %.sroa.416.0.copyload, 1
  %.sroa.421.sroa.0.0.insert.insert.i = select i1 %i.e, i64 %i.d, i64 0
  br label %"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE.exit"

bb.e:                                             ; preds = %bb.a
  %.sroa.817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.817.0.copyload24 = load i32, ptr %.sroa.817.0..sroa_idx.sroa_idx, align 4
  %i.f = load float, ptr %.sroa.817.0..sroa_idx, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.29.0.copyload = load i8, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 4
  %i.g = bitcast i32 %.sroa.416.0.copyload to float
  %i.h = trunc i32 %.sroa.18.0.copyload to i1     ; 2 uses
  %.sroa.016.0.i.i = and i32 %.sroa.18.0.copyload, 1
  %i.i = trunc i32 %.sroa.015.0.copyload to i1    ; 2 uses
  %.sroa.620.0.i.i = select i1 %i.i, float %i.f, float undef
  %.sroa.519.0.i.i = select i1 %i.i, float %i.g, float undef
  %i.j = select i1 %i.h, i32 %.sroa.21.0.copyload, i32 undef
  %.sroa.1557.28.insert.ext.i = zext i8 %.sroa.29.0.copyload to i32
  %i.k = select i1 %i.h, i32 %.sroa.23.0.copyload, i32 undef
  %.sroa.653.sroa.4.0.insert.ext.i = zext i32 %.sroa.25.0.copyload to i64
  %.sroa.653.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.653.sroa.4.0.insert.ext.i, 32
  %.sroa.653.sroa.0.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.653.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.653.sroa.4.0.insert.shift.i, %.sroa.653.sroa.0.0.insert.ext.i
  %i.l = trunc nuw nsw i32 %.sroa.015.0.copyload to i8
  %.sroa.17.32.extract.trunc.i = and i8 %i.l, 1
  br label %"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE.exit"

"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE.exit": ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.10.sroa.9.sroa.7.sroa.0.0.i = phi float [ %.sroa.519.0.i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.9.sroa.7.sroa.4.0.i = phi float [ %.sroa.620.0.i.i, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.9.sroa.7.sroa.5.0.i = phi i32 [ %.sroa.817.0.copyload24, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.9.sroa.7.sroa.6.0.i = phi i32 [ %.sroa.1218.0.copyload, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.9.sroa.7.sroa.7.0.i = phi i32 [ %.sroa.1520.0.copyload, %bb.e ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.9.sroa.5.0.i = phi i8 [ %.sroa.17.32.extract.trunc.i, %bb.e ], [ undef, %bb.c ], [ %.sroa.23.sroa.0.0.extract.trunc, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.9.sroa.0.0.i = phi i32 [ %.sroa.1557.28.insert.ext.i, %bb.e ], [ undef, %bb.c ], [ %.sroa.21.0.copyload, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.8.0.i = phi i32 [ %.sroa.28.0.copyload, %bb.e ], [ %.sroa.18.0.copyload, %bb.c ], [ %.sroa.18.0.copyload, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.7.0.i = phi i32 [ %.sroa.27.0.copyload, %bb.e ], [ %.sroa.1520.0.copyload, %bb.c ], [ %.sroa.1520.0.copyload, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.6.0.i = phi i32 [ %.sroa.26.0.copyload, %bb.e ], [ %.sroa.1218.0.copyload, %bb.c ], [ %.sroa.1218.0.copyload, %bb.d ], [ undef, %bb.a ]
  %.sroa.10.sroa.0.0.i = phi i64 [ %.sroa.653.sroa.0.0.insert.insert.i, %bb.e ], [ %.sroa.49.sroa.0.0.insert.insert.i, %bb.c ], [ %.sroa.421.sroa.0.0.insert.insert.i, %bb.d ], [ undef, %bb.a ]
  %.sroa.7.0.i = phi i32 [ %i.j, %bb.e ], [ %.sroa.032.0.i, %bb.c ], [ %.sroa.027.0.i, %bb.d ], [ %.sroa.416.0.copyload, %bb.a ]
  %.sroa.0.0.i = phi i32 [ %.sroa.016.0.i.i, %bb.e ], [ 4, %bb.c ], [ 5, %bb.d ], [ 3, %bb.a ]
  store i32 %.sroa.0.0.i, ptr %0, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.0.i, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0.i, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.10.sroa.6.0.i, ptr %.sroa.64.0..sroa_idx, align 4
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.10.sroa.7.0.i, ptr %.sroa.75.0..sroa_idx, align 4
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.10.sroa.8.0.i, ptr %.sroa.86.0..sroa_idx, align 4
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.10.sroa.9.sroa.0.0.i, ptr %.sroa.97.0..sroa_idx, align 4
  %.sroa.108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.10.sroa.9.sroa.5.0.i, ptr %.sroa.108.0..sroa_idx, align 4
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i24 0, ptr %.sroa.119.0..sroa_idx, align 1
  %.sroa.1210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %.sroa.10.sroa.9.sroa.7.sroa.0.0.i, ptr %.sroa.1210.0..sroa_idx, align 4
  %.sroa.1311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sroa.10.sroa.9.sroa.7.sroa.4.0.i, ptr %.sroa.1311.0..sroa_idx, align 4
  %.sroa.1412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.sroa.9.sroa.7.sroa.5.0.i, ptr %.sroa.1412.0..sroa_idx, align 4
  %.sroa.1513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.10.sroa.9.sroa.7.sroa.6.0.i, ptr %.sroa.1513.0..sroa_idx, align 4
  %.sroa.1614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.10.sroa.9.sroa.7.sroa.7.0.i, ptr %.sroa.1614.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4anki9scheduler7service6states6normal149_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..normal..NormalState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Normal$GT$4from17h5742189aa6ab786fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 4 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !8081, !noundef !9 ; 4 uses
  %i.b = add nsw i32 %i.a, -2
  %i.c = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.c, i32 %i.b, i32 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 4, !noundef !9
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = load <4 x i32>, ptr %i.f, align 4
  %3 = freeze <4 x i32> %2
  %.sroa.035.0.copyload = load i32, ptr %i.d, align 4 ; 2 uses
  %i.g = trunc i32 %.sroa.035.0.copyload to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload41 = load i64, ptr %i.h, align 4
  %.sroa.032.0 = and i32 %.sroa.035.0.copyload, 1
  %.sroa.49.sroa.0.0.insert.insert = select i1 %i.g, i64 %.sroa.2.0.copyload41, i64 0
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = load <4 x i32>, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i8, ptr %i.j, align 4, !range !18, !noundef !9
  %.sroa.036.0.copyload = load i32, ptr %i.d, align 4 ; 2 uses
  %i.l = trunc i32 %.sroa.036.0.copyload to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.237.0.copyload39 = load i64, ptr %i.m, align 4
  %.sroa.027.0 = and i32 %.sroa.036.0.copyload, 1
  %.sroa.421.sroa.0.0.insert.insert = select i1 %i.l, i64 %.sroa.237.0.copyload39, i64 0
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = load <2 x float>, ptr %i.d, align 4
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load <2 x i32>, ptr %.sroa.4.0..sroa_idx46, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload49 = load i32, ptr %.sroa.7.0..sroa_idx48, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.8.0.copyload59 = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.9.0.copyload60 = load i32, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx50, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %5 = load <4 x i32>, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.14.0.copyload = load i8, ptr %.sroa.14.0..sroa_idx, align 4
  %i.p = trunc i32 %.sroa.7.0.copyload49 to i1    ; 2 uses
  %.sroa.016.0.i = and i32 %.sroa.7.0.copyload49, 1
  %i.q = trunc i32 %i.a to i1
  %i.r = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %i.s = shufflevector <2 x i1> %i.r, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x float> %i.n, <2 x float> undef
  %i.u = select i1 %i.p, i32 %.sroa.8.0.copyload59, i32 undef
  %.sroa.1557.28.insert.ext = zext i8 %.sroa.14.0.copyload to i32
  %i.v = select i1 %i.p, i32 %.sroa.9.0.copyload60, i32 undef
  %.sroa.653.sroa.4.0.insert.ext = zext i32 %.sroa.10.0.copyload to i64
  %.sroa.653.sroa.4.0.insert.shift = shl nuw i64 %.sroa.653.sroa.4.0.insert.ext, 32
  %.sroa.653.sroa.0.0.insert.ext = zext i32 %i.v to i64
  %.sroa.653.sroa.0.0.insert.insert = or disjoint i64 %.sroa.653.sroa.4.0.insert.shift, %.sroa.653.sroa.0.0.insert.ext
  %i.w = trunc nuw nsw i32 %i.a to i8
  %.sroa.17.32.extract.trunc = and i8 %i.w, 1
  %6 = insertelement <4 x i32> poison, i32 %.sroa.13.0.copyload, i64 2
  %7 = insertelement <4 x i32> %6, i32 %.sroa.1557.28.insert.ext, i64 3
  %8 = shufflevector <4 x i32> %5, <4 x i32> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %.sroa.10.sroa.9.sroa.7.sroa.7.0 = phi i32 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %.sroa.6.0.copyload, %bb.f ]
  %.sroa.10.sroa.9.sroa.5.0 = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ %i.k, %bb.e ], [ %.sroa.17.32.extract.trunc, %bb.f ]
  %.sroa.10.sroa.0.0 = phi i64 [ undef, %bb.c ], [ %.sroa.49.sroa.0.0.insert.insert, %bb.d ], [ %.sroa.421.sroa.0.0.insert.insert, %bb.e ], [ %.sroa.653.sroa.0.0.insert.insert, %bb.f ]
  %.sroa.7.0 = phi i32 [ %i.e, %bb.c ], [ %.sroa.032.0, %bb.d ], [ %.sroa.027.0, %bb.e ], [ %i.u, %bb.f ]
  %.sroa.0.0 = phi i32 [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ %.sroa.016.0.i, %bb.f ]
  %i.x = phi <2 x float> [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %i.t, %bb.f ]
  %9 = phi <4 x i32> [ undef, %bb.c ], [ %3, %bb.d ], [ %4, %bb.e ], [ %8, %bb.f ]
  %i.y = phi <2 x i32> [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %i.o, %bb.f ]
  store i32 %.sroa.0.0, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %9, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.10.sroa.9.sroa.5.0, ptr %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.7.sroa.5.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i24 0, ptr %.sroa.5.sroa.7.sroa.5.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.7.sroa.6.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.x, ptr %.sroa.5.sroa.7.sroa.6.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.7.sroa.6.sroa.5.0..sroa.5.sroa.7.sroa.6.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <2 x i32> %i.y, ptr %.sroa.5.sroa.7.sroa.6.sroa.5.0..sroa.5.sroa.7.sroa.6.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.7.sroa.6.sroa.7.0..sroa.5.sroa.7.sroa.6.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.10.sroa.9.sroa.7.sroa.7.0, ptr %.sroa.5.sroa.7.sroa.6.sroa.7.0..sroa.5.sroa.7.sroa.6.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4anki9scheduler7service6states8filtered155_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..filtered..FilteredState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..Filtered$GT$4from17hfbfdd7b7bc9ba90eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 4 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !8082, !noundef !9 ; 5 uses
  %.not = icmp eq i32 %i.a, 5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.712.0.copyload = load i32, ptr %.sroa.712.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %i.e = add nsw i32 %i.a, -2
  %i.f = icmp samesign ugt i32 %i.a, 1
  %narrow.i.i = select i1 %i.f, i32 %i.e, i32 3
  switch i32 %narrow.i.i, label %bb.c [
    i32 0, label %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit"
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.3.0.copyload13 = load i64, ptr %i.d, align 4
  %i.g = trunc i32 %i.c to i1
  %.sroa.032.0.i.i = and i32 %i.c, 1
  %.sroa.49.sroa.0.0.insert.insert.i.i = select i1 %i.g, i64 %.sroa.3.0.copyload13, i64 0
  br label %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit"

bb.e:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 4
  %.sroa.23.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.11.0.copyload to i8
  %i.i = trunc i32 %i.c to i1
  %.sroa.027.0.i.i = and i32 %i.c, 1
  %.sroa.421.sroa.0.0.insert.insert.i.i = select i1 %i.i, i64 %i.h, i64 0
  br label %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit"

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.3.0.copyload14 = load i32, ptr %.sroa.3.0..sroa_idx.sroa_idx, align 4
  %i.j = load float, ptr %i.d, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.k = bitcast i32 %i.c to float
  %i.l = trunc i32 %.sroa.9.0.copyload to i1      ; 2 uses
  %.sroa.016.0.i.i.i = and i32 %.sroa.9.0.copyload, 1
  %i.m = trunc i32 %i.a to i1                     ; 2 uses
  %.sroa.620.0.i.i.i = select i1 %i.m, float %i.j, float undef
  %.sroa.519.0.i.i.i = select i1 %i.m, float %i.k, float undef
  %i.n = select i1 %i.l, i32 %.sroa.10.0.copyload, i32 undef
  %.sroa.1557.28.insert.ext.i.i = zext i8 %.sroa.16.0.copyload to i32
  %i.o = select i1 %i.l, i32 %.sroa.11.0.copyload, i32 undef
  %.sroa.653.sroa.4.0.insert.ext.i.i = zext i32 %.sroa.12.0.copyload to i64
  %.sroa.653.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.653.sroa.4.0.insert.ext.i.i, 32
  %.sroa.653.sroa.0.0.insert.ext.i.i = zext i32 %i.o to i64
  %.sroa.653.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.653.sroa.4.0.insert.shift.i.i, %.sroa.653.sroa.0.0.insert.ext.i.i
  %i.p = trunc nuw nsw i32 %i.a to i8
  %.sroa.17.32.extract.trunc.i.i = and i8 %i.p, 1
  br label %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit"

"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit": ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.sroa.10.sroa.9.sroa.7.sroa.0.0.i.i = phi float [ %.sroa.519.0.i.i.i, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.9.sroa.7.sroa.4.0.i.i = phi float [ %.sroa.620.0.i.i.i, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.9.sroa.7.sroa.5.0.i.i = phi i32 [ %.sroa.3.0.copyload14, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.9.sroa.7.sroa.6.0.i.i = phi i32 [ %.sroa.712.0.copyload, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.9.sroa.7.sroa.7.0.i.i = phi i32 [ %.sroa.8.0.copyload, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.9.sroa.5.0.i.i = phi i8 [ %.sroa.17.32.extract.trunc.i.i, %bb.f ], [ undef, %bb.d ], [ %.sroa.23.sroa.0.0.extract.trunc.i, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.9.sroa.0.0.i.i = phi i32 [ %.sroa.1557.28.insert.ext.i.i, %bb.f ], [ undef, %bb.d ], [ %.sroa.10.0.copyload, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.8.0.i.i = phi i32 [ %.sroa.15.0.copyload, %bb.f ], [ %.sroa.9.0.copyload, %bb.d ], [ %.sroa.9.0.copyload, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.7.0.i.i = phi i32 [ %.sroa.14.0.copyload, %bb.f ], [ %.sroa.8.0.copyload, %bb.d ], [ %.sroa.8.0.copyload, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.6.0.i.i = phi i32 [ %.sroa.13.0.copyload, %bb.f ], [ %.sroa.712.0.copyload, %bb.d ], [ %.sroa.712.0.copyload, %bb.e ], [ undef, %bb.b ]
  %.sroa.10.sroa.0.0.i.i = phi i64 [ %.sroa.653.sroa.0.0.insert.insert.i.i, %bb.f ], [ %.sroa.49.sroa.0.0.insert.insert.i.i, %bb.d ], [ %.sroa.421.sroa.0.0.insert.insert.i.i, %bb.e ], [ undef, %bb.b ] ; 2 uses
  %.sroa.7.0.i.i = phi i32 [ %i.n, %bb.f ], [ %.sroa.032.0.i.i, %bb.d ], [ %.sroa.027.0.i.i, %bb.e ], [ %i.c, %bb.b ]
  %.sroa.0.0.i.i = phi i32 [ %.sroa.016.0.i.i.i, %bb.f ], [ 4, %bb.d ], [ 5, %bb.e ], [ 3, %bb.b ]
  %.sroa.6.sroa.0.0.extract.trunc = trunc i64 %.sroa.10.sroa.0.0.i.i to i8
  %.sroa.6.sroa.4.0.extract.shift = lshr i64 %.sroa.10.sroa.0.0.i.i, 8
  %.sroa.6.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.6.sroa.4.0.extract.shift to i56
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.q = load i8, ptr %i.d, align 4, !range !18, !noundef !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit"
  %.sroa.7.sroa.12.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.7.sroa.5.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.11.0 = phi float [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.7.sroa.4.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.10.0 = phi float [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.7.sroa.0.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.8.0 = phi i8 [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.5.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.7.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.0.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.6.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.8.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.5.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.7.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.4.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.6.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.0.0 = phi i56 [ undef, %bb.g ], [ %.sroa.6.sroa.4.0.extract.trunc, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.13.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.7.sroa.6.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.7.sroa.14.0 = phi i32 [ undef, %bb.g ], [ %.sroa.10.sroa.9.sroa.7.sroa.7.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.6.0 = phi i8 [ %i.q, %bb.g ], [ %.sroa.6.sroa.0.0.extract.trunc, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.5.0 = phi i32 [ %i.c, %bb.g ], [ %.sroa.7.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  %.sroa.0.0 = phi i32 [ 8, %bb.g ], [ %.sroa.0.0.i.i, %"_ZN4anki9scheduler7service6states12rescheduling186_$LT$impl$u20$core..convert..From$LT$anki..scheduler..states..rescheduling_filter..ReschedulingFilterState$GT$$u20$for$u20$anki_proto..scheduler..scheduling_state..ReschedulingFilter$GT$4from17h4733925f6239d71aE.exit" ]
  store i32 %.sroa.0.0, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.0, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.7.sroa.0.0, ptr %.sroa.69.0..sroa_idx, align 1
  %.sroa.69.sroa.4.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.sroa.4.0, ptr %.sroa.69.sroa.4.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.5.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.7.sroa.5.0, ptr %.sroa.69.sroa.5.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7.sroa.6.0, ptr %.sroa.69.sroa.6.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.7.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.7.sroa.7.0, ptr %.sroa.69.sroa.7.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.8.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.sroa.8.0, ptr %.sroa.69.sroa.8.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.9.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i24 0, ptr %.sroa.69.sroa.9.0..sroa.69.0..sroa_idx.sroa_idx, align 1
  %.sroa.69.sroa.10.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %.sroa.7.sroa.10.0, ptr %.sroa.69.sroa.10.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.11.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sroa.7.sroa.11.0, ptr %.sroa.69.sroa.11.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.12.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.7.sroa.12.0, ptr %.sroa.69.sroa.12.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.13.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.7.sroa.13.0, ptr %.sroa.69.sroa.13.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  %.sroa.69.sroa.14.0..sroa.69.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.7.sroa.14.0, ptr %.sroa.69.sroa.14.0..sroa.69.0..sroa_idx.sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service92_$LT$impl$u20$anki..services..BackendSchedulerService$u20$for$u20$anki..backend..Backend$GT$14export_dataset17h791d9ef072e09547E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %.val1 = load i32, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2 = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load i64, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8088
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h86caac44ece2a52bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.g)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8089)
  %i.h = load i64, ptr %i.c, align 8, !range !26, !alias.scope !8089, !noalias !8090, !noundef !9
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4b51a43e29027f7fE.exit.i", !prof !12

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8091
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !8089, !noalias !8090, !nonnull !9, !align !10, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !18, !alias.scope !8089, !noalias !8090, !noundef !9
  store ptr %i.k, ptr %i.a, align 8, !noalias !8091
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.m, ptr %i.n, align 8, !noalias !8091
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @242, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #33
          to label %bb.d unwind label %bb.c, !noalias !8092

end_hunk_0
