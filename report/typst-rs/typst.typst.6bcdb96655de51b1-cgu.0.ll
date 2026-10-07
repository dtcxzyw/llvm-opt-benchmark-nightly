Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEECs9fPPV5zPXBl_5typst:bb.a

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.dv, %bb.du
  %.sroa.01.0.i.i.i.i.i.i.i = phi i8 [ %i.jz, %bb.dv ], [ 0, %bb.du ] ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 2 uses
  %i.kb = load atomic i8, ptr %i.ka monotonic, align 1, !noalias !8233
  %.not.i.i.not.i.i.i.i.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.not.i.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.dw, !prof !43

bb.dw:                                            ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8234
  store ptr %.8.val, ptr %i.a, align 8, !noalias !8234
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i.i, ptr %i.kc, align 8, !noalias !8234
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @504, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #61
          to label %bb.dy unwind label %bb.dx, !noalias !8234

bb.dx:                                            ; preds = %bb.dw
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #62
          to label %common.resume.i.i unwind label %bb.dz, !noalias !8234

bb.dy:                                            ; preds = %bb.dw
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !8234
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.kf = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i.i to i1
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.val, i64 104 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 8, !range !53, !noundef !28
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  store i8 1, ptr %i.kg, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect(ptr noalias nofree noundef align 8 dereferenceable(48) %i.kj)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ec, %bb.ea
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs9fPPV5zPXBl_5typst(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i.i.i.i.i) #62
          to label %common.resume.i.i unwind label %bb.ei

bb.ec:                                            ; preds = %bb.ea
  %i.kl = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect(ptr noalias nofree noundef align 8 dereferenceable(48) %i.kl)
          to label %bb.ed unwind label %bb.eb

bb.ed:                                            ; preds = %bb.ec, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  br i1 %i.kf, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.km = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.kn = and i64 %i.km, 9223372036854775807
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.ef, !prof !43

bb.ef:                                            ; preds = %bb.ee
  %i.kp = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #63
  br i1 %i.kp, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store atomic i8 1, ptr %i.ka monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %i.kq = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.kr = icmp eq i32 %i.kq, 2
  br i1 %i.kr, label %bb.eh, label %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i, !prof !38

bb.eh:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val)
  br label %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i

bb.ei:                                            ; preds = %bb.eb
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.eh, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.ku = atomicrmw xchg ptr %i.kt, i8 1 acq_rel, align 1
  %.not.i6.i.i = icmp eq i8 %i.ku, 0
  br i1 %.not.i6.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEECs9fPPV5zPXBl_5typst.exit, label %bb.ej

bb.ej:                                            ; preds = %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc4zero5InnerEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEEEECs9fPPV5zPXBl_5typst.exit.i.i.i unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.kv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #56
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEEEECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.ej
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.b, %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Cs9fPPV5zPXBl_5typst.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEEEECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.n, %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Cs9fPPV5zPXBl_5typst.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEEEECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.dr, %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops0_0Cs9fPPV5zPXBl_5typst.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtCsZ7O2w1b9D3_6notify7inotify12EventLoopMsgEEEECs9fPPV5zPXBl_5typst.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.w
    i64 2, label %bb.ar
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !28
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 16, !noundef !28 ; 2 uses
  %i.j = and i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.l) #60
  %.pre.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.i, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.n = load atomic i64, ptr %.8.val monotonic, align 16
  %i.o = xor i64 %i.m, -1
  %i.p = and i64 %i.h, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 408 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 416 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.k ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.v     ; 3 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !28
  %i.y = sub i64 0, %i.x
  %i.z = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.y
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !28, !noundef !28
  %i.ab = load i64, ptr %i.s, align 16, !noundef !28
  %i.ac = icmp ult i64 %i.w, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Cs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.w, 1
  %i.aj = load i64, ptr %i.t, align 128, !noundef !28
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.al, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.am = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter44 = and i32 %i.am, 7                  ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter48 = and i32 %i.am, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter49 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter49.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter49.next.7 = add i32 %niter49, 8           ; 2 uses
  %niter49.ncmp.7 = icmp eq i32 %niter49.next.7, %unroll_iter48
  br i1 %niter49.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod46.not = icmp eq i32 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod47 = icmp ne i32 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter45 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter45.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter45.next = add i32 %epil.iter45, 1     ; 2 uses
  %epil.iter45.cmp.not = icmp eq i32 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !8235

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %i.ao, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.q, align 8, !noundef !28
  %i.aq = add i64 %i.ap, %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %i.ae, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ar)
  br label %bb.k

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Cs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.at = atomicrmw xchg ptr %i.as, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit, label %bb.n

