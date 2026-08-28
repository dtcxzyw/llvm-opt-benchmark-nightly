Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.114?download=true
inline.NumInlined: 605
inline.NumDeleted: 263
begin_hunk_0_@_RINvMs_NtCsjRw7JfgqtyF_9indicatif12progress_barNtB5_11ProgressBar11set_messageNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant:bb.a
  unreachable

bb.p:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i2.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %.body.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i2.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit3.i unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit.sink.split.i: ; preds = %bb.u, %bb.m
  %.sink.i = phi ptr [ %i.ai, %bb.u ], [ %i.z, %bb.m ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjRw7JfgqtyF_9indicatif5state17TabExpandedStringECsl8OoimOLbh_6qdrant.exit unwind label %bb.y

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i2.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.ae, %bb.q ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #19
          to label %.body8 unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit3.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i2.i, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %.val.i.i.i = load i32, ptr %i.aj, align 8, !alias.scope !630, !noundef !9
  switch i32 %.val.i.i.i, label %bb.t [
    i32 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjRw7JfgqtyF_9indicatif5state17TabExpandedStringECsl8OoimOLbh_6qdrant.exit
    i32 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjRw7JfgqtyF_9indicatif5state17TabExpandedStringECsl8OoimOLbh_6qdrant.exit
    i32 0, label %bb.u
  ], !prof !635

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit3.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #21
          to label %.noexc10 unwind label %bb.y

.noexc10:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit3.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit.sink.split.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %.body8 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.x:                                             ; preds = %.body.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.y:                                             ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit.sink.split.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body8

.body8:                                           ; preds = %bb.n, %.body.i, %bb.v, %bb.y
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.an, %bb.y ], [ %i.ak, %bb.v ], [ %i.ac, %bb.n ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjRw7JfgqtyF_9indicatif5state17TabExpandedStringECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit3.i, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsl8OoimOLbh_6qdrant.exit.sink.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.z unwind label %bb.i       ; 2 uses

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjRw7JfgqtyF_9indicatif5state17TabExpandedStringECsl8OoimOLbh_6qdrant.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aq = extractvalue { i64, i32 } %i.ao, 0
  %i.ar = extractvalue { i64, i32 } %i.ao, 1
  invoke void @_RNvMNtCsjRw7JfgqtyF_9indicatif5stateNtB2_8BarState24update_estimate_and_draw(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %i.ap, i64 noundef %i.aq, i32 noundef %i.ar)
          to label %bb.aa unwind label %bb.i

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc11, !prof !19

.noexc11:                                         ; preds = %bb.ab
  %i.aw = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20
  br i1 %i.aw, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc11
  store atomic i8 1, ptr %i.as monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ac, %.noexc11, %bb.ab, %bb.aa
  %i.ax = atomicrmw xchg ptr %i.r, i32 0 release, align 4
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsjRw7JfgqtyF_9indicatif5state8BarStateEECsl8OoimOLbh_6qdrant.exit, !prof !10

bb.ad:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsjRw7JfgqtyF_9indicatif5state8BarStateEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsjRw7JfgqtyF_9indicatif5state8BarStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ad, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.ae:                                            ; preds = %bb.h, %.thread19
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread:                                          ; preds = %bb.h, %.thread19
  %.pn318 = phi { ptr, i32 } [ %.pn, %bb.h ], [ %eh.lpad-body22, %.thread19 ]
  resume { ptr, i32 } %.pn318

.thread19:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %i.n, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
          to label %.thread unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2WNwEIJRUGR_15futures_channel4mpsc7channelINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = icmp ult i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !636
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 32, i64 noundef range(i64 1, 9) 8) #16, !noalias !636 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queue4NodeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEE3newCsl8OoimOLbh_6qdrant.exit, !prof !8

.noexc:                                           ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17
  unreachable

common.resume:                                    ; preds = %.body48, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant.exit, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.j, %.body48 ], [ %i.u, %bb.o ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queue4NodeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.h, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !639
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed = tail call align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 16, i64 8) ; 3 uses
  %i.i = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queue4NodeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEE3newCsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #17
          to label %.noexc53 unwind label %.body48

.noexc53:                                         ; preds = %bb.d
  unreachable

.body48:                                          ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEENtNtNtB18_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.n

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queue4NodeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEE3newCsl8OoimOLbh_6qdrant.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -9223372036854775808, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !642
  %i.m = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 96, i64 noundef range(i64 1, 9) 8) #16, !noalias !642 ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEEE3newCsl8OoimOLbh_6qdrant.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #17
          to label %.noexc57 unwind label %bb.g

.noexc57:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #19
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEEE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEEE3newCsl8OoimOLbh_6qdrant.exit
  store ptr %i.m, ptr %i.b, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !645
  %i.s = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 48, i64 noundef range(i64 1, 9) 8) #16, !noalias !645 ; 8 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.m, !prof !8

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #17
          to label %.noexc59 unwind label %.body

.noexc59:                                         ; preds = %bb.j
  unreachable

.body:                                            ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !648
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorIBv_ShEEEEE3newCsl8OoimOLbh_6qdrant.exit
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB7_5boxed3BoxShEEEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  store i64 1, ptr %i.s, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx69, align 8
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 0, ptr %.sroa.670.0..sroa_idx, align 4
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr null, ptr %.sroa.772.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.524.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.o, %bb.l, %.body48
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.body, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.z = load ptr, ptr %i.d, align 8, !alias.scope !659, !nonnull !9, !noundef !9
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !659
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.o, label %common.resume

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtB4_2io6cursor6CursorINtNtBG_5boxed3BoxShEEEEECsl8OoimOLbh_6qdrant.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB7_5boxed3BoxShEEEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2WNwEIJRUGR_15futures_channel4mpsc7channelzECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = icmp ult i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.f = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #16 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #17
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 0, ptr %i.f, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.h, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !660
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed = tail call align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 16, i64 8) ; 3 uses
  %i.i = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #17
          to label %.noexc unwind label %.body49

.noexc:                                           ; preds = %bb.e
  unreachable

.body49:                                          ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queueINtB5_5QueuezENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.o

bb.f:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -9223372036854775808, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !663
  %i.m = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 96, i64 noundef range(i64 1, 9) 8) #16, !noalias !663 ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEE3newCsl8OoimOLbh_6qdrant.exit, !prof !8

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #17
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #19
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body49, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant.exit, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.j, %.body49 ], [ %i.u, %bb.p ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEE3newCsl8OoimOLbh_6qdrant.exit
  store ptr %i.m, ptr %i.b, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !666
  %i.s = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 48, i64 noundef range(i64 1, 9) 8) #16, !noalias !666 ; 8 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.n, !prof !8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #17
          to label %.noexc57 unwind label %.body

.noexc57:                                         ; preds = %bb.k
  unreachable

.body:                                            ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !669
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEE3newCsl8OoimOLbh_6qdrant.exit
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx63, align 8
  %.sroa.6.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx64, align 4
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr null, ptr %.sroa.766.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.524.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.p, %bb.m, %.body49
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.body, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.z = load ptr, ptr %i.d, align 8, !alias.scope !680, !nonnull !9, !noundef !9
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !680
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.p, label %common.resume

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEEECsl8OoimOLbh_6qdrant.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs2WNwEIJRUGR_15futures_channel4mpsc12BoundedInnerzEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslWa2ydkAqSs_12actix_router8resource14PatternSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

end_hunk_0
