Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/webtransport_tests-0e2aabe2d239fb5e.webtransport_tests.8ac5e6551a5b8a4b-cgu.2?download=true
inline.NumInlined: 158
inline.NumDeleted: 82
begin_hunk_0_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEE9drop_slowCsbUGvHzNpYtH_18webtransport_tests:bb.a
  %i.n = icmp eq ptr %.val2.i, inttoptr (i64 -1 to ptr)
  br i1 %i.n, label %.body, label %bb.j

bb.j:                                             ; preds = %.body.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !183
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 64, i64 noundef 8) #13, !noalias !183
  br label %.body

bb.l:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB1t_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEEECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.h, %bb.g, %bb.c
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !182, !nonnull !8, !noundef !8 ; 3 uses
  %i.s = icmp eq ptr %.val.i, inttoptr (i64 -1 to ptr)
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtNtNtBK_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEECsbUGvHzNpYtH_18webtransport_tests.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB1t_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEEECsbUGvHzNpYtH_18webtransport_tests.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !184
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtNtNtBK_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEECsbUGvHzNpYtH_18webtransport_tests.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #13, !noalias !184
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtNtNtBK_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEECsbUGvHzNpYtH_18webtransport_tests.exit

bb.o:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %i.x = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit, label %bb.p

bb.p:                                             ; preds = %.body
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 64, 81) 80, i64 noundef 8) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtNtNtBK_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEECsbUGvHzNpYtH_18webtransport_tests.exit: ; preds = %bb.n, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB1t_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEEECsbUGvHzNpYtH_18webtransport_tests.exit.i
  %i.ab = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit2, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtNtNtBK_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEECsbUGvHzNpYtH_18webtransport_tests.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit2

bb.s:                                             ; preds = %bb.r
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 64, 81) 80, i64 noundef 8) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtBI_15futures_ordered12OrderWrapperINtNtNtNtBK_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEECsbUGvHzNpYtH_18webtransport_tests.exit, %bb.r, %bb.s
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtB1h_15futures_ordered12OrderWrapperINtNtNtNtB1j_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEERNtNtBG_5alloc6GlobalEECsbUGvHzNpYtH_18webtransport_tests.exit: ; preds = %bb.q, %bb.p, %.body
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_6SenderuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  store atomic i8 1, ptr %i.f seq_cst, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = atomicrmw xchg ptr %i.g, i8 1 seq_cst, align 1
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.e, align 8, !align !9, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not8.i = icmp eq ptr %i.i, null
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  invoke void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  call void %i.m(ptr noundef %i.k), !inline_history !185
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  invoke void %i.p(ptr noundef %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbUGvHzNpYtH_18webtransport_tests.exit.i unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.aa, %bb.k ]
  resume { ptr, i32 } %.pn.i