bb.n:                                             ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Cs9fPPV5zPXBl_5typst.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8281)
  %.val2.i.i.i.i.i.i = load i64, ptr %i.s, align 16, !alias.scope !8282, !noundef !28 ; 2 uses
  %i.au = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !8282, !nonnull !28, !noundef !28
  %i.av = shl nuw nsw i64 %.val2.i.i.i.i.i.i, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.av, i64 noundef 8) #56, !noalias !8282
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ay) #62
          to label %.body.i.i.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !8283
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array4SlotINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker9SyncWakerECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i unwind label %bb.q

.body.i.i.i.i.i.i:                                ; preds = %bb.q, %bb.o
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.bc, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker9SyncWakerECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.bb) #62
          to label %bb.v unwind label %bb.t

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker9SyncWakerECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker9SyncWakerECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %.8.val, i64 352
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bf) #62
          to label %bb.v unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !8284
  unreachable

bb.t:                                             ; preds = %.body.i.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !8282
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker9SyncWakerECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.8.val, i64 352
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECs9fPPV5zPXBl_5typst.exit.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

common.resume.i.i:                                ; preds = %bb.bk, %bb.bb, %bb.ax, %bb.aq, %bb.v
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.v ], [ %eh.lpad-body.i.i4.i.i, %bb.aq ], [ %i.ft, %bb.bk ], [ %i.fb, %bb.ax ], [ %i.fi, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.v:                                             ; preds = %bb.u, %bb.r, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %i.be, %bb.r ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #56
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit

bb.w:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 acq_rel, align 8
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.bo = atomicrmw or ptr %i.bn, i64 1 seq_cst, align 8
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Cs9fPPV5zPXBl_5typst.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bs = and i64 %i.br, 62
  %i.bt = icmp eq i64 %i.bs, 62
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ], [ 0, %bb.y ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bu, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i9.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i9.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.preheader

.lr.ph.i.i.i.i.i12.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i
  %i.bv = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bv, 7                    ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i12.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i12.i.i.preheader.new

.lr.ph.i.i.i.i.i12.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i12.i.i.preheader
  %unroll_iter = and i32 %i.bv, 56
  br label %.lr.ph.i.i.i.i.i12.i.i

.lr.ph.i.i.i.i.i12.i.i:                           ; preds = %.lr.ph.i.i.i.i.i12.i.i, %.lr.ph.i.i.i.i.i12.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i12.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i12.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i12.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i12.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.epil.preheader

.lr.ph.i.i.i.i.i12.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i12.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.i.i.i.i12.i.i.epil

.lr.ph.i.i.i.i.i12.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i12.i.i.epil, %.lr.ph.i.i.i.i.i12.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i12.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i12.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.epil, !llvm.loop !8256

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i12.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i, %bb.z
  %i.bx = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.by = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bz = and i64 %i.by, 62
  %i.ca = icmp eq i64 %i.bz, 62
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, %bb.y
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.br, %bb.y ], [ %i.by, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.y ], [ %i.bx, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ]
  %i.cb = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.cc = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.ce = atomicrmw xchg ptr %i.cd, ptr null acq_rel, align 8 ; 2 uses
  %i.cf = lshr i64 %i.cc, 1                       ; 2 uses
  %i.cg = icmp ne i64 %i.cf, %i.cb                ; 2 uses
  %i.ch = icmp eq ptr %i.ce, null
  %or.cond.i.i.i.i.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.ce, %._crit_edge.i.i.i.i.i.i ], [ %i.cm, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.cg, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i5.i.i = phi i32 [ %i.cl, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.ci = icmp ult i32 %.sroa.0.1.i.i.i.i5.i.i, 7
  br i1 %i.ci, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i5.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.cj = mul nuw nsw i32 %.sroa.0.1.i.i.i.i5.i.i, %.sroa.0.1.i.i.i.i5.i.i ; 2 uses
  %xtraiter26 = and i32 %i.cj, 7                  ; 3 uses
  %i.ck = icmp ult i32 %.sroa.0.1.i.i.i.i5.i.i, 3
  br i1 %i.ck, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter30 = and i32 %i.cj, 56
  br label %.lr.ph.i26.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i:                           ; preds = %.lr.ph.i26.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.preheader.new
  %niter31 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.preheader.new ], [ %niter31.next.7, %.lr.ph.i26.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter31.next.7 = add i32 %niter31, 8           ; 2 uses
  %niter31.ncmp.7 = icmp eq i32 %niter31.next.7, %unroll_iter30
  br i1 %niter31.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %lcmp.mod28.not = icmp eq i32 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.preheader
  %lcmp.mod29 = icmp ne i32 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i26.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i26.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader
  %epil.iter27 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader ], [ %epil.iter27.next, %.lr.ph.i26.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter27.next = add i32 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i32 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !8257

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.aa
  %i.cl = add i32 %.sroa.0.1.i.i.i.i5.i.i, 1
  %i.cm = atomicrmw xchg ptr %i.cd, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %bb.ag, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.ag ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.cc, %.loopexit.i.i.i.i.i.i ], [ %i.dm, %bb.ag ]
  %i.cn = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.ab

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.ag
  %i.co = phi i64 [ %i.dn, %bb.ag ], [ %i.cf, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.dm, %bb.ag ], [ %i.cc, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.ag ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 5 uses
  %i.cp = and i64 %i.co, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cp, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.ac, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #56
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 1984 ; 3 uses
  %i.cr = load atomic ptr, ptr %i.cq acquire, align 8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.ac, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.cw, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 6 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.ct, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.cu = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter38 = and i32 %i.cu, 7                  ; 3 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter42 = and i32 %i.cu, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter43 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter43.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter43.next.7 = add i32 %niter43, 8           ; 2 uses
  %niter43.ncmp.7 = icmp eq i32 %niter43.next.7, %unroll_iter42
  br i1 %niter43.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter38, 0
  br i1 %lcmp.mod40.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod41 = icmp ne i32 %xtraiter38, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter39 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter39.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter39.next = add i32 %epil.iter39, 1     ; 2 uses
  %epil.iter39.cmp.not = icmp eq i32 %epil.iter39.next, %xtraiter38
  br i1 %epil.iter39.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !8258

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.ad
  %i.cw = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.cx = load atomic ptr, ptr %i.cq acquire, align 8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.ac
  %i.cz = load atomic ptr, ptr %i.cq acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i.i.i.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #56
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.154.i.i.i.i.i.i, i64 %i.cp ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56 ; 2 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8
  %i.dd = and i64 %i.dc, 1
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.ae, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.di, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.ae ] ; 6 uses
  %i.df = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.df, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.dg = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter32 = and i32 %i.dg, 7                  ; 3 uses
  %i.dh = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.dh, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter36 = and i32 %i.dg, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i40.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i40.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !8259

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.af
  %i.di = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.dj = load atomic i64, ptr %i.db acquire, align 8
  %i.dk = and i64 %i.dj, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.ae
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(56) %i.da)
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.154.i.i.i.i.i.i, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i ], [ %i.cz, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dm = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.dn = lshr i64 %i.dm, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.ab, %._crit_edge58.i.i.i.i.i.i
  %i.do = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.do, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Cs9fPPV5zPXBl_5typst.exit.i.i.i

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Cs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.dq = atomicrmw xchg ptr %i.dp, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Cs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8287)
  %i.dr = load atomic i64, ptr %.8.val monotonic, align 8, !alias.scope !8288, !noalias !8289
  %i.ds = load atomic i64, ptr %i.bn monotonic, align 8, !alias.scope !8288, !noalias !8289
  %i.dt = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.du = load atomic ptr, ptr %i.dt monotonic, align 8, !alias.scope !8288, !noalias !8289 ; 2 uses
  %i.dv = and i64 %i.dr, -2                       ; 2 uses
  %i.dw = and i64 %i.ds, -2                       ; 2 uses
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %i.dv, %i.dw
  br i1 %.not14.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %bb.ah
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.du, %bb.ah ], [ %.sroa.06.1.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ] ; 2 uses
  %i.dx = icmp eq ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i, null
  br i1 %i.dx, label %_RNvXs2_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, label %bb.ai

