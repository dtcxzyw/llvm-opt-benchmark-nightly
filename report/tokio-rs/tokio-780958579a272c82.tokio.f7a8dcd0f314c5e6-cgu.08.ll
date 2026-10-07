Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.08?download=true
inline.NumInlined: 381
inline.NumDeleted: 171
begin_hunk_0_@_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready:bb.a
  %.sroa.33.0.i.i.i = phi i8 [ %i.j, %bb.f ], [ %i.i, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.h, align 1
  %i.k = zext i8 %i.i to i16
  %i.l = shl nuw i16 %i.k, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.i.i.i = phi i16 [ %i.l, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.i.i7.i = phi i8 [ 0, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i8 %i.f to i16
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i16 %.sroa.4.0.i.i.i, %.sroa.3.0.insert.ext.i.i.i
  %.sroa.3.0.insert.ext.i = zext i16 %.sroa.3.0.insert.insert.i.i.i to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %.sroa.3.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %.sroa.0.0.i.i7.i to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.m = trunc nuw i8 %.sroa.0.0.i.i7.i to i1
  br i1 %i.m, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %i.n, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

.thread:                                          ; preds = %bb.a, %bb.h
  %i.o = phi i24 [ %.sroa.0.0.insert.insert.i, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.sroa.021.2.extract.shift = lshr i24 %i.o, 16
  %.sroa.021.2.extract.trunc = trunc nuw i24 %.sroa.021.2.extract.shift to i8 ; 2 uses
  %.sroa.021.1.extract.shift = lshr i24 %i.o, 8   ; 2 uses
  %.sroa.021.1.extract.trunc = trunc i24 %.sroa.021.1.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo14poll_readiness(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 128 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.n, %.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_(i8 %.sroa.021.1.extract.trunc, i8 %.sroa.021.2.extract.trunc) #25
          to label %bb.t unwind label %bb.s

bb.k:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.u = load i8, ptr %i.t, align 1, !range !18, !noundef !8 ; 2 uses
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(9) %i.a, i64 9, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = trunc nuw i8 %i.u to i1
  br i1 %i.x, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.01, i64 9, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, i64 6, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.49.0..sroa_idx, align 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

bb.n:                                             ; preds = %bb.m
  %i.y = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 56) #26
          to label %_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration4gone.exit unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34: ; preds = %bb.i, %bb.o, %bb.p, %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit
  ret void

_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration4gone.exit: ; preds = %bb.n
  store ptr %i.y, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 2, ptr %.sroa.46.0..sroa_idx, align 1
  br label %bb.o

bb.o:                                             ; preds = %_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration4gone.exit, %bb.l
  %i.z = trunc i24 %.sroa.021.1.extract.shift to i1
  br i1 %i.z, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

bb.p:                                             ; preds = %bb.o
  %i.aa = load i8, ptr %i.c, align 8, !range !18, !noalias !611, !noundef !8
  switch i8 %i.aa, label %default.unreachable [
    i8 0, label %bb.r
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34
    i8 1, label %bb.q
  ], !prof !19

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_), !noalias !611
  store i8 0, ptr %i.c, align 8, !noalias !611
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i8 1, ptr %i.ab, align 4, !noalias !611
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 69
  store i8 %.sroa.021.2.extract.trunc, ptr %i.ac, align 1, !noalias !611
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4task4coop16RestoreOnPendingEBH_.exit34

bb.s:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB4_11ScheduledIo15clear_readiness(ptr noundef nonnull align 128 %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration15poll_read_ready(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration16poll_write_ready(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration10poll_ready(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !8
  %.sroa.0.0.v = select i1 %i.c, i64 352, i64 560
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.v
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle2io(ptr noundef nonnull align 8 %.sroa.0.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  ret ptr %i.e
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared15registered_when(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared19might_be_registered(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle12mark_pending(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.e ] ; 5 uses
  %i.d = icmp ult i64 %.sroa.03.0.i, -2
  br i1 %i.d, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 127 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %.sroa.03.0.i, %1
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = cmpxchg weak ptr %i.b, i64 %.sroa.03.0.i, i64 -2 acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %.sroa.03.0.i, %bb.d ], [ -1, %bb.e ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i64 %.sink, ptr %i.i monotonic, align 8
  %2 = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %2, i64 %.sroa.03.0.i, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle14set_expiration(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store atomic i64 %1, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i64 %1, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle15registered_when(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { ptr, ptr } @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle4fire(ptr nofree noundef nonnull captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %1, ptr %i.d, align 8
  store atomic i64 -1, ptr %i.a release, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = atomicrmw or ptr %i.e, i64 2 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !align !12, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  store ptr null, ptr %i.h, align 8
  %i.l = atomicrmw xchg ptr %i.e, i64 0 release, align 8 ; 0 uses
  br label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit

_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_9StateCell4fire.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ undef, %bb.a ], [ %i.k, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -1) i64 @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle9sync_when(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared9sync_when.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared9sync_when.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i64 %i.c, ptr %i.d monotonic, align 8
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCslghKHtsL3a4_5tokio2io4util30poll_proceed_and_make_progress(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !8
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
  store i8 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.e = load i8, ptr %i.d, align 4, !range !20, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 69 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !614
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit

bb.f:                                             ; preds = %bb.d
  %i.i = add i8 %i.h, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.33.0.i.i.i = phi i8 [ %i.i, %bb.f ], [ %i.h, %bb.c ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.g, align 1
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs3oUPovFnLWP_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_EB10_.exit: ; preds = %bb.e, %bb.g, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ true, %bb.e ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio2io6stderr6stderr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrE3newB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 @_RNvNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stderr8INSTANCE)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio2io6stdout6stdout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stdout()
  tail call void @_RNvMs4_NtNtCslghKHtsL3a4_5tokio2io8blockingINtB5_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutE3newB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop14register_waker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !12, !noundef !8
  tail call void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context5defer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop3set(i1 noundef zeroext %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !8
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetuNCNvNtNtB10_4task4coop3set0E0uEB10_.exit
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
  store i8 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i8 %i.a, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 69
  store i8 %1, ptr %i.f, align 1
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetuNCNvNtNtB10_4task4coop3set0E0uEB10_.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetuNCNvNtNtB10_4task4coop3set0E0uEB10_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvNtNtCslghKHtsL3a4_5tokio4task4coop4stop() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslghKHtsL3a4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !8
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNtNtB10_4task4coop6BudgetNCNvB29_4stop0E0B27_EB10_.exit
    i8 2, label %bb.c
    i8 1, label %bb.b
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCslghKHtsL3a4_5tokio7runtime7context7ContextEB1b_)
end_hunk_0
