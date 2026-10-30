Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.09?download=true
inline.NumInlined: 442
inline.NumDeleted: 219
begin_hunk_0_@_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext11with_config:bb.a
          to label %bb.ae unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext13from_external(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [976 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.a, ptr noundef nonnull align 8 dereferenceable(976) %3, i64 976, i1 false)
  %i.b = invoke noundef nonnull ptr @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime13from_external(i64 noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %3, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %i.a) #22
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext25handle_meets_requirements(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime25handle_meets_requirements(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(976) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = alloca [992 x i8], align 8               ; 6 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.g, ptr noundef nonnull align 8 dereferenceable(976) %1, i64 976, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !392
  %i.h = tail call noundef align 8 dereferenceable_or_null(992) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 993) 992, i64 noundef range(i64 8, 129) 8) #17, !noalias !392 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.f, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 992) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(976) %i.g)
          to label %.body6 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body6:                                           ; preds = %.body, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.h ]
  %i.l = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !393
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1h_.exit

bb.e:                                             ; preds = %.body6
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1h_.exit unwind label %bb.n

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %i.h, ptr noundef nonnull align 8 dereferenceable(992) %i.b, i64 992, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core6commonNtB2_9XetCommon3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.v, %bb.k ] ; 2 uses
  %i.p = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !394
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %.body6

bb.h:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #24
          to label %.body6 unwind label %bb.n

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !395
  %i.t = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 993) 104, i64 noundef range(i64 8, 129) 8) #17, !noalias !395 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.m, !prof !4

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #21
          to label %.noexc11 unwind label %bb.k

.noexc11:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsarFSTFZzLuM_11xet_runtime4core6common9XetCommonEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #22
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %2, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.h, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1h_.exit: ; preds = %.body6, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [976 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_configNtB2_9XetConfig3new(ptr noalias nofree noundef nonnull sret([976 x i8]) align 8 captures(none) dereferenceable(976) %i.a)
  call void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime4core7contextNtB2_10XetContext11with_config(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(976) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE7upgradeBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsarFSTFZzLuM_11xet_runtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.c, %bb.b ], [ %i.i, %bb.e ] ; 4 uses
  %i.d = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %i.d, label %_RINvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsarFSTFZzLuM_11xet_runtime.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %.sroa.06.0.i, 0
  br i1 %i.e, label %1, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %.sroa.06.0.i, 1
  %i.g = cmpxchg weak ptr %i.a, i64 %.sroa.06.0.i, i64 %i.f acquire monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  br i1 %i.h, label %_RINvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsarFSTFZzLuM_11xet_runtime.exit, label %bb.c

1:                                                ; preds = %bb.d
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
  unreachable

_RINvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c, %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgE4recvCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i64, ptr %1, align 8, !range !14, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.c, label %default.unreachable12 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.m
    i64 5, label %bb.q
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  call void @_RNvMs_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgE4recvCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 128 %i.e, i64 undef, i32 noundef -1)
  br label %thread-pre-split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !noundef !5
  call void @_RNvMs1_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4listINtB5_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgE4recvCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 128 %i.f, i64 undef, i32 noundef -1)
  br label %thread-pre-split

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !noundef !5
  call void @_RNvMs1_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgE4recvCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.g, i64 undef, i32 noundef -1)
  br label %thread-pre-split

bb.e:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 1, !noalias !400
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsjfHCj4Qo55Q_17crossbeam_channel5utils11sleep_until(i64 undef, i32 noundef -1), !noalias !400
  br label %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2atNtB2_7Channel4recv.exit

bb.g:                                             ; preds = %bb.j, %.preheader.i
  %i.m = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !400 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { i64, i32 } %i.m, 1        ; 3 uses
  %i.p = load i64, ptr %i.i, align 8, !noalias !400, !noundef !5 ; 3 uses
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %.split.i, label %bb.h

.split.i:                                         ; preds = %bb.g
  %i.r = icmp ult i32 %i.o, 1000000000
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i32, ptr %i.l, align 8, !range !15, !noalias !400, !noundef !5 ; 2 uses
  %.not23.i = icmp samesign ult i32 %i.o, %i.s
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not22.i = icmp slt i64 %i.n, %i.p
  br i1 %.not22.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load i32, ptr %i.l, align 8, !range !15, !noalias !400
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %.split.i
  %i.t = atomicrmw xchg ptr %i.j, i8 1 seq_cst, align 1, !noalias !400
  %.not21.i = icmp eq i8 %i.t, 0
  br i1 %.not21.i, label %bb.k, label %bb.l, !prof !16

