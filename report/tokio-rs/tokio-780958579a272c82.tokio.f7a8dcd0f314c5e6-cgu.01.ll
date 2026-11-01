Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.01?download=true
inline.NumInlined: 779
inline.NumDeleted: 324
begin_hunk_0_@_RNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNvXsh_NtNtBb_3net4addrTRetENtNtB1I_6sealed17ToSocketAddrsPriv15to_socket_addrs0ENtNtB13_8schedule16BlockingScheduleE9set_stageBb_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXsh_NtNtCslghKHtsL3a4_5tokio3net4addrTRetENtNtBJ_6sealed17ToSocketAddrsPriv15to_socket_addrs0EBN_.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXsh_NtNtBK_3net4addrTRetENtNtB2c_6sealed17ToSocketAddrsPriv15to_socket_addrs0EEEBK_.exit unwind label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXsh_NtNtBK_3net4addrTRetENtNtB2c_6sealed17ToSocketAddrsPriv15to_socket_addrs0EEEBK_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXsh_NtNtCslghKHtsL3a4_5tokio3net4addrTRetENtNtBJ_6sealed17ToSocketAddrsPriv15to_socket_addrs0EBN_.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.i, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.m = invoke noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context19set_current_task_id(i64 noundef %i.c)
          to label %.thread unwind label %bb.h    ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXsh_NtNtBK_3net4addrTRetENtNtB2c_6sealed17ToSocketAddrsPriv15to_socket_addrs0EEEBK_.exit: ; preds = %bb.b, %_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXsh_NtNtCslghKHtsL3a4_5tokio3net4addrTRetENtNtBJ_6sealed17ToSocketAddrsPriv15to_socket_addrs0EBN_.exit.i.i.i, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.n = tail call noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context19set_current_task_id(i64 noundef %i.c) ; 0 uses
  ret void

bb.h:                                             ; preds = %.body, %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.thread:                                          ; preds = %.body, %bb.i
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXsh_NtNtBK_3net4addrTRetENtNtB2c_6sealed17ToSocketAddrsPriv15to_socket_addrs0EEEBK_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #21
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !align !9, !noundef !8 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit unwind label %bb.c, !inline_history !1665

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.b
  store ptr %1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !align !9, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RNCNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB7_7Trailer9wake_join0Bd_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
  unreachable

_RNCNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB7_7Trailer9wake_join0Bd_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.f = load ptr, ptr %i.c, align 8, !noundef !8
  tail call void %i.e(ptr noundef %i.f), !inline_history !1666
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB5_7Trailer9will_wake(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !align !9, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = icmp eq ptr %i.d, %i.f
  %i.h = load ptr, ptr %1, align 8, !nonnull !8, !align !9
  %i.i = icmp eq ptr %i.b, %i.h
  %.sroa.0.0 = select i1 %i.g, i1 %i.i, i1 false
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleE3runB9_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask4poll(ptr noundef nonnull %0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit

bb.b:                                             ; preds = %.noexc
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit: ; preds = %bb.b, %.noexc
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit6: ; preds = %.noexc4, %bb.d
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.c:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.b = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.c
  br i1 %i.b, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit6

bb.d:                                             ; preds = %.noexc4
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit6 unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsc_NtNtCslghKHtsL3a4_5tokio7runtime4taskINtB5_11UnownedTaskNtNtNtB7_8blocking8schedule16BlockingScheduleE9into_taskB9_(ptr noundef nonnull returned %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = invoke noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  br i1 %i.c, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  ret ptr %0

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio7runtime4task4TaskNtNtNtBG_8blocking8schedule16BlockingScheduleEEBI_.exit: ; preds = %.noexc, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCslghKHtsL3a4_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = load i16, ptr %1, align 8, !range !1667, !noundef !8
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_6future6future6Future4pollBb_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.f = load i64, ptr %i.b, align 8, !range !18, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.43.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i16 2, ptr %1, align 8
  store i32 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.j, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.sroa.0.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.sroa.3.0.copyload = load ptr, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.2.sroa.4.0.copyload = load i64, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.2.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.2.sroa.3.0.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.2.sroa.4.0.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  %i.i = call noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  store i32 2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.2.sroa.5.0.copyload = load i64, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.j = icmp eq ptr %.sroa.2.sroa.0.0.copyload, null
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.sroa.3.0.copyload) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.39.0 = phi ptr [ %.sroa.2.sroa.3.0.copyload, %bb.i ], [ %.sroa.2.sroa.0.0.copyload, %bb.h ]
  %.sroa.05.0 = phi i32 [ 2, %bb.i ], [ 1, %bb.h ]
  %.sroa.412.sroa.0.0 = phi ptr [ undef, %bb.i ], [ %.sroa.2.sroa.3.0.copyload, %bb.h ]
  %.sroa.412.sroa.2.0 = phi i64 [ undef, %bb.i ], [ %.sroa.2.sroa.4.0.copyload, %bb.h ]
  %.sroa.412.sroa.3.0 = phi i64 [ undef, %bb.i ], [ %.sroa.2.sroa.5.0.copyload, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %.sroa.05.0, ptr %0, align 8
  %.sroa.39.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.39.0, ptr %.sroa.39.0..sroa_idx10, align 8
  %.sroa.412.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.412.sroa.0.0, ptr %.sroa.412.0..sroa_idx13, align 8
  %.sroa.412.sroa.2.0..sroa.412.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.412.sroa.2.0, ptr %.sroa.412.sroa.2.0..sroa.412.0..sroa_idx13.sroa_idx, align 8
  %.sroa.412.sroa.3.0..sroa.412.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.412.sroa.3.0, ptr %.sroa.412.sroa.3.0..sroa.412.0..sroa_idx13.sroa_idx, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8 ; 5 uses
  %.not = icmp eq ptr %i.b, null                  ; 3 uses
  %. = select i1 %.not, i64 18, i64 13
  %.2 = select i1 %.not, ptr @40, ptr @41
  %i.c = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.2, i64 noundef %.)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.e, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_(ptr %i.b, ptr %.val5) #21
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8            ; 6 uses
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.g = load ptr, ptr %.val3, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.g(ptr noundef nonnull %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !11, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEBJ_.exit: ; preds = %bb.c, %bb.f, %bb.g
  ret ptr %i.c

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio6signal12reusable_boxINtB5_17ReusableBoxFutureINtNtNtB9_4sync5watch8ReceiveruEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.d(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtB4_6marker4SendEL_EEB1U_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtB4_6marker4SendEL_EEB1U_.exit

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCs3oUPovFnLWP_4core6future6future6Futurep6OutputINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB1H_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #19
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCs3oUPovFnLWP_4core6future6future6Futurep6OutputINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB1H_.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCs3oUPovFnLWP_4core6future6future6Futurep6OutputINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropB1H_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruENtNtB4_6marker4SendEL_EEB1U_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !8
  %i.b = tail call noundef i64 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context19set_current_task_id(i64 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtNtNtCslghKHtsL3a4_5tokio4sync5watch5errorNtB5_9RecvErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @_RNvXs_NtNtNtCslghKHtsL3a4_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 4 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !23, !noundef !8
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1672, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1672, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1672
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCslghKHtsL3a4_5tokio.exit

bb.d:                                             ; preds = %bb.b
  store i16 2, ptr %0, align 4, !alias.scope !1671
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.i, i64 32, i1 false)
  store i16 2, ptr %i.i, align 4
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCslghKHtsL3a4_5tokio.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCslghKHtsL3a4_5tokio.exit: ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtNtCslghKHtsL3a4_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !23, !noundef !8
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
end_hunk_0