.lr.ph.i.i.i.i1.i.i.i:                            ; preds = %bb.ah, %.noexc.i.i.i.i.i.i
  %.sroa.0.016.i.i.i.i.i.i.i = phi i64 [ %i.ed, %.noexc.i.i.i.i.i.i ], [ %i.dv, %bb.ah ] ; 2 uses
  %.sroa.06.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %i.du, %bb.ah ] ; 5 uses
  %i.dy = lshr exact i64 %.sroa.0.016.i.i.i.i.i.i.i, 1
  %i.dz = and i64 %i.dy, 31                       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i64 %i.dz, 31
  br i1 %.not11.i.i.i.i.i.i.i, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa.i.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #56, !noalias !8290
  br label %_RNvXs2_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i1.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i.i.i.i.i, i64 1984
  %i.eb = load atomic ptr, ptr %i.ea monotonic, align 8, !noalias !8290
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015.i.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #56, !noalias !8290
  br label %.noexc.i.i.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i1.i.i.i
  %i.ec = getelementptr inbounds nuw [64 x i8], ptr %.sroa.06.015.i.i.i.i.i.i.i, i64 %i.dz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ec)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.al, !noalias !8291

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ak, %bb.aj
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %i.eb, %bb.aj ], [ %.sroa.06.015.i.i.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.ed = add i64 %.sroa.0.016.i.i.i.i.i.i.i, 2   ; 2 uses
  %.not.i.i.i.i2.i.i.i = icmp eq i64 %i.ed, %i.dw
  br i1 %.not.i.i.i.i2.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker9SyncWakerECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ef) #62
          to label %bb.aq unwind label %bb.ao, !noalias !8289