bb.j:                                             ; preds = %._crit_edge.i, %.split.i
  %i.u = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.v = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.p, i32 noundef %i.u, i64 noundef %i.n, i32 noundef %i.o), !noalias !400 ; 2 uses
  %i.w = extractvalue { i64, i32 } %i.v, 0
  %i.x = extractvalue { i64, i32 } %i.v, 1
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef %i.w, i32 noundef %i.x), !noalias !400
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.i, align 8, !noalias !400, !noundef !5
  %i.z = load i32, ptr %i.l, align 8, !range !15, !noalias !400, !noundef !5
  br label %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2atNtB2_7Channel4recv.exit

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsjfHCj4Qo55Q_17crossbeam_channel5utils11sleep_until(i64 undef, i32 noundef -1), !noalias !400
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25, !noalias !400
  unreachable

_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2atNtB2_7Channel4recv.exit: ; preds = %bb.f, %bb.k
  %.sink.i = phi i32 [ %i.z, %bb.k ], [ -1, %bb.f ]
  %.sroa.0.sroa.0.0.insert.insert = phi i64 [ %i.y, %bb.k ], [ 0, %bb.f ] ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %i.ae = tail call { i64, i32 } @_RINvNtNtCsfzErqAD0wmd_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsG258MDvU3F_3std4time7InstantECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %i.ab), !noalias !401 ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 7 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 5 uses
  %i.ah = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !401 ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 4 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !401
  %i.ak = icmp eq i64 %i.ai, %i.af
  %i.al = icmp samesign ult i32 %i.aj, %i.ag
  %i.am = icmp slt i64 %i.ai, %i.af
  %i.an = select i1 %i.ak, i1 %i.al, i1 %i.am     ; 3 uses
  %..i.i = select i1 %i.an, i32 %i.ag, i32 %i.aj
  %.2.i.i = select i1 %i.an, i64 %i.af, i64 %i.ai
  %i.ao = load i64, ptr %i.ac, align 8, !noalias !401, !noundef !5
  %i.ap = load i32, ptr %i.ad, align 8, !range !15, !noalias !401, !noundef !5
  %i.aq = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %.2.i.i, i32 noundef %..i.i, i64 noundef %i.ao, i32 noundef %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16), !noalias !401 ; 2 uses
  %i.ar = extractvalue { i64, i32 } %i.aq, 0
  %i.as = extractvalue { i64, i32 } %i.aq, 1
  call void @_RINvNtNtCsfzErqAD0wmd_15crossbeam_utils6atomic11atomic_cell28atomic_compare_exchange_weakNtNtCsG258MDvU3F_3std4time7InstantECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ab, i64 noundef %i.af, i32 noundef %i.ag, i64 noundef %i.ar, i32 noundef %i.as), !noalias !401
  %i.at = load i64, ptr %i.a, align 8, !range !10, !noalias !401, !noundef !5
  %i.au = icmp eq i64 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !401
  br i1 %i.au, label %bb.o, label %bb.n

bb.o:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.p, label %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tickNtB2_7Channel4recv.exit

bb.p:                                             ; preds = %bb.o
  %i.av = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.af, i32 noundef %i.ag, i64 noundef %i.ai, i32 noundef %i.aj), !noalias !401 ; 2 uses
  %i.aw = extractvalue { i64, i32 } %i.av, 0
  %i.ax = extractvalue { i64, i32 } %i.av, 1
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef %i.aw, i32 noundef %i.ax), !noalias !401
  br label %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tickNtB2_7Channel4recv.exit

_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tickNtB2_7Channel4recv.exit: ; preds = %bb.o, %bb.p
  store i64 %i.af, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtCsjfHCj4Qo55Q_17crossbeam_channel5utils11sleep_until(i64 undef, i32 noundef -1)
  br label %bb.s