bb.h:                                             ; preds = %bb.e, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.s = atomicrmw xchg ptr %i.r, i8 1 seq_cst, align 1
  %.not9.i = icmp eq i8 %i.s, 0
  br i1 %.not9.i, label %bb.i, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE7drop_txCsbUGvHzNpYtH_18webtransport_tests.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.t, ptr %i.a, align 8
  %i.u = load ptr, ptr %i.t, align 8, !align !9, !noundef !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  store ptr null, ptr %i.t, align 8
  %i.x = icmp eq ptr %i.u, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !8, !noundef !8
  invoke void %i.z(ptr noundef %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i unwind label %bb.k, !inline_history !2

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsbUGvHzNpYtH_18webtransport_tests.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.j, %bb.i
  call void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE7drop_txCsbUGvHzNpYtH_18webtransport_tests.exit

_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE7drop_txCsbUGvHzNpYtH_18webtransport_tests.exit: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs8_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 66 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !noalias !190
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !190, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !190, !nonnull !8, !align !9, !noundef !8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !190, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !190, !noundef !8
  %i.l = tail call { ptr, ptr } %i.i(ptr noundef %i.k), !noalias !190, !inline_history !188 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 5 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1, !noalias !190
  %.not6.not.i = icmp eq i8 %i.p, 0
  br i1 %.not6.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !190
  store ptr %i.d, ptr %i.b, align 8, !noalias !190
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %.val10.i = load ptr, ptr %i.d, align 8, !noalias !190, !align !9, !noundef !8 ; 2 uses
  %i.q = getelementptr i8, ptr %i.c, i64 24       ; 3 uses
  %i.r = icmp eq ptr %.val10.i, null
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val11.i = load ptr, ptr %i.q, align 8, !noalias !190
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !190, !nonnull !8, !noundef !8
  invoke void %i.t(ptr noundef %.val11.i)
          to label %bb.h unwind label %bb.e, !noalias !190, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.d, align 8, !noalias !190
  store ptr %i.n, ptr %i.q, align 8, !noalias !190
  invoke void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i unwind label %bb.g, !noalias !190

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !190, !nonnull !8, !noundef !8
  tail call void %i.w(ptr noundef %i.n), !noalias !190, !inline_history !189
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !190
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %i.d, align 8, !noalias !190
  store ptr %i.n, ptr %i.q, align 8, !noalias !190
  call void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !190
  %i.y = load atomic i8, ptr %i.e seq_cst, align 2, !noalias !190
  %.not7.i = icmp eq i8 %i.y, 0
  br i1 %.not7.i, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE4recvCsbUGvHzNpYtH_18webtransport_tests.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.aa = atomicrmw xchg ptr %i.z, i8 1 seq_cst, align 1, !noalias !190
  %.not8.i = icmp eq i8 %i.aa, 0
  br i1 %.not8.i, label %bb.j, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE4recvCsbUGvHzNpYtH_18webtransport_tests.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  store ptr %i.z, ptr %i.a, align 8, !noalias !190
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 65 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !range !10, !noalias !190, !noundef !8
  store i8 0, ptr %i.ab, align 1, !noalias !190
  call void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionuEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !190
  %not..i = xor i8 %i.ac, 1
  br label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE4recvCsbUGvHzNpYtH_18webtransport_tests.exit

_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE4recvCsbUGvHzNpYtH_18webtransport_tests.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i = phi i8 [ 2, %bb.h ], [ %not..i, %bb.j ], [ 1, %bb.i ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperINtNtNtNtBQ_6future10try_future11into_future10IntoFutureINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8ReceiveruEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 8) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEENtNtNtB2m_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.b, ptr %i.d, align 8
  %i.e = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 9 uses
  %i.g = load i64, ptr %.val, align 8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !10, !noundef !8
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 576460752303423488) %i.b, i64 2)
  %.not27.i = icmp samesign ult i64 %i.b, 3
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.16.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.01.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %i.ab, %bb.e ] ; 4 uses
  %i.k = add nsw i64 %i.b, -1
  %i.l = icmp eq i64 %.sroa.01.0.lcssa.i, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEE15sift_down_rangeCsbUGvHzNpYtH_18webtransport_tests.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = icmp ult i64 %.sroa.01.0.lcssa.i, %i.b
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.01.0.lcssa.i ; 2 uses
  %.val15.i = load i64, ptr %i.n, align 8, !noundef !8
  %i.o = icmp slt i64 %.val15.i, %i.g
  br i1 %i.o, label %bb.d, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEE15sift_down_rangeCsbUGvHzNpYtH_18webtransport_tests.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.16.0.lcssa.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  br label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEE15sift_down_rangeCsbUGvHzNpYtH_18webtransport_tests.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.01.029.i = phi i64 [ %i.ab, %bb.e ], [ 1, %bb.b ] ; 3 uses
  %.sroa.16.028.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.01.029.i
  %i.r = add nuw nsw i64 %.sroa.01.029.i, 1       ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.b
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.r
  %.val.i = load i64, ptr %i.q, align 8, !noundef !8
  %.val13.i = load i64, ptr %i.t, align 8, !noundef !8
  %i.u = icmp sle i64 %.val13.i, %.val.i
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %.sroa.01.029.i, %i.v    ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.b
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.w ; 2 uses
  %.val17.i = load i64, ptr %i.y, align 8, !noundef !8
  %.not24.i = icmp slt i64 %.val17.i, %i.g
  br i1 %.not24.i, label %bb.e, label %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEE15sift_down_rangeCsbUGvHzNpYtH_18webtransport_tests.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.16.028.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.aa = shl nuw nsw i64 %i.w, 1                 ; 2 uses
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %.not.not.i = icmp samesign ult i64 %i.aa, %i.j
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEE15sift_down_rangeCsbUGvHzNpYtH_18webtransport_tests.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %bb.c, %bb.d
  %.sroa.16.028.lcssa.sink.i = phi i64 [ %.sroa.16.0.lcssa.i, %._crit_edge.i ], [ %.sroa.01.0.lcssa.i, %bb.d ], [ %.sroa.16.0.lcssa.i, %bb.c ], [ %.sroa.16.028.i, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.16.028.lcssa.sink.i ; 2 uses
  store i64 %i.g, ptr %i.ac, align 8
  %.sroa.32.24..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i8 %i.i, ptr %.sroa.32.24..sroa_idx20.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCsl9hx9jpF0W9_12futures_util6stream15futures_ordered12OrderWrapperINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledEEE15sift_down_rangeCsbUGvHzNpYtH_18webtransport_tests.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  store atomic i8 1, ptr %i.e seq_cst, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = atomicrmw xchg ptr %i.f, i8 1 seq_cst, align 1
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !align !9, !noundef !8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  invoke void @_RNvXs3_NtCsgV0iE8Xkxiy_15futures_channel4lockINtB5_7TryLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtB10_4task4wake5WakerEENtNtNtB10_3ops4drop4Drop4dropCsbUGvHzNpYtH_18webtransport_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp eq ptr %i.i, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  call void %i.n(ptr noundef %i.k), !inline_history !191
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbUGvHzNpYtH_18webtransport_tests.exit.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1
  %.not9.i = icmp eq i8 %i.p, 0
  br i1 %.not9.i, label %bb.g, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InneruE7drop_rxCsbUGvHzNpYtH_18webtransport_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsbUGvHzNpYtH_18webtransport_tests.exit18.i: ; preds = %bb.k, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ab, %bb.k ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn.i

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq ptr %i.i, null
end_hunk_0