_RNvXs2_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %bb.ai, %._crit_edge.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.eg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i unwind label %bb.am, !noalias !8289

bb.am:                                            ; preds = %_RNvXs2_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ei) #62
          to label %bb.aq unwind label %bb.an, !noalias !8289

bb.an:                                            ; preds = %bb.am
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !8292
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !8291
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.el)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECs9fPPV5zPXBl_5typst.exit.i.i.i unwind label %bb.ap, !noalias !8289

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am, %bb.al
  %eh.lpad-body.i.i4.i.i = phi { ptr, i32 } [ %i.em, %bb.ap ], [ %i.eh, %bb.am ], [ %i.ee, %bb.al ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #56, !noalias !8289
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #56, !noalias !8289
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit

bb.ar:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.eo = atomicrmw sub ptr %i.en, i64 1 acq_rel, align 8
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECs9fPPV5zPXBl_5typst.exit

bb.as:                                            ; preds = %bb.ar
  %i.eq = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !8293
  %i.er = extractvalue { i32, i1 } %i.eq, 1
  br i1 %i.er, label %bb.au, label %bb.at, !prof !43

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val), !noalias !8293
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.es = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8293
  %i.et = and i64 %i.es, 9223372036854775807
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.av, !prof !43

bb.av:                                            ; preds = %bb.au
  %i.ev = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #63, !noalias !8293
  %i.ew = xor i1 %i.ev, true
  %i.ex = zext i1 %i.ew to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.sroa.01.0.i.i.i.i.i.i.i = phi i8 [ %i.ex, %bb.av ], [ 0, %bb.au ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 2 uses
  %i.ez = load atomic i8, ptr %i.ey monotonic, align 1, !noalias !8293
  %.not.i.i.not.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.not.i.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.aw, !prof !43

end_hunk_0