thread-pre-split:                                 ; preds = %bb.b, %bb.c, %bb.d
  %.pr = load i64, ptr %i.b, align 8
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tickNtB2_7Channel4recv.exit, %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2atNtB2_7Channel4recv.exit
  %i.ay = phi i64 [ %.pr, %thread-pre-split ], [ %i.af, %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tickNtB2_7Channel4recv.exit ], [ %.sroa.0.sroa.0.0.insert.insert, %_RNvMNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2atNtB2_7Channel4recv.exit ]
  %i.az = icmp eq i64 %i.ay, -2
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 -2, ptr %0, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiverNtCs5ZfSctYBbRf_16tracing_appender3MsgE8try_recvCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !14, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.b, label %default.unreachable9 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.j
    i64 5, label %bb.m
  ]

default.unreachable9:                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvYINtNtCskKLDkoKarTP_4core6option6OptionjENtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_valueBM_:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.y
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.i

bb.ab:                                            ; preds = %bb.x
  %i.bs = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.t, ptr %i.h, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.476.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.bu, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.480.0..sroa_idx, align 8
  store ptr @90, ptr %i.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.bv, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @12, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.032.sroa.4.0..sroa_idx, align 8
  %.sroa.032.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.032.sroa.5.0..sroa_idx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bt, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.ad:                                            ; preds = %bb.c, %bb.b, %bb.m, %bb.n, %bb.q, %bb.u, %bb.v, %bb.ab, %bb.am, %bb.ag, %bb.af
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #22
          to label %common.resume unwind label %bb.ao

.thread:                                          ; preds = %.noexc, %bb.j
  %.sroa.0.1.i111 = phi i64 [ %spec.select4.i, %bb.j ], [ 0, %.noexc ] ; 5 uses
  %.sroa.4.1.i110 = phi i64 [ %i.au, %bb.j ], [ undef, %.noexc ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.0.1.i111, ptr %i.q, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 %.sroa.4.1.i110, ptr %i.by, align 8
  %i.bz = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %.thread
  %i.cb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cb, label %bb.af [
    i8 0, label %bb.aj
    i8 1, label %bb.ag
    i8 2, label %bb.ag
  ], !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.cc = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE)
          to label %bb.ah unwind label %bb.ad     ; 2 uses

bb.ag:                                            ; preds = %bb.ae, %bb.ae, %bb.ah
  %.sroa.010.0 = phi i8 [ %i.cc, %bb.ah ], [ %i.cb, %bb.ae ], [ %i.cb, %bb.ae ]
  %i.cd = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ce = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cd, i8 noundef %.sroa.010.0)
          to label %bb.ai unwind label %bb.ad

bb.ah:                                            ; preds = %bb.af
  %i.cf = icmp eq i8 %i.cc, 0
  br i1 %i.cf, label %bb.aj, label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.ce, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ae, %.thread, %bb.an, %bb.ai
  %i.cg = phi i64 [ %.sroa.4.1.i110, %bb.ah ], [ %.sroa.4.1.i110, %bb.ae ], [ %.sroa.4.1.i110, %.thread ], [ %.pre112, %bb.an ], [ %.sroa.4.1.i110, %bb.ai ]
  %i.ch = phi i64 [ %.sroa.0.1.i111, %bb.ah ], [ %.sroa.0.1.i111, %bb.ae ], [ %.sroa.0.1.i111, %.thread ], [ %.pre, %bb.an ], [ %.sroa.0.1.i111, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106: ; preds = %bb.aj
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.i

bb.am:                                            ; preds = %bb.ai
  %i.ck = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.cm, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.456.0..sroa_idx, align 8
  store ptr @91, ptr %i.o, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.cn, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @12, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cl, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.an unwind label %bb.ad

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pre = load i64, ptr %i.q, align 8, !range !10
  %.pre112 = load i64, ptr %i.by, align 8
  br label %bb.aj

bb.ao:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvYINtNtCskKLDkoKarTP_4core6option6OptionmENtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_valueBM_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i32 noundef range(i32 0, 2) %3, i32 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 14 uses
  %i.s = alloca [8 x i8], align 4                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %1, ptr %i.u, align 8
  store i32 %3, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  store i32 %4, ptr %i.v, align 4
  %i.w = load i64, ptr %2, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.w, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.ab = invoke { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.b
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ae = invoke { i32, i32 } @_RNvXNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utilsmNtB2_19ParsableConfigValue16parse_user_valueB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %.noexc104 unwind label %bb.ac ; 2 uses

.noexc104:                                        ; preds = %bb.c
  %i.af = extractvalue { i32, i32 } %i.ae, 0
  %i.ag = trunc i32 %i.af to i1                   ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ae, 1
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 undef
  %spec.select115 = select i1 %i.ag, i32 1, i32 2
  br label %select.unfold

bb.d:                                             ; preds = %bb.a
  %i.ai = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ak, label %bb.f [
    i8 0, label %bb.i
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !11

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE) #24 ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.sroa.040.0 = phi i8 [ %i.al, %bb.f ], [ %i.ak, %bb.e ], [ %i.ak, %bb.e ]
  %i.an = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ao = tail call noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.an, i8 noundef %.sroa.040.0)
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.t, ptr %i.e, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.488.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.ar, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.492.0..sroa_idx, align 8
  store ptr @88, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.as, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @12, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.042.sroa.4.0..sroa_idx, align 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.042.sroa.5.0..sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.aq, ptr %.sroa.443.0..sroa_idx, align 8
  call void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre113 = load i32, ptr %i.s, align 4, !range !18
  %.pre114 = load i32, ptr %i.v, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.4.0 = phi i32 [ %i.ch, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106 ], [ %i.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit ], [ %4, %bb.f ], [ %4, %bb.e ], [ %4, %bb.d ], [ %.pre114, %bb.h ], [ %4, %bb.g ]
  %.sroa.0.0 = phi i32 [ %i.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106 ], [ %i.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %.pre113, %bb.h ], [ %3, %bb.g ]
  %i.au = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.av = insertvalue { i32, i32 } %i.au, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.av

select.unfold:                                    ; preds = %.noexc104, %.noexc
  %.sroa.4.1.i = phi i32 [ undef, %.noexc ], [ %spec.select, %.noexc104 ] ; 5 uses
  %.sroa.0.1.i = phi i32 [ 0, %.noexc ], [ %spec.select115, %.noexc104 ] ; 6 uses
  %.not102 = icmp eq i32 %.sroa.0.1.i, 2
  br i1 %.not102, label %bb.j, label %select.unfold.a

bb.j:                                             ; preds = %select.unfold
  %i.aw = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ax = icmp ult i64 %i.aw, 4
  br i1 %i.ax, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ay, label %bb.l [
    i8 0, label %bb.r
    i8 1, label %bb.m
    i8 2, label %bb.m
  ], !prof !11

bb.l:                                             ; preds = %bb.k
  %i.az = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE)
          to label %bb.n unwind label %bb.ac      ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.n
  %.sroa.020.0 = phi i8 [ %i.az, %bb.n ], [ %i.ay, %bb.k ], [ %i.ay, %bb.k ]
  %i.ba = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.bb = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, i8 noundef %.sroa.020.0)
          to label %bb.o unwind label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.bc = icmp eq i8 %i.az, 0
  br i1 %i.bc, label %bb.r, label %bb.m

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.r, ptr %i.k, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.t, ptr %i.bf, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.467.0..sroa_idx, align 8
  store ptr @89, ptr %i.l, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.bg, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @12, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.be, ptr %.sroa.423.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.q, %bb.o
  %i.bi = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bj = icmp ult i64 %i.bi, 3
  br i1 %i.bj, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bk, label %bb.t [
    i8 0, label %bb.x
    i8 1, label %bb.u
    i8 2, label %bb.u
  ], !prof !11

bb.t:                                             ; preds = %bb.s
  %i.bl = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE)
          to label %bb.v unwind label %bb.ac      ; 2 uses

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.v
  %.sroa.030.0 = phi i8 [ %i.bl, %bb.v ], [ %i.bk, %bb.s ], [ %i.bk, %bb.s ]
  %i.bm = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.bn = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, i8 noundef %.sroa.030.0)
          to label %bb.w unwind label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.bo = icmp eq i8 %i.bl, 0
  br i1 %i.bo, label %bb.x, label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.bn, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.s, %bb.r, %bb.ab, %bb.w
  %i.bp = load i32, ptr %i.s, align 4, !range !18, !noundef !5
  %i.bq = load i32, ptr %i.v, align 4
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.aj, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %bb.aj ], [ %i.br, %bb.y ], [ %i.by, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.i

bb.aa:                                            ; preds = %bb.w
  %i.bt = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.t, ptr %i.h, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.476.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.bv, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.480.0..sroa_idx, align 8
  store ptr @90, ptr %i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.bw, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @12, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.032.sroa.4.0..sroa_idx, align 8
  %.sroa.032.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.032.sroa.5.0..sroa_idx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bu, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.ac:                                            ; preds = %bb.c, %bb.b, %bb.l, %bb.m, %bb.p, %bb.t, %bb.u, %bb.aa, %bb.al, %bb.af, %bb.ae
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #22
          to label %common.resume unwind label %bb.an

select.unfold.a:                                  ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 %.sroa.0.1.i, ptr %i.q, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store i32 %.sroa.4.1.i, ptr %i.bz, align 4
  %i.ca = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cb = icmp ult i64 %i.ca, 3
  br i1 %i.cb, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %select.unfold.a
  %i.cc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cc, label %bb.ae [
    i8 0, label %bb.ai
    i8 1, label %bb.af
    i8 2, label %bb.af
  ], !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.cd = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE)
          to label %bb.ag unwind label %bb.ac     ; 2 uses

bb.af:                                            ; preds = %bb.ad, %bb.ad, %bb.ag
  %.sroa.010.0 = phi i8 [ %i.cd, %bb.ag ], [ %i.cc, %bb.ad ], [ %i.cc, %bb.ad ]
  %i.ce = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.cf = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ce, i8 noundef %.sroa.010.0)
          to label %bb.ah unwind label %bb.ac

bb.ag:                                            ; preds = %bb.ae
  %i.cg = icmp eq i8 %i.cd, 0
  br i1 %i.cg, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.af
  br i1 %i.cf, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ad, %select.unfold.a, %bb.am, %bb.ah
  %i.ch = phi i32 [ %.sroa.4.1.i, %bb.ag ], [ %.sroa.4.1.i, %bb.ad ], [ %.sroa.4.1.i, %select.unfold.a ], [ %.pre112, %bb.am ], [ %.sroa.4.1.i, %bb.ah ]
  %i.ci = phi i32 [ %.sroa.0.1.i, %bb.ag ], [ %.sroa.0.1.i, %bb.ad ], [ %.sroa.0.1.i, %select.unfold.a ], [ %.pre, %bb.am ], [ %.sroa.0.1.i, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106: ; preds = %bb.ai
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.i

bb.al:                                            ; preds = %bb.ah
  %i.cl = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.452.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.cn, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.456.0..sroa_idx, align 8
  store ptr @91, ptr %i.o, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.co, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @12, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cm, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.am unwind label %bb.ac

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pre = load i32, ptr %i.q, align 4, !range !18
  %.pre112 = load i32, ptr %i.bz, align 4
  br label %bb.ai

bb.an:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1v_6option6OptionQIB2a_INtNtB1v_4cell7RefCellIB2a_TmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtB8_10XetRuntimeEEEEEEEE9call_onceBe_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !596, !noundef !5
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00Bb_.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE16get_or_init_slowB2R_(ptr noundef nonnull align 8 %i.a)
  br label %_RNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00Bb_.exit

_RNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noalias !601, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsarFSTFZzLuM_11xet_runtime.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsarFSTFZzLuM_11xet_runtime.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @92, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgE13with_capacityCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([512 x i8]) align 128 captures(none) dereferenceable(512), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB4_7ChanneluE13with_capacityCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([512 x i8]) align 128 captures(none) dereferenceable(512), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjfHCj4Qo55Q_17crossbeam_channel5waker5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsjfHCj4Qo55Q_17crossbeam_channel5waker5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_5boxed3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtB1O_6marker4SendNtB2h_4SyncEL_EEENtNtNtB1O_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor18SystemMonitorErrorEENtNtNtBZ_3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsUrhh0HcRih_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtB9_7runtime9scheduler14current_thread4CoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsfzErqAD0wmd_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellNtNtCsG258MDvU3F_3std4time7InstantENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4listINtB5_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 128 dereferenceable(384)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4listINtB5_7ChanneluENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 128 dereferenceable(384)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB5_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 128 dereferenceable(512)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB5_7ChanneluENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 128 dereferenceable(512)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc7boundedINtB5_6PermitINtNtCskKLDkoKarTP_4core6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtB14_2io5error5ErrorEENtNtNtB14_3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB4_7RuntimeNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB5_13SystemMonitorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6ThreadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_12BlockingPoolNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB4_10XetRuntimeNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(128)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

end_hunk_1
