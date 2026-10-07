Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit:bb.a
    i64 1, label %bb.f
    i64 2, label %bb.k
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 512
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8
  %i.h = load i64, ptr %i.d, align 16, !noundef !17
  %i.i = and i64 %i.h, %i.g
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.k) #50
  br label %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i

_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.m = atomicrmw xchg ptr %i.l, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChanneluEEEECsc4241EHy6Do_9typst_kit(ptr nonnull %.8.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %i.o = atomicrmw sub ptr %i.n, i64 1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.r = atomicrmw or ptr %i.q, i64 1 seq_cst, align 8
  %i.s = and i64 %i.r, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.u) #50
  br label %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.w = atomicrmw xchg ptr %i.v, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtBG_4list7ChanneluEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.j

common.resume.i.i:                                ; preds = %bb.n, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit

bb.k:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 112
  %i.z = atomicrmw sub ptr %i.y, i64 1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChanneluE10disconnectCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %.8.val)
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.ac = atomicrmw xchg ptr %i.ab, i8 1 acq_rel, align 1
  %.not.i4.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i4.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.m
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc6SenderuEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.e, %bb.f, %_RNCNvXs4_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.k, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit(i64 %.0.val, ptr %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.p
    i64 2, label %bb.ad
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8 ; 2 uses
  %i.h = load i64, ptr %i.d, align 16, !noundef !17 ; 2 uses
  %i.i = and i64 %i.h, %i.g
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.k) #50
  %.pre.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = load atomic i64, ptr %.8.val monotonic, align 16
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.g, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %bb.e
  %i.t = phi i64 [ %i.l, %bb.e ], [ %.pre.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ] ; 5 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.u     ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !noundef !17
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.x
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !17, !noundef !17
  %i.aa = load i64, ptr %i.r, align 16, !noundef !17
  %i.ab = icmp ult i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.v ; 3 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.o, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ag, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = add nuw i64 %i.v, 1
  %i.ai = load i64, ptr %i.s, align 128, !noundef !17
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.ak, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.al = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter40 = and i32 %i.al, 7                  ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter44 = and i32 %i.al, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !1075

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.an = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %i.an, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.n ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.n ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.p, align 8, !noundef !17
  %i.ap = add i64 %i.ao, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.k ], [ %i.ad, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !43, !alias.scope !1084, !noundef !17
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCseI8KtaYyPt9_12notify_types5event5EventECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.at)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsZ7O2w1b9D3_6notify5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.av = atomicrmw xchg ptr %i.au, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit, label %bb.o

bb.o:                                             ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit(ptr nonnull %.8.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.ba = atomicrmw or ptr %i.az, i64 1 seq_cst, align 8
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bd = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.be = and i64 %i.bd, 62
  %i.bf = icmp eq i64 %i.be, 62
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bj, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ], [ 0, %bb.r ] ; 6 uses
  %i.bg = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bg, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i9.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i9.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.preheader

.lr.ph.i.i.i.i.i12.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i
  %i.bh = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bh, 7                    ; 3 uses
  %i.bi = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i12.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i12.i.i.preheader.new

.lr.ph.i.i.i.i.i12.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i12.i.i.preheader
  %unroll_iter = and i32 %i.bh, 56
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
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i12.i.i.epil

.lr.ph.i.i.i.i.i12.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i12.i.i.epil, %.lr.ph.i.i.i.i.i12.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i12.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i12.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.epil, !llvm.loop !1078

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i12.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i, %bb.s
  %i.bj = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.bk = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bl = and i64 %i.bk, 62
  %i.bm = icmp eq i64 %i.bl, 62
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.r ], [ %i.bk, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.r ], [ %i.bj, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ]
  %i.bn = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bo = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bq = atomicrmw xchg ptr %i.bp, ptr null acq_rel, align 8 ; 2 uses
  %i.br = lshr i64 %i.bo, 1                       ; 2 uses
  %i.bs = icmp ne i64 %i.br, %i.bn                ; 2 uses
  %i.bt = icmp eq ptr %i.bq, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ %i.by, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bs, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i5.i.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.1.i.i.i.i5.i.i, 7
  br i1 %i.bu, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i5.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.bv = mul nuw nsw i32 %.sroa.0.1.i.i.i.i5.i.i, %.sroa.0.1.i.i.i.i5.i.i ; 2 uses
  %xtraiter22 = and i32 %i.bv, 7                  ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.1.i.i.i.i5.i.i, 3
  br i1 %i.bw, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.bv, 56
  br label %.lr.ph.i26.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i:                           ; preds = %.lr.ph.i26.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i26.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter27.next.7 = add i32 %niter27, 8           ; 2 uses
  %niter27.ncmp.7 = icmp eq i32 %niter27.next.7, %unroll_iter26
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i26.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i26.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i26.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !1079

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.t
  %i.bx = add i32 %.sroa.0.1.i.i.i.i5.i.i, 1
  %i.by = atomicrmw xchg ptr %i.bp, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bo, %.loopexit.i.i.i.i.i.i ], [ %i.db, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i ]
  %i.bz = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.bz, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.u

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i
  %i.ca = phi i64 [ %i.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i ], [ %i.br, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.db, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i ], [ %i.bo, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 6 uses
  %i.cb = and i64 %i.ca, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cb, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.v, label %bb.x

bb.u:                                             ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #42
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 1984 ; 3 uses
  %i.cd = load atomic ptr, ptr %i.cc acquire, align 8
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.v, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.ci, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.cf = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.cf, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.cg = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.cg, 7                  ; 3 uses
  %i.ch = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.cg, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter39.next.7 = add i32 %niter39, 8           ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1080

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.w
  %i.ci = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.cj = load atomic ptr, ptr %i.cc acquire, align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.v
  %i.cl = load atomic ptr, ptr %i.cc acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i.i.i.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i

bb.x:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.154.i.i.i.i.i.i, i64 %i.cb ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56 ; 2 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8
  %i.cp = and i64 %i.co, 1
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.x, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.cu, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.x ] ; 6 uses
  %i.cr = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.cr, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cs = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cs, 7                  ; 3 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.ct, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cs, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i40.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter33.next.7 = add i32 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i40.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !1081

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.y
  %i.cu = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.cv = load atomic i64, ptr %i.cn acquire, align 8
  %i.cw = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.x
  %i.cy = load i64, ptr %i.cm, align 8, !range !43, !alias.scope !1085, !noundef !17
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCseI8KtaYyPt9_12notify_types5event5EventECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.da)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i

bb.aa:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsZ7O2w1b9D3_6notify5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cm)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i4.i.i: ; preds = %bb.aa, %bb.z, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %i.cl, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %.sroa.011.154.i.i.i.i.i.i, %bb.z ], [ %.sroa.011.154.i.i.i.i.i.i, %bb.aa ] ; 2 uses
  %i.db = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.dc = lshr i64 %i.db, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dc, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.u, %._crit_edge58.i.i.i.i.i.i
  %i.dd = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.dd, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.df = atomicrmw xchg ptr %i.de, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtBG_4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.ac

common.resume.i.i:                                ; preds = %bb.ag, %bb.ac
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.dg, %bb.ac ], [ %i.dm, %bb.ag ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.ab
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit

bb.ad:                                            ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.di = atomicrmw sub ptr %i.dh, i64 1 acq_rel, align 8
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10disconnectCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %.8.val)
  %i.dk = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dl = atomicrmw xchg ptr %i.dk, i8 1 acq_rel, align 1
  %.not.i16.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i16.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.af
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.o, %bb.p, %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.ad, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit(i64 %.0.val, ptr %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.p
    i64 2, label %bb.ac
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 16, !noundef !17 ; 2 uses
  %i.j = and i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.l) #50
  %.pre.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.i, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.n = load atomic i64, ptr %.8.val monotonic, align 16
  %i.o = xor i64 %i.m, -1
  %i.p = and i64 %i.h, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.k ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.v     ; 3 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !17
  %i.y = sub i64 0, %i.x
  %i.z = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.y
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17
  %i.ab = load i64, ptr %i.s, align 16, !noundef !17
  %i.ac = icmp ult i64 %i.w, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.w ; 6 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.w, 1
  %i.aj = load i64, ptr %i.t, align 128, !noundef !17
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
  %xtraiter50 = and i32 %i.am, 7                  ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter54 = and i32 %i.am, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter55 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter55.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter55.next.7 = add i32 %niter55, 8           ; 2 uses
  %niter55.ncmp.7 = icmp eq i32 %niter55.next.7, %unroll_iter54
  br i1 %niter55.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod52.not = icmp eq i32 %xtraiter50, 0
  br i1 %lcmp.mod52.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod53 = icmp ne i32 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter51 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter51.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter51.next = add i32 %epil.iter51, 1     ; 2 uses
  %epil.iter51.cmp.not = icmp eq i32 %epil.iter51.next, %xtraiter50
  br i1 %epil.iter51.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !1086

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.ao, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.q, align 8, !noundef !17
  %i.aq = add i64 %i.ap, %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %i.ae, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !1099, !noundef !17 ; 2 uses
  %i.as = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1099, !nonnull !17, !noundef !17
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !1099
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  invoke void @_RNvXs4_NtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_streamNtB5_16RefinedTcpStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(12) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i unwind label %bb.n

common.resume.i.i:                                ; preds = %bb.af, %bb.z, %bb.n
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.dh, %bb.z ], [ %i.dw, %bb.af ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.aw, align 4, !alias.scope !1100
  %i.ax = tail call noundef i32 @close(i32 noundef %.val3.i.i.i.i.i.i.i.i) #42 ; 0 uses
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %.val1.i.i.i.i.i.i.i.i = load i32, ptr %i.ay, align 4, !alias.scope !1100
  %i.az = tail call noundef i32 @close(i32 noundef %.val1.i.i.i.i.i.i.i.i) #42 ; 0 uses
  br label %bb.k

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.bb = atomicrmw xchg ptr %i.ba, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit, label %bb.o

bb.o:                                             ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtNtNtBG_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit(ptr nonnull %.8.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit

bb.p:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 acq_rel, align 8
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.bg = atomicrmw or ptr %i.bf, i64 1 seq_cst, align 8
  %i.bh = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bj = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bk = and i64 %i.bj, 62
  %i.bl = icmp eq i64 %i.bk, 62
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i
  %.sroa.0.04954.i.i.i.i.i.i = phi i32 [ %i.bp, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i ], [ 0, %bb.r ] ; 6 uses
  %i.bm = icmp ult i32 %.sroa.0.04954.i.i.i.i.i.i, 7
  br i1 %i.bm, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i14.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i14.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i15.i.i = icmp eq i32 %.sroa.0.04954.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i15.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i18.i.i.preheader

.lr.ph.i.i.i.i.i18.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i14.i.i
  %i.bn = mul nuw nsw i32 %.sroa.0.04954.i.i.i.i.i.i, %.sroa.0.04954.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bn, 7                    ; 3 uses
  %i.bo = icmp ult i32 %.sroa.0.04954.i.i.i.i.i.i, 3
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i18.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i18.i.i.preheader.new

.lr.ph.i.i.i.i.i18.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i18.i.i.preheader
  %unroll_iter = and i32 %i.bn, 56
  br label %.lr.ph.i.i.i.i.i18.i.i

.lr.ph.i.i.i.i.i18.i.i:                           ; preds = %.lr.ph.i.i.i.i.i18.i.i, %.lr.ph.i.i.i.i.i18.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i18.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i18.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i18.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i18.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i18.i.i.epil.preheader

.lr.ph.i.i.i.i.i18.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i18.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i.i.i.i18.i.i.epil

.lr.ph.i.i.i.i.i18.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i18.i.i.epil, %.lr.ph.i.i.i.i.i18.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i18.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i18.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i18.i.i.epil, !llvm.loop !1091

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i18.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i14.i.i, %bb.s
  %i.bp = add i32 %.sroa.0.04954.i.i.i.i.i.i, 1   ; 2 uses
  %i.bq = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.br = and i64 %i.bq, 62
  %i.bs = icmp eq i64 %i.br, 62
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.r ], [ %i.bq, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.r ], [ %i.bp, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i12.i.i ]
  %i.bt = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bu = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bw = atomicrmw xchg ptr %i.bv, ptr null acq_rel, align 8 ; 2 uses
  %i.bx = lshr i64 %i.bu, 1                       ; 2 uses
  %i.by = icmp ne i64 %i.bx, %i.bt                ; 2 uses
  %i.bz = icmp eq ptr %i.bw, null
  %or.cond.i.i.i.i.i.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bw, %._crit_edge.i.i.i.i.i.i ], [ %i.ce, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.by, label %.lr.ph60.i.i.i.i.i.i, label %._crit_edge61.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i11.i.i = phi i32 [ %i.cd, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.ca = icmp ult i32 %.sroa.0.1.i.i.i.i11.i.i, 7
  br i1 %i.ca, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i11.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.cb = mul nuw nsw i32 %.sroa.0.1.i.i.i.i11.i.i, %.sroa.0.1.i.i.i.i11.i.i ; 2 uses
  %xtraiter32 = and i32 %i.cb, 7                  ; 3 uses
  %i.cc = icmp ult i32 %.sroa.0.1.i.i.i.i11.i.i, 3
  br i1 %i.cc, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter36 = and i32 %i.cb, 56
  br label %.lr.ph.i26.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i:                           ; preds = %.lr.ph.i26.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i26.i.i.i.i.i.i ]
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
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i26.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i26.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i26.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !1092

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.t
  %i.cd = add i32 %.sroa.0.1.i.i.i.i11.i.i, 1
  %i.ce = atomicrmw xchg ptr %i.bv, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge61.i.i.i.i.i.i:                        ; preds = %bb.aa, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.aa ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bu, %.loopexit.i.i.i.i.i.i ], [ %i.dm, %bb.aa ]
  %i.cf = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cf, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.u

.lr.ph60.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.aa
  %i.cg = phi i64 [ %i.dn, %bb.aa ], [ %i.bx, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.058.i.i.i.i.i.i = phi i64 [ %i.dm, %bb.aa ], [ %i.bu, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.157.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.aa ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 5 uses
  %i.ch = and i64 %i.cg, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ch, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.v, label %bb.x

bb.u:                                             ; preds = %._crit_edge61.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #42
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph60.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.011.157.i.i.i.i.i.i, i64 1984 ; 3 uses
  %i.cj = load atomic ptr, ptr %i.ci acquire, align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.v, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.co, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.cl = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.cl, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.cm = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter44 = and i32 %i.cm, 7                  ; 3 uses
  %i.cn = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter48 = and i32 %i.cm, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter49 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter49.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
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
  br i1 %niter49.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod46.not = icmp eq i32 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod47 = icmp ne i32 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter45 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter45.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter45.next = add i32 %epil.iter45, 1     ; 2 uses
  %epil.iter45.cmp.not = icmp eq i32 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1093

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.w
  %i.co = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.cp = load atomic ptr, ptr %i.ci acquire, align 8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.v
  %i.cr = load atomic ptr, ptr %i.ci acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.157.i.i.i.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.157.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #42
  br label %bb.aa

bb.x:                                             ; preds = %.lr.ph60.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.157.i.i.i.i.i.i, i64 %i.ch ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8
  %i.cv = and i64 %i.cu, 1
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.x, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.da, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.x ] ; 6 uses
  %i.cx = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.cx, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cy = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter38 = and i32 %i.cy, 7                  ; 3 uses
  %i.cz = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.cz, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter42 = and i32 %i.cy, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new
  %niter43 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new ], [ %niter43.next.7, %.lr.ph.i.i40.i.i.i.i.i.i ]
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
  br i1 %niter43.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter38, 0
  br i1 %lcmp.mod40.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %lcmp.mod41 = icmp ne i32 %xtraiter38, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader
  %epil.iter39 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader ], [ %epil.iter39.next, %.lr.ph.i.i40.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter39.next = add i32 %epil.iter39, 1     ; 2 uses
  %epil.iter39.cmp.not = icmp eq i32 %epil.iter39.next, %xtraiter38
  br i1 %epil.iter39.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !1094

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.y
  %i.da = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.db = load atomic i64, ptr %i.ct acquire, align 8
  %i.dc = and i64 %i.db, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val1.i.i.i.i.i4.i.i = load i64, ptr %i.de, align 8, !alias.scope !1101, !noundef !17 ; 2 uses
  %i.df = icmp eq i64 %.val1.i.i.i.i.i4.i.i, 0
  br i1 %i.df, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i7.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i5.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i5.i.i: ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i6.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !1101, !nonnull !17, !noundef !17
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i6.i.i, i64 noundef %.val1.i.i.i.i.i4.i.i, i64 noundef 1) #42, !noalias !1101
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i7.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i7.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i5.i.i, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  invoke void @_RNvXs4_NtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_streamNtB5_16RefinedTcpStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(12) %i.dg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i9.i.i unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i7.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  %.val3.i.i.i.i.i.i8.i.i = load i32, ptr %i.di, align 4, !alias.scope !1102
  %i.dj = tail call noundef i32 @close(i32 noundef %.val3.i.i.i.i.i.i8.i.i) #42 ; 0 uses
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i9.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6buffer6BufferECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i7.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  %.val1.i.i.i.i.i.i10.i.i = load i32, ptr %i.dk, align 4, !alias.scope !1102
  %i.dl = tail call noundef i32 @close(i32 noundef %.val1.i.i.i.i.i.i10.i.i) #42 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i9.i.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.157.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i9.i.i ], [ %i.cr, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dm = add i64 %.sroa.05.058.i.i.i.i.i.i, 2    ; 3 uses
  %i.dn = lshr i64 %i.dm, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dn, %i.bt
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge61.i.i.i.i.i.i, label %.lr.ph60.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.u, %._crit_edge61.i.i.i.i.i.i
  %i.do = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.do, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.dq = atomicrmw xchg ptr %i.dp, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtNtNtBG_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit

bb.ac:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.ds = atomicrmw sub ptr %i.dr, i64 1 acq_rel, align 8
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10disconnectCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %.8.val)
  %i.du = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dv = atomicrmw xchg ptr %i.du, i8 1 acq_rel, align 1
  %.not.i22.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i22.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelINtNtNtNtBG_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelINtNtNtNtBG_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.ae
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.o, %bb.p, %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiverINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.ab, %bb.ac, %bb.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelINtNtNtNtBG_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiveruEECsc4241EHy6Do_9typst_kit(i64 %.0.val, ptr %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.n
    i64 2, label %bb.z
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8 ; 2 uses
  %i.h = load i64, ptr %i.d, align 16, !noundef !17 ; 2 uses
  %i.i = and i64 %i.h, %i.g
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.k) #50
  %.pre.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = load atomic i64, ptr %.8.val monotonic, align 16
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.g, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.t = phi i64 [ %i.l, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.k ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.u     ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !noundef !17
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.x
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !17, !noundef !17
  %i.aa = load i64, ptr %i.r, align 16, !noundef !17
  %i.ab = icmp ult i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.o, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ag, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = add nuw i64 %i.v, 1
  %i.ai = load i64, ptr %i.s, align 128, !noundef !17
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.ak, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.al = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter40 = and i32 %i.al, 7                  ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter44 = and i32 %i.al, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !1103

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.an = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, %bb.h
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.l ], [ %i.an, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.h ], [ %i.ap, %bb.l ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.p, align 8, !noundef !17
  %i.ap = add i64 %i.ao, %i.y
  br label %bb.k

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.ar = atomicrmw xchg ptr %i.aq, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit, label %bb.m

bb.m:                                             ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChanneluEEEECsc4241EHy6Do_9typst_kit(ptr nonnull %.8.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit

bb.n:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.at = atomicrmw sub ptr %i.as, i64 1 acq_rel, align 8
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.aw = atomicrmw or ptr %i.av, i64 1 seq_cst, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.az = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ba = and i64 %i.az, 62
  %i.bb = icmp eq i64 %i.ba, 62
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.p, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bf, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ], [ 0, %bb.p ] ; 6 uses
  %i.bc = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bc, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i8.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.preheader

.lr.ph.i.i.i.i.i11.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i
  %i.bd = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bd, 7                    ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i11.i.i.preheader.new

.lr.ph.i.i.i.i.i11.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i11.i.i.preheader
  %unroll_iter = and i32 %i.bd, 56
  br label %.lr.ph.i.i.i.i.i11.i.i

.lr.ph.i.i.i.i.i11.i.i:                           ; preds = %.lr.ph.i.i.i.i.i11.i.i, %.lr.ph.i.i.i.i.i11.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i11.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i11.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i11.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader

.lr.ph.i.i.i.i.i11.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i11.i.i.epil

.lr.ph.i.i.i.i.i11.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i11.i.i.epil, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i11.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil, !llvm.loop !1104

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, %bb.q
  %i.bf = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.bg = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.bh = and i64 %i.bg, 62
  %i.bi = icmp eq i64 %i.bh, 62
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, %bb.p
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.az, %bb.p ], [ %i.bg, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.p ], [ %i.bf, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %i.bj = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bk = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bm = atomicrmw xchg ptr %i.bl, ptr null acq_rel, align 8 ; 2 uses
  %i.bn = lshr i64 %i.bk, 1                       ; 2 uses
  %i.bo = icmp ne i64 %i.bn, %i.bj                ; 2 uses
  %i.bp = icmp eq ptr %i.bm, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bm, %._crit_edge.i.i.i.i.i.i ], [ %i.bu, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bo, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bq = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.bq, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.br = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter22 = and i32 %i.br, 7                  ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.bs, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.br, 56
  br label %.lr.ph.i26.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i:                           ; preds = %.lr.ph.i26.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i26.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter27.next.7 = add i32 %niter27, 8           ; 2 uses
  %niter27.ncmp.7 = icmp eq i32 %niter27.next.7, %unroll_iter26
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i26.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i26.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i26.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !1105

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.r
  %i.bt = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.bu = atomicrmw xchg ptr %i.bl, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bk, %.loopexit.i.i.i.i.i.i ], [ %i.ct, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ]
  %i.bv = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.bv, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.s

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %i.bw = phi i64 [ %i.cu, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bn, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.ct, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bk, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 7 uses
  %i.bx = and i64 %i.bw, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bx, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.s:                                             ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 256, i64 noundef 8) #42
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.by = load atomic ptr, ptr %.sroa.011.154.i.i.i.i.i.i acquire, align 8
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.t, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.cd, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.t ] ; 6 uses
  %i.ca = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.ca, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.cb = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.cb, 7                  ; 3 uses
  %i.cc = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.cb, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter39.next.7 = add i32 %niter39, 8           ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1106

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.u
  %i.cd = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.ce = load atomic ptr, ptr %.sroa.011.154.i.i.i.i.i.i acquire, align 8
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.t
  %i.cg = load atomic ptr, ptr %.sroa.011.154.i.i.i.i.i.i acquire, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 256, i64 noundef 8) #42
  br label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bx ; 2 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8
  %i.ck = and i64 %i.cj, 1
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.v, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.cp, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.cm = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.cm, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cn = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cn, 7                  ; 3 uses
  %i.co = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.co, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cn, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i40.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter33.next.7 = add i32 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i40.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !1107

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.w
  %i.cp = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.cq = load atomic i64, ptr %i.ci acquire, align 8
  %i.cr = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.v, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %i.cg, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %.sroa.011.154.i.i.i.i.i.i, %bb.v ], [ %.sroa.011.154.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ] ; 2 uses
  %i.ct = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.cu = lshr i64 %i.ct, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.bj
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.s, %._crit_edge58.i.i.i.i.i.i
  %i.cv = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.cv, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i

_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.cx = atomicrmw xchg ptr %i.cw, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit, label %bb.x

bb.x:                                             ; preds = %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtBG_4list7ChanneluEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.y

common.resume.i.i:                                ; preds = %bb.ac, %bb.y
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.de, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.y:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.x
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit

bb.z:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.da = atomicrmw sub ptr %i.cz, i64 1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChanneluE10disconnectCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %.8.val)
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dd = atomicrmw xchg ptr %i.dc, i8 1 acq_rel, align 1
  %.not.i15.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i15.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %.8.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %common.resume.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.ab
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpmc8ReceiveruEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.m, %bb.n, %_RNCNvXsi_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drops_0Csc4241EHy6Do_9typst_kit.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.z, %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChanneluEEEECsc4241EHy6Do_9typst_kit.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue7ControlNtB2T_7MessageEEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !17, !align !25, !noundef !17 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !41, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue7ControlNtB2A_7MessageEEEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue7ControlNtB2A_7MessageEEEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue7ControlNtB2A_7MessageEEEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !17, !align !25, !noundef !17 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !41, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !17, !align !25, !noundef !17 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !41, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECsc4241EHy6Do_9typst_kit:bb.a

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECsc4241EHy6Do_9typst_kit.exit3.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECsc4241EHy6Do_9typst_kit.exit

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECsc4241EHy6Do_9typst_kit.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle9JoinInneruEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECsc4241EHy6Do_9typst_kit.exit3.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbGiR87yI9G2_9tiny_http4util10sequential16SequentialReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtBG_18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.08.i.i.i.i = alloca [40 x i8], align 8   ; 5 uses
  %.sroa.6.i.i.i.i = alloca [12 x i8], align 4    ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.040.i.i.i = alloca [40 x i8], align 8    ; 5 uses
  %.sroa.941.i.i.i = alloca [12 x i8], align 4    ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.028.i.i.i = alloca [40 x i8], align 8    ; 4 uses
  %.sroa.530.i.i.i = alloca [12 x i8], align 4    ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [56 x i8], align 8               ; 4 uses
  %i.ac = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.0.i.i.i = alloca [40 x i8], align 8      ; 5 uses
  %.sroa.6.i.i.i = alloca [12 x i8], align 4      ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [56 x i8], align 8               ; 22 uses
  %i.ag = alloca [56 x i8], align 8               ; 8 uses
  %i.ah = alloca [56 x i8], align 8               ; 6 uses
  %i.ai = alloca [56 x i8], align 8               ; 8 uses
  %i.aj = alloca [56 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8, !alias.scope !1345 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1345 ; 48 uses
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.65.0.copyload.i = load i32, ptr %.sroa.65.0..sroa_idx.i, align 8, !alias.scope !1345 ; 3 uses
  store i32 3, ptr %.sroa.65.0..sroa_idx.i, align 8, !alias.scope !1345
  %i.al = add i32 %.sroa.65.0.copyload.i, -2
  %i.am = zext i32 %i.al to i64
  %i.an = icmp ugt i32 %.sroa.65.0.copyload.i, 1
  %i.ao = add nuw nsw i64 %i.am, 1
  %i.ap = select i1 %i.an, i64 %i.ao, i64 0
  switch i64 %i.ap, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvXs4_NtNtCsbGiR87yI9G2_9tiny_http4util10sequentialINtB5_16SequentialReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtB7_18refined_tcp_stream16RefinedTcpStreamEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsc4241EHy6Do_9typst_kit.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1345
  store i64 %.sroa.0.0.copyload.i, ptr %i.aj, align 8, !noalias !1345
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !1345
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, i64 24, i1 false)
  %.sroa.65.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 %.sroa.65.0.copyload.i, ptr %.sroa.65.0..sroa_idx6.i, align 8, !noalias !1345
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx8.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1345
  %.val19.i = load i64, ptr %0, align 8, !range !44, !alias.scope !1345, !noundef !17
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val20.i = load ptr, ptr %i.aq, align 8, !alias.scope !1345
  invoke fastcc void @_RNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB5_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ai, i64 %.val19.i, ptr %.val20.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.aj)
          to label %.noexc unwind label %bb.eq

.noexc:                                           ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !range !40, !noalias !1345, !noundef !17
  %.not13.i = icmp eq i32 %i.as, 2
  br i1 %.not13.i, label %bb.ei, label %bb.eg

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1346
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable.i.i [
    i64 0, label %bb.e
    i64 1, label %bb.al
    i64 2, label %bb.bz
  ]

default.unreachable.i.i:                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1346
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i32 -1, ptr %i.at, align 8, !noalias !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1348
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 400 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 392 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 408
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 128
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 384
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false), !noalias !1348
  br label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.bd = load atomic i64, ptr %.sroa.5.0.copyload.i monotonic, align 8, !noalias !1350
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, %bb.f
  %.sroa.0.038.i.i.i.i = phi i32 [ 0, %bb.f ], [ %.sroa.0.1.i.i.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i ] ; 12 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.bd, %bb.f ], [ %i.ci, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i ] ; 7 uses
  %umin207 = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i.i, i32 6) ; 2 uses
  %i.be = mul nuw nsw i32 %umin207, %umin207      ; 2 uses
  %i.bf = load i64, ptr %i.av, align 16, !noalias !1350, !noundef !17
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %.sroa.02.0.i.i.i.i      ; 3 uses
  %i.bi = load i64, ptr %i.aw, align 8, !noalias !1350, !noundef !17
  %i.bj = sub i64 0, %i.bi
  %i.bk = and i64 %.sroa.02.0.i.i.i.i, %i.bj
  %i.bl = load ptr, ptr %i.ax, align 8, !noalias !1350, !nonnull !17, !noundef !17
  %i.bm = load i64, ptr %i.ay, align 16, !noalias !1350, !noundef !17
  %i.bn = icmp ult i64 %i.bh, %i.bm
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bl, i64 %i.bh ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8, !noalias !1350 ; 3 uses
  %i.bq = add i64 %.sroa.02.0.i.i.i.i, 1
  %i.br = icmp eq i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = icmp eq i64 %i.bp, %.sroa.02.0.i.i.i.i
  br i1 %i.bs, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bt = add nuw i64 %i.bh, 1
  %i.bu = load i64, ptr %i.ba, align 128, !noalias !1350, !noundef !17
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp ult i32 %.sroa.0.038.i.i.i.i, 7
  br i1 %i.bw, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i unwind label %.loopexit.i, !noalias !1345

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %bb.j
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.bx = mul nuw nsw i32 %.sroa.0.038.i.i.i.i, %.sroa.0.038.i.i.i.i ; 2 uses
  %xtraiter201 = and i32 %i.bx, 7                 ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.038.i.i.i.i, 3
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter205 = and i32 %i.bx, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter206 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter206.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  %niter206.next.7 = add i32 %niter206, 8         ; 2 uses
  %niter206.ncmp.7 = icmp eq i32 %niter206.next.7, %unroll_iter205
  br i1 %niter206.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit143.unr-lcssa, label %.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %bb.h
  fence seq_cst
  %i.bz = load atomic i64, ptr %i.az monotonic, align 16, !noalias !1350 ; 2 uses
  %i.ca = load i64, ptr %i.av, align 16, !noalias !1350, !noundef !17 ; 2 uses
  %i.cb = xor i64 %i.ca, -1
  %i.cc = and i64 %i.bz, %i.cb
  %i.cd = icmp eq i64 %i.cc, %.sroa.02.0.i.i.i.i
  br i1 %i.cd, label %bb.m, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i.i.i: ; preds = %bb.l
  %..i.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i.i, i32 6) ; 2 uses
  %i.ce = mul nuw nsw i32 %..i.i.i.i.i.i, %..i.i.i.i.i.i ; 2 uses
  %.not.i13.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i, 0
  br i1 %.not.i13.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i16.i.i.i.i.preheader

.lr.ph.i16.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i.i.i
  %xtraiter208 = and i32 %i.ce, 5                 ; 3 uses
  %i.cf = icmp ult i32 %.sroa.0.038.i.i.i.i, 3
  br i1 %i.cf, label %.lr.ph.i16.i.i.i.i.epil.preheader, label %.lr.ph.i16.i.i.i.i.preheader.new

.lr.ph.i16.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i16.i.i.i.i.preheader
  %unroll_iter212 = and i32 %i.ce, 56
  br label %.lr.ph.i16.i.i.i.i

.lr.ph.i16.i.i.i.i:                               ; preds = %.lr.ph.i16.i.i.i.i, %.lr.ph.i16.i.i.i.i.preheader.new
  %niter213 = phi i32 [ 0, %.lr.ph.i16.i.i.i.i.preheader.new ], [ %niter213.next.7, %.lr.ph.i16.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  %niter213.next.7 = add i32 %niter213, 8         ; 2 uses
  %niter213.ncmp.7 = icmp eq i32 %niter213.next.7, %unroll_iter212
  br i1 %niter213.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit142.unr-lcssa, label %.lr.ph.i16.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cg = and i64 %i.ca, %i.bz
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i
  %lcmp.mod216.not = icmp eq i32 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i26.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.preheader
  %lcmp.mod217 = icmp ne i32 %xtraiter214, 0
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.i26.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.epil:                          ; preds = %.lr.ph.i26.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.epil.preheader
  %epil.iter215 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.epil.preheader ], [ %epil.iter215.next, %.lr.ph.i26.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1350
  %epil.iter215.next = add i32 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i32 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i26.i.i.i.i.epil, !llvm.loop !1162

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit142.unr-lcssa: ; preds = %.lr.ph.i16.i.i.i.i
  %lcmp.mod210.not = icmp eq i32 %xtraiter208, 0
  br i1 %lcmp.mod210.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i16.i.i.i.i.epil.preheader

.lr.ph.i16.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit142.unr-lcssa, %.lr.ph.i16.i.i.i.i.preheader
  %lcmp.mod211 = icmp ne i32 %xtraiter208, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.i16.i.i.i.i.epil

.lr.ph.i16.i.i.i.i.epil:                          ; preds = %.lr.ph.i16.i.i.i.i.epil, %.lr.ph.i16.i.i.i.i.epil.preheader
  %epil.iter209 = phi i32 [ 0, %.lr.ph.i16.i.i.i.i.epil.preheader ], [ %epil.iter209.next, %.lr.ph.i16.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1350
  %epil.iter209.next = add i32 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i32 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i16.i.i.i.i.epil, !llvm.loop !1163

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit143.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod203.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod203.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit143.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod204 = icmp ne i32 %xtraiter201, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter202 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter202.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1350
  %epil.iter202.next = add i32 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i32 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !1164

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit143.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit142.unr-lcssa, %.lr.ph.i16.i.i.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i, %bb.k
  %i.ci = load atomic i64, ptr %.sroa.5.0.copyload.i monotonic, align 16, !noalias !1350
  %.sroa.0.1.i.i.i.i = add i32 %.sroa.0.038.i.i.i.i, 1
  br label %bb.g

bb.n:                                             ; preds = %bb.i
  %i.cj = load i64, ptr %i.aw, align 8, !noalias !1350, !noundef !17
  %i.ck = add i64 %i.cj, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.ck, %bb.n ], [ %i.bp, %bb.i ]
  %i.cl = cmpxchg weak ptr %.sroa.5.0.copyload.i, i64 %.sroa.02.0.i.i.i.i, i64 %.sroa.01.0.i.i.i.i seq_cst monotonic, align 8, !noalias !1350
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.cl, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.p, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i: ; preds = %bb.o
  %.not.i23.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i, label %.lr.ph.i26.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i.i.i
  %xtraiter214 = and i32 %i.be, 7                 ; 3 uses
  %i.cm = icmp ult i32 %.sroa.0.038.i.i.i.i, 3
  br i1 %i.cm, label %.lr.ph.i26.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i26.i.i.i.i.preheader
  %unroll_iter218 = and i32 %i.be, 56
  br label %.lr.ph.i26.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %.lr.ph.i26.i.i.i.i, %.lr.ph.i26.i.i.i.i.preheader.new
  %niter219 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.preheader.new ], [ %niter219.next.7, %.lr.ph.i26.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  call void @llvm.x86.sse2.pause(), !noalias !1350
  %niter219.next.7 = add i32 %niter219, 8         ; 2 uses
  %niter219.ncmp.7 = icmp eq i32 %niter219.next.7, %unroll_iter218
  br i1 %niter219.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.m
  %i.cn = load i32, ptr %i.at, align 8, !range !46, !noalias !1348, !noundef !17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, -1
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %bb.ai

bb.p:                                             ; preds = %bb.o
  store ptr %i.bo, ptr %i.ad, align 8, !alias.scope !1349, !noalias !1348
  %i.co = load i64, ptr %i.aw, align 8, !noalias !1350, !noundef !17
  %i.cp = add i64 %i.co, %.sroa.02.0.i.i.i.i      ; 2 uses
  store i64 %i.cp, ptr %i.au, align 8, !alias.scope !1349, !noalias !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i64 56, i1 false), !noalias !1351
  store atomic i64 %i.cp, ptr %i.bo release, align 8, !noalias !1351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false), !noalias !1351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.cr)
          to label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.q, !noalias !1351

bb.q:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ac) #46
          to label %.body.i unwind label %bb.r, !noalias !1351

bb.r:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1351
  unreachable

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1348
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.4.0.copyload5.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !1348 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbGiR87yI9G2_9tiny_http4util10sequential16SequentialReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtBG_18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit:bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1352
  %i.de = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc26.i:                                       ; preds = %bb.u
  store ptr %i.de, ptr %i.z, align 8, !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1352
  store ptr %i.ad, ptr %i.x, align 8, !noalias !1352
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1348
  store ptr %i.ae, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i, align 8, !noalias !1348
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %i.de)
          to label %bb.x unwind label %bb.v, !noalias !1352

bb.v:                                             ; preds = %.noexc26.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.dg = load ptr, ptr %i.z, align 8, !alias.scope !1357, !noalias !1352, !nonnull !17, !noundef !17
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !1358
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.w, label %.body.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #48
          to label %.body.i unwind label %bb.z, !noalias !1352

bb.x:                                             ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1352
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.dj = load ptr, ptr %i.z, align 8, !alias.scope !1362, !noalias !1352, !nonnull !17, !noundef !17
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !1363
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1352
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.z:                                             ; preds = %bb.af, %bb.w
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1352
  unreachable

bb.aa:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1352
  store ptr %i.dd, ptr %i.y, align 8, !noalias !1352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store atomic i64 0, ptr %i.dn release, align 8, !noalias !1352
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store atomic ptr null, ptr %i.do release, align 8, !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1352
  store ptr %i.ad, ptr %i.w, align 8, !noalias !1352
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i, align 8, !noalias !1348
  store ptr %i.ae, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i, align 8, !noalias !1348
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w, ptr nonnull %i.dd)
          to label %bb.ab unwind label %bb.ae, !noalias !1352

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1352
  %i.dp = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1352, !noundef !17 ; 3 uses
  store ptr %i.dp, ptr %i.v, align 8, !noalias !1352
  store ptr %i.dd, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1352
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !1364
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1352
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !1365
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.af, label %.body.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #48
          to label %.body.i unwind label %bb.z, !noalias !1352

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %.noexc25.i
  invoke fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.aa) #50
          to label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345

_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1352
  br label %bb.f

.split.i.i.i:                                     ; preds = %.noexc24.i
  %i.dw = extractvalue { i64, i32 } %i.cw, 1      ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 1000000000
  call void @llvm.assume(i1 %i.dx)
  %.not20.i.i.i = icmp samesign ult i32 %i.dw, %i.cn
  br i1 %.not20.i.i.i, label %bb.t, label %bb.ah

bb.ag:                                            ; preds = %.noexc24.i
  %.not19.i.i.i = icmp slt i64 %i.cx, %i.cv
  br i1 %.not19.i.i.i, label %bb.t, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i
  store i8 0, ptr %i.af, align 8, !alias.scope !1347, !noalias !1346
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i
  store i8 1, ptr %i.af, align 8, !alias.scope !1347, !noalias !1346
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i, i64 40, i1 false), !noalias !1346
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i.i.i, i64 12, i1 false), !noalias !1346
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.4.0.copyload5.i.sink.i.i = phi i32 [ %.sroa.4.0.copyload5.i.i.i, %bb.aj ], [ 2, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ak, %bb.ah
  %i.dy = phi i32 [ 2, %bb.ah ], [ %.sroa.4.0.copyload5.i.sink.i.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1346
  br label %bb.ef

bb.al:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1346
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 -1, ptr %i.dz, align 8, !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1367
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 128
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ee = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i4.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !1367
  br label %bb.am

bb.am:                                            ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.eg = load atomic i64, ptr %.sroa.5.0.copyload.i acquire, align 8, !noalias !1369
  %i.eh = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !1369
  br label %bb.an

bb.an:                                            ; preds = %.backedge.i.i.i.i, %bb.am
  %.sroa.0.043.i.i.i.i = phi i32 [ 0, %bb.am ], [ %.sroa.0.043.be.i.i.i.i, %.backedge.i.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i.i = phi ptr [ %i.eh, %bb.am ], [ %i.es, %.backedge.i.i.i.i ] ; 8 uses
  %.sroa.07.0.i.i.i.i = phi i64 [ %i.eg, %bb.am ], [ %i.er, %.backedge.i.i.i.i ] ; 5 uses
  %i.ei = lshr i64 %.sroa.07.0.i.i.i.i, 1         ; 2 uses
  %i.ej = and i64 %i.ei, 31                       ; 6 uses
  %i.ek = icmp eq i64 %i.ej, 31
  br i1 %i.ek, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.el = icmp ult i32 %.sroa.0.043.i.i.i.i, 7
  br i1 %i.el, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i, label %.backedge.sink.split.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i: ; preds = %bb.ao
  %.not.i.i.i20.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i.i.i20.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.preheader

.lr.ph.i.i.i23.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i
  %i.em = mul nuw nsw i32 %.sroa.0.043.i.i.i.i, %.sroa.0.043.i.i.i.i ; 2 uses
  %xtraiter183 = and i32 %i.em, 7                 ; 3 uses
  %i.en = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.en, label %.lr.ph.i.i.i23.i.i.epil.preheader, label %.lr.ph.i.i.i23.i.i.preheader.new

.lr.ph.i.i.i23.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i23.i.i.preheader
  %unroll_iter187 = and i32 %i.em, 56
  br label %.lr.ph.i.i.i23.i.i

.lr.ph.i.i.i23.i.i:                               ; preds = %.lr.ph.i.i.i23.i.i, %.lr.ph.i.i.i23.i.i.preheader.new
  %niter188 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.preheader.new ], [ %niter188.next.7, %.lr.ph.i.i.i23.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter188.next.7 = add i32 %niter188, 8         ; 2 uses
  %niter188.ncmp.7 = icmp eq i32 %niter188.next.7, %unroll_iter187
  br i1 %niter188.ncmp.7, label %.backedge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eo = add i64 %.sroa.07.0.i.i.i.i, 2          ; 2 uses
  %i.ep = and i64 %.sroa.07.0.i.i.i.i, 1
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.aq, label %bb.at

.backedge.sink.split.i.i.i.i:                     ; preds = %bb.av, %bb.ao
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.backedge.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345

.backedge.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i23.i.i
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.epil.preheader

.lr.ph.i.i.i23.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.preheader
  %lcmp.mod186 = icmp ne i32 %xtraiter183, 0
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i.i.i23.i.i.epil

.lr.ph.i.i.i23.i.i.epil:                          ; preds = %.lr.ph.i.i.i23.i.i.epil, %.lr.ph.i.i.i23.i.i.epil.preheader
  %epil.iter184 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.epil.preheader ], [ %epil.iter184.next, %.lr.ph.i.i.i23.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.epil, !llvm.loop !1205

.backedge.i.i.i.i.loopexit155.unr-lcssa:          ; preds = %.lr.ph.i23.i.i.i.i
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit155.unr-lcssa, %.lr.ph.i23.i.i.i.i.preheader
  %lcmp.mod180 = icmp ne i32 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i23.i.i.i.i.epil

.lr.ph.i23.i.i.i.i.epil:                          ; preds = %.lr.ph.i23.i.i.i.i.epil, %.lr.ph.i23.i.i.i.i.epil.preheader
  %epil.iter178 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.epil.preheader ], [ %epil.iter178.next, %.lr.ph.i23.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.epil, !llvm.loop !1206

.backedge.i.i.i.i.loopexit156.unr-lcssa:          ; preds = %.lr.ph.i33.i.i.i.i
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit156.unr-lcssa, %.lr.ph.i33.i.i.i.i.preheader
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph.i33.i.i.i.i.epil

.lr.ph.i33.i.i.i.i.epil:                          ; preds = %.lr.ph.i33.i.i.i.i.epil, %.lr.ph.i33.i.i.i.i.epil.preheader
  %epil.iter172 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.epil.preheader ], [ %epil.iter172.next, %.lr.ph.i33.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.epil, !llvm.loop !1207

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.loopexit156.unr-lcssa, %.lr.ph.i33.i.i.i.i.epil, %.backedge.i.i.i.i.loopexit155.unr-lcssa, %.lr.ph.i23.i.i.i.i.epil, %.backedge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i, %.backedge.sink.split.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i
  %i.er = load atomic i64, ptr %.sroa.5.0.copyload.i acquire, align 8, !noalias !1369
  %i.es = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !1369
  %.sroa.0.043.be.i.i.i.i = add i32 %.sroa.0.043.i.i.i.i, 1
  br label %bb.an

bb.aq:                                            ; preds = %bb.ap
  fence seq_cst
  %i.et = load atomic i64, ptr %i.ed monotonic, align 8, !noalias !1369 ; 3 uses
  %i.eu = lshr i64 %i.et, 1
  %i.ev = icmp eq i64 %i.ei, %i.eu
  br i1 %i.ev, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.unshifted.i.i.i.i = xor i64 %i.et, %.sroa.07.0.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i.i, 63
  %i.ew = zext i1 %.not.i.i.i.i to i64
  %spec.select.i.i.i.i = or disjoint i64 %i.eo, %i.ew
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ex = and i64 %i.et, 1
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.01.0.i.i6.i.i = phi i64 [ %i.eo, %bb.ap ], [ %spec.select.i.i.i.i, %bb.ar ] ; 2 uses
  %i.ez = icmp eq ptr %.sroa.012.0.i.i.i.i, null
  br i1 %i.ez, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = cmpxchg weak ptr %.sroa.5.0.copyload.i, i64 %.sroa.07.0.i.i.i.i, i64 %.sroa.01.0.i.i6.i.i seq_cst acquire, align 8, !noalias !1369
  %.sroa.18.0.in.i.i.i7.i.i = extractvalue { i64, i1 } %i.fa, 1
  br i1 %.sroa.18.0.in.i.i.i7.i.i, label %bb.aw, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fb = icmp ult i32 %.sroa.0.043.i.i.i.i, 7
  br i1 %i.fb, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i, label %.backedge.sink.split.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i: ; preds = %bb.av
  %.not.i20.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i20.i.i.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i
  %i.fc = mul nuw nsw i32 %.sroa.0.043.i.i.i.i, %.sroa.0.043.i.i.i.i ; 2 uses
  %xtraiter177 = and i32 %i.fc, 7                 ; 3 uses
  %i.fd = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.fd, label %.lr.ph.i23.i.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.i.preheader.new

.lr.ph.i23.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i23.i.i.i.i.preheader
  %unroll_iter181 = and i32 %i.fc, 56
  br label %.lr.ph.i23.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %.lr.ph.i23.i.i.i.i, %.lr.ph.i23.i.i.i.i.preheader.new
  %niter182 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.preheader.new ], [ %niter182.next.7, %.lr.ph.i23.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter182.next.7 = add i32 %niter182, 8         ; 2 uses
  %niter182.ncmp.7 = icmp eq i32 %niter182.next.7, %unroll_iter181
  br i1 %niter182.ncmp.7, label %.backedge.i.i.i.i.loopexit155.unr-lcssa, label %.lr.ph.i23.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i: ; preds = %bb.au
  %..i.i.i.i8.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i.i, i32 6) ; 2 uses
  %i.fe = mul nuw nsw i32 %..i.i.i.i8.i.i, %..i.i.i.i8.i.i ; 2 uses
  %.not.i30.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i30.i.i.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.preheader

.lr.ph.i33.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i
  %xtraiter171 = and i32 %i.fe, 5                 ; 3 uses
  %i.ff = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.ff, label %.lr.ph.i33.i.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.i.preheader.new

.lr.ph.i33.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i33.i.i.i.i.preheader
  %unroll_iter175 = and i32 %i.fe, 56
  br label %.lr.ph.i33.i.i.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph.i33.i.i.i.i, %.lr.ph.i33.i.i.i.i.preheader.new
  %niter176 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.preheader.new ], [ %niter176.next.7, %.lr.ph.i33.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter176.next.7 = add i32 %niter176, 8         ; 2 uses
  %niter176.ncmp.7 = icmp eq i32 %niter176.next.7, %unroll_iter175
  br i1 %niter176.ncmp.7, label %.backedge.i.i.i.i.loopexit156.unr-lcssa, label %.lr.ph.i33.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fg = icmp eq i64 %i.ej, 30
  br i1 %i.fg, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 1984 ; 2 uses
  %i.fi = load atomic ptr, ptr %i.fh acquire, align 8, !noalias !1369 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.lr.ph.i37.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i37.i.i.i.i:                               ; preds = %bb.ax, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi i32 [ %i.fn, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.ax ] ; 6 uses
  %i.fk = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 7
  br i1 %i.fk, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i37.i.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i.i
  %.not.i.i.i.i10.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i
  %i.fl = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i ; 2 uses
  %xtraiter189 = and i32 %i.fl, 7                 ; 3 uses
  %i.fm = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 3
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter193 = and i32 %i.fl, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter194 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter194.next.7, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter194.next.7 = add i32 %niter194, 8         ; 2 uses
  %niter194.ncmp.7 = icmp eq i32 %niter194.next.7, %unroll_iter193
  br i1 %niter194.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter190 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter190.next, %.lr.ph.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !1208

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, %bb.ay
  %i.fn = add i32 %.sroa.0.02.i.i.i.i.i, 1
  %i.fo = load atomic ptr, ptr %i.fh acquire, align 8, !noalias !1369 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %.lr.ph.i37.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.ax
  %.lcssa.i.i.i.i.i = phi ptr [ %i.fi, %bb.ax ], [ %i.fo, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ] ; 2 uses
  %i.fq = and i64 %.sroa.01.0.i.i6.i.i, -2
  %i.fr = add i64 %i.fq, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i, i64 1984
  %i.ft = load atomic ptr, ptr %i.fs monotonic, align 8, !noalias !1369
  %i.fu = icmp ne ptr %i.ft, null
  %i.fv = zext i1 %i.fu to i64
  %spec.select17.i.i.i.i = or disjoint i64 %i.fr, %i.fv
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.ec release, align 8, !noalias !1369
  store atomic i64 %spec.select17.i.i.i.i, ptr %.sroa.5.0.copyload.i release, align 8, !noalias !1369
  br label %bb.az

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.as
  %i.fw = load i32, ptr %i.dz, align 8, !range !46, !noalias !1367, !noundef !17 ; 2 uses
  %.not.i11.i.i = icmp eq i32 %i.fw, -1
  br i1 %.not.i11.i.i, label %bb.bj, label %bb.bi

bb.az:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.aw
  store ptr %.sroa.012.0.i.i.i.i, ptr %i.ea, align 8, !alias.scope !1368, !noalias !1367
  store i64 %i.ej, ptr %i.eb, align 8, !alias.scope !1368, !noalias !1367
  %i.fx = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %i.ej ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56 ; 3 uses
  %i.fz = load atomic i64, ptr %i.fy acquire, align 8, !noalias !1370
  %i.ga = and i64 %i.fz, 1
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i6.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i.i6.i.i.i:                                ; preds = %bb.az, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i
  %.sroa.0.02.i.i7.i.i.i = phi i32 [ %i.gf, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i ], [ 0, %bb.az ] ; 6 uses
  %i.gc = icmp ult i32 %.sroa.0.02.i.i7.i.i.i, 7
  br i1 %i.gc, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i6.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i: ; preds = %.lr.ph.i.i6.i.i.i
  %.not.i.i.i11.i.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i.i, 0
  br i1 %.not.i.i.i11.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.preheader

.lr.ph.i.i.i14.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i
  %i.gd = mul nuw nsw i32 %.sroa.0.02.i.i7.i.i.i, %.sroa.0.02.i.i7.i.i.i ; 2 uses
  %xtraiter195 = and i32 %i.gd, 7                 ; 3 uses
  %i.ge = icmp ult i32 %.sroa.0.02.i.i7.i.i.i, 3
  br i1 %i.ge, label %.lr.ph.i.i.i14.i.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.i.preheader.new

.lr.ph.i.i.i14.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i14.i.i.i.preheader
  %unroll_iter199 = and i32 %i.gd, 56
  br label %.lr.ph.i.i.i14.i.i.i

.lr.ph.i.i.i14.i.i.i:                             ; preds = %.lr.ph.i.i.i14.i.i.i, %.lr.ph.i.i.i14.i.i.i.preheader.new
  %niter200 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.preheader.new ], [ %niter200.next.7, %.lr.ph.i.i.i14.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  %niter200.next.7 = add i32 %niter200, 8         ; 2 uses
  %niter200.ncmp.7 = icmp eq i32 %niter200.next.7, %unroll_iter199
  br i1 %niter200.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i.i
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.preheader
  %lcmp.mod198 = icmp ne i32 %xtraiter195, 0
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.i.i.i14.i.i.i.epil

.lr.ph.i.i.i14.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i14.i.i.i.epil, %.lr.ph.i.i.i14.i.i.i.epil.preheader
  %epil.iter196 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i.i.i14.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1370
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.epil, !llvm.loop !1211

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i, %bb.ba
  %i.gf = add i32 %.sroa.0.02.i.i7.i.i.i, 1
  %i.gg = load atomic i64, ptr %i.fy acquire, align 8, !noalias !1370
  %i.gh = and i64 %i.gg, 1
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %.lr.ph.i.i6.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.fx, i64 40, i1 false), !noalias !1367
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %.sroa.429.0.copyload.i.i.i = load i32, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !noalias !1370 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.530.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.530.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !1367
  %i.gj = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 31
  br i1 %i.gk, label %.lr.ph.i1.i.i.i.i, label %bb.be

.lr.ph.i1.i.i.i.i:                                ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.bd
  %.sroa.0.03.i.i4.i.i.i = phi i64 [ %i.gt, %bb.bd ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56 ; 2 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8, !noalias !1370
  %i.go = and i64 %i.gn, 2
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bb, label %.lr.ph.i1.i.i.i.i.1

bb.bb:                                            ; preds = %.lr.ph.i1.i.i.i.i
  %i.gq = atomicrmw or ptr %i.gm, i64 4 acq_rel, align 8, !noalias !1370
  %i.gr = and i64 %i.gq, 2
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %.lr.ph.i1.i.i.i.i.1

.lr.ph.i1.i.i.i.i.1:                              ; preds = %bb.bb, %.lr.ph.i1.i.i.i.i
  %i.gt = add nuw nsw i64 %.sroa.0.03.i.i4.i.i.i, 2 ; 2 uses
  %i.gu = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 120 ; 2 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8, !noalias !1370
  %i.gx = and i64 %i.gw, 2
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i1.i.i.i.i.1
  %i.gz = atomicrmw or ptr %i.gv, i64 4 acq_rel, align 8, !noalias !1370
  %i.ha = and i64 %i.gz, 2
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i1.i.i.i.i.1
  %exitcond.not.i.i5.i.i.i.1 = icmp eq i64 %i.gt, 30
  br i1 %exitcond.not.i.i5.i.i.i.1, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, label %.lr.ph.i1.i.i.i.i

bb.be:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.hc = atomicrmw or ptr %i.fy, i64 2 acq_rel, align 8, !noalias !1370
  %i.hd = and i64 %i.hc, 4
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bf

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i: ; preds = %bb.bh, %bb.bd, %bb.bf
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i.i, i64 noundef 1992, i64 noundef 8) #42, !noalias !1370
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp samesign ult i64 %i.ej, 29
  br i1 %i.hf, label %.lr.ph.i3.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %bb.bf, %bb.bh
  %.sroa.0.03.i4.i.i.i.i = phi i64 [ %i.hg, %bb.bh ], [ %i.gj, %bb.bf ] ; 2 uses
  %i.hg = add nuw nsw i64 %.sroa.0.03.i4.i.i.i.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i4.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56 ; 2 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8, !noalias !1370
  %i.hk = and i64 %i.hj, 2
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i3.i.i.i.i
  %i.hm = atomicrmw or ptr %i.hi, i64 4 acq_rel, align 8, !noalias !1370
  %i.hn = and i64 %i.hm, 2
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph.i3.i.i.i.i
  %exitcond.not.i5.i.i.i.i = icmp eq i64 %i.hg, 30
  br i1 %exitcond.not.i5.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, label %.lr.ph.i3.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.bg, %bb.bb, %bb.bc, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, %bb.be
  %i.hp = icmp eq i32 %.sroa.429.0.copyload.i.i.i, 2
  br i1 %i.hp, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i, label %bb.by

bb.bi:                                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.hq = load i64, ptr %i.u, align 8, !noalias !1367, !noundef !17 ; 2 uses
  %i.hr = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc33.i:                                       ; preds = %bb.bi
  %i.hs = extractvalue { i64, i32 } %i.hr, 0      ; 2 uses
  %i.ht = icmp eq i64 %i.hs, %i.hq
  br i1 %i.ht, label %.split.i17.i.i, label %bb.bw

bb.bj:                                            ; preds = %bb.bw, %.split.i17.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1371
  store ptr %i.t, ptr %i.s, align 8, !noalias !1367
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !1367
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx.i1.i.i, align 8, !noalias !1367
  %i.hu = load i8, ptr %i.ef, align 8, !range !18, !noalias !1372, !noundef !17
  %i.hv = icmp eq i8 %i.hu, 1
  br i1 %i.hv, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i: ; preds = %bb.bj
  %i.hw = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.ee, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc34.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i: ; preds = %.noexc34.i, %bb.bj
  %.sroa.0.0.i.i.i2.i.i.i14.i.i = phi ptr [ %i.hw, %.noexc34.i ], [ %i.ee, %bb.bj ] ; 4 uses
  %i.hy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i, align 8, !noalias !1371, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i, align 8, !noalias !1371
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i18.i.i.i, label %bb.bk, label %bb.bq, !prof !23

bb.bk:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1371
  %i.hz = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc35.i:                                       ; preds = %bb.bk
  store ptr %i.hz, ptr %i.r, align 8, !noalias !1371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1371
  store ptr %i.t, ptr %i.p, align 8, !noalias !1371
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i4.i.i, align 8, !noalias !1367
  store ptr %i.u, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i.i, align 8, !noalias !1367
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull %i.hz)
          to label %bb.bn unwind label %bb.bl, !noalias !1371

bb.bl:                                            ; preds = %.noexc35.i
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.ib = load ptr, ptr %i.r, align 8, !alias.scope !1376, !noalias !1371, !nonnull !17, !noundef !17
  %i.ic = atomicrmw sub ptr %i.ib, i64 1 release, align 8, !noalias !1377
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.bm, label %.body.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #48
          to label %.body.i unwind label %bb.bp, !noalias !1371

bb.bn:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1371
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %i.ie = load ptr, ptr %i.r, align 8, !alias.scope !1381, !noalias !1371, !nonnull !17, !noundef !17
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !1382
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i16.i.i
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbGiR87yI9G2_9tiny_http4util10sequential16SequentialReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtBG_18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit:bb.a

bb.cf:                                            ; preds = %bb.cd
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1389
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.ji = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 24 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !1390, !noalias !1391, !noundef !17 ; 6 uses
  %i.jl = icmp ult i64 %i.jk, 384307168202282326
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp eq i64 %i.jk, 0
  br i1 %i.jm, label %.loopexit78.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.jn = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !alias.scope !1390, !noalias !1391, !nonnull !17, !noundef !17 ; 3 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.jk, 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i29.i.i

.lr.ph.i.i.i29.i.i:                               ; preds = %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.cg
  %.sroa.02.010.i.i.i.i.i = phi i64 [ %i.km, %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i ], [ 0, %bb.cg ] ; 5 uses
  %i.js = phi ptr [ %i.jt, %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i ], [ %i.jq, %bb.cg ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.ju = load ptr, ptr %i.js, align 8, !alias.scope !1392, !noalias !1393, !nonnull !17, !noundef !17 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !1394, !noundef !17
  %.not.i.i.i.i30.i.i = icmp eq i64 %i.jw, %i.jo
  br i1 %.not.i.i.i.i30.i.i, label %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i29.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !1392, !noalias !1393, !noundef !17
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.ka = cmpxchg ptr %i.jz, i64 0, i64 %i.jy acq_rel acquire, align 8, !noalias !1394
  %i.kb = extractvalue { i64, i1 } %i.ka, 1
  br i1 %i.kb, label %bb.ci, label %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !1392, !noalias !1393, !noundef !17 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store atomic ptr %i.kd, ptr %i.kf release, align 8, !noalias !1394
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !1394, !nonnull !17, !noundef !17
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40 ; 2 uses
  %i.kj = atomicrmw xchg ptr %i.ki, i32 1 release, align 4, !noalias !1394
  %i.kk = icmp eq i32 %i.kj, -1
  br i1 %i.kk, label %bb.cl, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.kl = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ki)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i unwind label %bb.ee, !noalias !1386 ; 0 uses

_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.i.i29.i.i
  %i.km = add nuw nsw i64 %.sroa.02.010.i.i.i.i.i, 1
  %i.kn = icmp eq ptr %i.jt, %i.jr
  br i1 %i.kn, label %.loopexit78.i.i.i, label %.lr.ph.i.i.i29.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.ko = icmp samesign ult i64 %.sroa.02.010.i.i.i.i.i, %i.jk
  tail call void @llvm.assume(i1 %i.ko)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %.sroa.02.010.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %i.kp, align 8, !noalias !1397 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !1397
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = xor i64 %.sroa.02.010.i.i.i.i.i, -1
  %i.ks = add nsw i64 %i.jk, %i.kr
  %i.kt = mul nuw nsw i64 %i.ks, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kp, ptr nonnull align 8 %i.kq, i64 %i.kt, i1 false), !noalias !1398
  %i.ku = add nsw i64 %i.jk, -1                   ; 2 uses
  store i64 %i.ku, ptr %i.jj, align 8, !alias.scope !1399, !noalias !1400
  %.not.i.i9.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i, null
  br i1 %.not.i.i9.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i, label %bb.cm, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i.i.i.i, i64 noundef %i.ku, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #49
          to label %.noexc10.i.i.i unwind label %bb.ee, !noalias !1386

.noexc10.i.i.i:                                   ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  unreachable

bb.cm:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, i64 16, i1 false), !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.k, align 8, !noalias !1386
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !1386, !noundef !17
  store ptr %i.kw, ptr %i.iu, align 8, !noalias !1386
  br i1 %i.ji, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kx = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1386
  %i.ky = and i64 %i.kx, 9223372036854775807
  %i.kz = icmp eq i64 %i.ky, 0
  br i1 %i.kz, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.co, !prof !16

bb.co:                                            ; preds = %bb.cn
  %i.la = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1386

.noexc11.i.i.i:                                   ; preds = %bb.co
  br i1 %i.la, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc11.i.i.i
  store atomic i8 1, ptr %i.jd monotonic, align 4, !noalias !1386
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.cp, %.noexc11.i.i.i, %bb.cn, %bb.cm
  %i.lb = atomicrmw xchg ptr %.sroa.5.0.copyload.i, i32 0 release, align 4, !noalias !1386
  %i.lc = icmp eq i32 %i.lb, 2
  br i1 %i.lc, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit.i.i.i, !prof !23

bb.cq:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.sroa.5.0.copyload.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1386

.loopexit78.i.i.i:                                ; preds = %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 104
  %i.le = load i8, ptr %i.ld, align 8, !range !41, !noalias !1386, !noundef !17
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.dz, label %bb.dd

.loopexit.i.i.i:                                  ; preds = %bb.cv
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp.i.i.i:                         ; preds = %.invoke.i.i.i, %bb.cq, %bb.co
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.lg = load ptr, ptr %i.k, align 8, !alias.scope !1405, !noalias !1386, !nonnull !17, !noundef !17
  %i.lh = atomicrmw sub ptr %i.lg, i64 1 release, align 8, !noalias !1406
  %i.li = icmp eq i64 %i.lh, 1
  br i1 %i.li, label %bb.cs, label %.body.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #48
          to label %.body.i unwind label %bb.dc, !noalias !1386

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.cq, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.iu, align 8, !noalias !1386, !noundef !17 ; 11 uses
  %i.lj = icmp eq ptr %.val8.i.i.i, null
  br i1 %i.lj, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 57
  %i.ll = load i8, ptr %i.lk, align 1, !range !41, !noalias !1407, !noundef !17
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ln = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 56 ; 2 uses
  %i.lo = load atomic i8, ptr %i.ln acquire, align 1, !noalias !1407
  %.not2.i.i.i.i.i = icmp eq i8 %i.lo, 0
  br i1 %.not2.i.i.i.i.i, label %.lr.ph.i.i14.i.i.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i.i14.i.i.i:                               ; preds = %bb.cu, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i
  %.sroa.0.03.i.i.i36.i.i = phi i32 [ %i.ls, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i ], [ 0, %bb.cu ] ; 6 uses
  %i.lp = icmp ult i32 %.sroa.0.03.i.i.i36.i.i, 7
  br i1 %i.lp, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i14.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i unwind label %.loopexit.i.i.i, !noalias !1386

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i: ; preds = %.lr.ph.i.i14.i.i.i
  %.not.i.i.i16.i.i.i = icmp eq i32 %.sroa.0.03.i.i.i36.i.i, 0
  br i1 %.not.i.i.i16.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i, label %.lr.ph.i.i.i.i42.i.i.preheader

.lr.ph.i.i.i.i42.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i
  %i.lq = mul nuw nsw i32 %.sroa.0.03.i.i.i36.i.i, %.sroa.0.03.i.i.i36.i.i ; 2 uses
  %xtraiter = and i32 %i.lq, 7                    ; 3 uses
  %i.lr = icmp ult i32 %.sroa.0.03.i.i.i36.i.i, 3
  br i1 %i.lr, label %.lr.ph.i.i.i.i42.i.i.epil.preheader, label %.lr.ph.i.i.i.i42.i.i.preheader.new

.lr.ph.i.i.i.i42.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i42.i.i.preheader
  %unroll_iter = and i32 %i.lq, 56
  br label %.lr.ph.i.i.i.i42.i.i

.lr.ph.i.i.i.i42.i.i:                             ; preds = %.lr.ph.i.i.i.i42.i.i, %.lr.ph.i.i.i.i42.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i42.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i42.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i42.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i, label %.lr.ph.i.i.i.i42.i.i.epil.preheader

.lr.ph.i.i.i.i42.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.i.preheader
  %lcmp.mod170 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.i.i.i42.i.i.epil

.lr.ph.i.i.i.i42.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i42.i.i.epil, %.lr.ph.i.i.i.i42.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i42.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !1407
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i, label %.lr.ph.i.i.i.i42.i.i.epil, !llvm.loop !1278

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i, %bb.cv
  %i.ls = add i32 %.sroa.0.03.i.i.i36.i.i, 1
  %i.lt = load atomic i8, ptr %i.ln acquire, align 1, !noalias !1407
  %.not.i.i15.i.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i15.i.i.i, label %.lr.ph.i.i14.i.i.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i, %bb.cu
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 40 ; 2 uses
  %.sroa.47.0.copyload.i.i.i.i = load i32, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !1407 ; 2 uses
  store i32 2, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !1407
  %.not.i.i35.i.i = icmp eq i32 %.sroa.47.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i35.i.i, label %.invoke.i.i.i, label %bb.cx, !prof !23

bb.cw:                                            ; preds = %bb.ct
  %.sroa.4.0..sroa_idx.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i17.i.i.i, align 8, !noalias !1407 ; 2 uses
  store i32 2, ptr %.sroa.4.0..sroa_idx.i17.i.i.i, align 8, !noalias !1407
  %.not16.i.i.i.i = icmp eq i32 %.sroa.4.0.copyload.i.i.i.i, 2
  br i1 %.not16.i.i.i.i, label %.invoke.i.i.i, label %bb.cy, !prof !23

.invoke.i.i.i:                                    ; preds = %bb.cw, %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.lu = phi ptr [ @225, %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i.i.i.i ], [ @226, %bb.cw ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lu) #49
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1386

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.cx:                                            ; preds = %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.040.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.val8.i.i.i, i64 40, i1 false), !noalias !1386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.941.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.510.0..sroa_idx.i.i.i.i, i64 12, i1 false), !noalias !1386
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef 64, i64 noundef 8) #42, !noalias !1407
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.040.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.val8.i.i.i, i64 40, i1 false), !noalias !1386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.941.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i, i64 12, i1 false), !noalias !1386
  %i.lv = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 56
  store atomic i8 1, ptr %i.lv release, align 8, !noalias !1407
  br label %bb.cz

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit.i.i.i
  store i8 1, ptr %i.af, align 8, !alias.scope !1385, !noalias !1346
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.sroa.5.0.ph.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i, %bb.cy ], [ %.sroa.47.0.copyload.i.i.i.i, %bb.cx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.040.i.i.i, i64 40, i1 false), !noalias !1346
  %.sroa.564.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.564.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.941.i.i.i, i64 12, i1 false), !noalias !1346
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %.pre50.i.i = phi i32 [ %.sroa.5.0.ph.i.i.i, %bb.cz ], [ 2, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %i.lw = load ptr, ptr %i.k, align 8, !alias.scope !1412, !noalias !1386, !nonnull !17, !noundef !17
  %i.lx = atomicrmw sub ptr %i.lw, i64 1 release, align 8, !noalias !1413
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.db, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit22.i.i.i

bb.db:                                            ; preds = %bb.da
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1345

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit22.i.i.i: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1386
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

bb.dc:                                            ; preds = %bb.ee, %bb.cs
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1386
  unreachable

bb.dd:                                            ; preds = %.loopexit78.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1415
  store ptr %i.l, ptr %i.i, align 8, !noalias !1416
  %.sroa.645.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %.sroa.645.0..sroa_idx.i.i.i, align 8, !noalias !1416
  %.sroa.750.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.750.0..sroa_idx.i.i.i, align 8, !noalias !1416
  %.sroa.855.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.855.0..sroa_idx.i.i.i, align 8, !noalias !1416
  %.sroa.960.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %.sroa.960.0..sroa_idx.i.i.i, align 8, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.ma = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i8, ptr %i.mb, align 8, !range !18, !noalias !1417, !noundef !17
  %i.md = icmp eq i8 %i.mc, 1
  br i1 %i.md, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i32.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i31.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i31.i.i: ; preds = %bb.dd
  %i.me = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.ma, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i.i.i.i unwind label %bb.ds, !noalias !1415 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i31.i.i
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5M_ECsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i32.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i32.i.i: ; preds = %.noexc.i.i.i.i, %bb.dd
  %.sroa.0.0.i.i.i2.i.i.i33.i.i = phi ptr [ %i.me, %.noexc.i.i.i.i ], [ %i.ma, %bb.dd ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1418
  %i.mg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i33.i.i, align 8, !noalias !1419, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i33.i.i, align 8, !noalias !1419
  %.not.i.i.i23.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i23.i.i.i, label %bb.de, label %bb.dl, !prof !23

bb.de:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i32.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1419
  %i.mh = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.df unwind label %bb.ds, !noalias !1415 ; 4 uses

bb.df:                                            ; preds = %bb.de
  store ptr %i.mh, ptr %i.g, align 8, !noalias !1419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1419
  store i8 2, ptr %.sroa.960.0..sroa_idx.i.i.i, align 8, !noalias !1419
  store ptr %i.l, ptr %i.d, align 8, !noalias !1416
  %.sroa.645.0..sroa_idx48.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.645.0..sroa_idx48.i.i.i, align 8, !noalias !1416
  %.sroa.750.0..sroa_idx53.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.750.0..sroa_idx53.i.i.i, align 8, !noalias !1416
  %.sroa.855.0..sroa_idx58.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.855.0..sroa_idx58.i.i.i, align 8, !noalias !1416
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !1419
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d, ptr nonnull %i.mh)
          to label %bb.di unwind label %bb.dg, !noalias !1418

bb.dg:                                            ; preds = %bb.df
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mj = atomicrmw sub ptr %i.mh, i64 1 release, align 8, !noalias !1420
  %i.mk = icmp eq i64 %i.mj, 1
  br i1 %i.mk, label %bb.dh, label %.body.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #48
          to label %.body.i.i.i.i unwind label %bb.dk, !noalias !1419

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1419
  %i.ml = atomicrmw sub ptr %i.mh, i64 1 release, align 8, !noalias !1421
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit24.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit24.i.i.i.i.i.i unwind label %bb.ds, !noalias !1415

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit24.i.i.i.i.i.i: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1419
end_hunk_3
begin_hunk_4_@_RNCNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtBa_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerE00Csc4241EHy6Do_9typst_kit:bb.a

bb.k:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.l, align 8, !range !44, !noundef !17
  %.not7 = icmp eq i64 %i.ah, 2
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.k, ptr noundef nonnull align 8 dereferenceable(176) %i.l, i64 176, i1 false)
  invoke fastcc void @_RNvMNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queueINtB2_13MessagesQueueNtB6_7MessageE4pushCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.k)
          to label %bb.o unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.n

bb.n:                                             ; preds = %bb.ab, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.c

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.i

bb.p:                                             ; preds = %bb.z, %bb.w, %bb.ct, %bb.cs, %.body34, %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.q:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.ac, ptr noundef nonnull align 128 dereferenceable(512) %i.j, i64 512, i1 false), !noalias !4185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.r, ptr noundef nonnull align 8 dereferenceable(192) %i.s, i64 192, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.r

bb.r:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs_NtCsbGiR87yI9G2_9tiny_http6clientNtB4_16ClientConnectionNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.r)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.body34:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.cg, %bb.ch, %bb.cp, %bb.cq, %bb.ac, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %i.mt, %bb.cs ], [ %i.mo, %bb.cp ], [ %i.mo, %bb.cq ], [ %i.ma, %bb.ch ], [ %i.ma, %bb.cg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit79, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit84, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.r) #46
          to label %bb.w unwind label %bb.p

.loopexit:                                        ; preds = %.backedge.sink.split.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit:                      ; preds = %bb.au
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.as
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.co, %bb.cj, %bb.cf, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i15.i, %bb.cd
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.ae
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.s:                                             ; preds = %bb.r
  %i.as = load i64, ptr %i.q, align 8, !range !44, !noundef !17
  %.not8 = icmp eq i64 %i.as, 2
  br i1 %.not8, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.n, ptr noundef nonnull align 8 dereferenceable(176) %i.q, i64 176, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8, !nonnull !17, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.av = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.ad, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #45
          to label %.noexc25 unwind label %bb.cs

.noexc25:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.r)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %.body34
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body34 ], [ %i.ax, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiveruEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac) #46
          to label %bb.z unwind label %bb.p

bb.x:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiveruEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.ay, %bb.aa ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac) #46
          to label %.thread unwind label %bb.p

bb.aa:                                            ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac)
  br label %bb.n

bb.ac:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.ad:                                            ; preds = %bb.t
  invoke void @_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request18with_notify_sender(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.n, i64 noundef 1, ptr noundef nonnull %i.ac)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.p, ptr noundef nonnull align 8 dereferenceable(176) %i.o, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queueINtB2_13MessagesQueueNtB6_7MessageE4pushCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.p)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 -1, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %i.ba = load atomic i64, ptr %i.ac acquire, align 128, !noalias !4187
  %i.bb = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !4187
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge.i.i.i, %bb.ag
  %.sroa.0.043.i.i.i = phi i32 [ 0, %bb.ag ], [ %.sroa.0.043.be.i.i.i, %.backedge.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.bb, %bb.ag ], [ %i.bm, %.backedge.i.i.i ] ; 35 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.ba, %bb.ag ], [ %i.bl, %.backedge.i.i.i ] ; 5 uses
  %i.bc = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.bd = and i64 %i.bc, 31                       ; 6 uses
  %i.be = icmp eq i64 %i.bd, 31
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bf = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.bf, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i: ; preds = %bb.ai
  %.not.i.i.i25.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i.i.i25.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.preheader

.lr.ph.i.i.i28.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i
  %i.bg = mul nuw nsw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter155 = and i32 %i.bg, 7                 ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bh, label %.lr.ph.i.i.i28.i.epil.preheader, label %.lr.ph.i.i.i28.i.preheader.new

.lr.ph.i.i.i28.i.preheader.new:                   ; preds = %.lr.ph.i.i.i28.i.preheader
  %unroll_iter159 = and i32 %i.bg, 56
  br label %.lr.ph.i.i.i28.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i.i.i28.i, %.lr.ph.i.i.i28.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i28.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i28.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %.backedge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i28.i

bb.aj:                                            ; preds = %bb.ah
  %i.bi = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.bj = and i64 %.sroa.07.0.i.i.i, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ak, label %bb.an

.backedge.sink.split.i.i.i:                       ; preds = %bb.ap, %bb.ai
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.backedge.i.i.i unwind label %.loopexit

.backedge.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i28.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.epil.preheader

.lr.ph.i.i.i28.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i28.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i28.i.epil

.lr.ph.i.i.i28.i.epil:                            ; preds = %.lr.ph.i.i.i28.i.epil, %.lr.ph.i.i.i28.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i28.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i28.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.epil, !llvm.loop !4146

.backedge.i.i.i.loopexit138.unr-lcssa:            ; preds = %.lr.ph.i23.i.i.i
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit138.unr-lcssa, %.lr.ph.i23.i.i.i.preheader
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i23.i.i.i.epil

.lr.ph.i23.i.i.i.epil:                            ; preds = %.lr.ph.i23.i.i.i.epil, %.lr.ph.i23.i.i.i.epil.preheader
  %epil.iter150 = phi i32 [ 0, %.lr.ph.i23.i.i.i.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil, !llvm.loop !4147

.backedge.i.i.i.loopexit139.unr-lcssa:            ; preds = %.lr.ph.i33.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit139.unr-lcssa, %.lr.ph.i33.i.i.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i33.i.i.i.epil

.lr.ph.i33.i.i.i.epil:                            ; preds = %.lr.ph.i33.i.i.i.epil, %.lr.ph.i33.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil, !llvm.loop !4148

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.loopexit139.unr-lcssa, %.lr.ph.i33.i.i.i.epil, %.backedge.i.i.i.loopexit138.unr-lcssa, %.lr.ph.i23.i.i.i.epil, %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i28.i.epil, %.backedge.sink.split.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i
  %i.bl = load atomic i64, ptr %i.ac acquire, align 128, !noalias !4187
  %i.bm = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !4187
  %.sroa.0.043.be.i.i.i = add i32 %.sroa.0.043.i.i.i, 1
  br label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  fence seq_cst
  %i.bn = load atomic i64, ptr %i.ap monotonic, align 128, !noalias !4187 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bc, %i.bo
  br i1 %i.bp, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.unshifted.i.i.i = xor i64 %i.bn, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.bq = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.bi, %i.bq
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.br = and i64 %i.bn, 1
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

bb.an:                                            ; preds = %bb.al, %bb.aj
  %.sroa.01.0.i.i9.i = phi i64 [ %i.bi, %bb.aj ], [ %spec.select.i.i.i, %bb.al ] ; 2 uses
  %i.bt = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.bt, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bu = cmpxchg weak ptr %i.ac, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i9.i seq_cst acquire, align 8, !noalias !4187
  %.sroa.18.0.in.i.i.i10.i = extractvalue { i64, i1 } %i.bu, 1
  br i1 %.sroa.18.0.in.i.i.i10.i, label %bb.aq, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.bv = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.bv, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i: ; preds = %bb.ap
  %.not.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i20.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i
  %i.bw = mul nuw nsw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter149 = and i32 %i.bw, 7                 ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bx, label %.lr.ph.i23.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.preheader.new

.lr.ph.i23.i.i.i.preheader.new:                   ; preds = %.lr.ph.i23.i.i.i.preheader
  %unroll_iter153 = and i32 %i.bw, 56
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i, %.lr.ph.i23.i.i.i.preheader.new
  %niter154 = phi i32 [ 0, %.lr.ph.i23.i.i.i.preheader.new ], [ %niter154.next.7, %.lr.ph.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %.backedge.i.i.i.loopexit138.unr-lcssa, label %.lr.ph.i23.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i: ; preds = %bb.ao
  %..i.i.i.i11.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i, i32 6) ; 2 uses
  %i.by = mul nuw nsw i32 %..i.i.i.i11.i, %..i.i.i.i11.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i30.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.preheader

.lr.ph.i33.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i
  %xtraiter = and i32 %i.by, 5                    ; 3 uses
  %i.bz = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bz, label %.lr.ph.i33.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.preheader.new

.lr.ph.i33.i.i.i.preheader.new:                   ; preds = %.lr.ph.i33.i.i.i.preheader
  %unroll_iter = and i32 %i.by, 56
  br label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %.lr.ph.i33.i.i.i, %.lr.ph.i33.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.i.i.loopexit139.unr-lcssa, label %.lr.ph.i33.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ca = icmp eq i64 %i.bd, 30
  br i1 %i.ca, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.cb = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !4187 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %bb.ar, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %i.cg, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.ar ] ; 6 uses
  %i.cd = icmp ult i32 %.sroa.0.02.i.i.i.i, 7
  br i1 %i.cd, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i37.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i
  %.not.i.i.i.i13.i = icmp eq i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %.not.i.i.i.i13.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.ce = mul nuw nsw i32 %.sroa.0.02.i.i.i.i, %.sroa.0.02.i.i.i.i ; 2 uses
  %xtraiter161 = and i32 %i.ce, 7                 ; 3 uses
  %i.cf = icmp ult i32 %.sroa.0.02.i.i.i.i, 3
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter165 = and i32 %i.ce, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !4149

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.as, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.cg = add i32 %.sroa.0.02.i.i.i.i, 1
  %i.ch = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !4187 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.ar
  %.lcssa.i.i.i.i = phi ptr [ %i.cb, %bb.ar ], [ %i.ch, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.cj = and i64 %.sroa.01.0.i.i9.i, -2
  %i.ck = add i64 %i.cj, 2
  %i.cl = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !4187
  %i.cm = icmp ne ptr %i.cl, null
  %i.cn = zext i1 %i.cm to i64
  %spec.select17.i.i.i = or disjoint i64 %i.ck, %i.cn
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.ao release, align 8, !noalias !4187
  store atomic i64 %spec.select17.i.i.i, ptr %i.ac release, align 128, !noalias !4187
  br label %bb.at

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.am
  %i.co = load i32, ptr %i.al, align 8, !range !46, !noundef !17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.co, -1
  br i1 %.not.i14.i, label %bb.ce, label %bb.cd

bb.at:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.aq
  store ptr %.sroa.012.0.i.i.i, ptr %i.am, align 8, !alias.scope !4187
  store i64 %i.bd, ptr %i.an, align 8, !alias.scope !4187
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.bd ; 3 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8
  %i.cs = and i64 %i.cr, 1
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.at, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i
  %.sroa.0.02.i.i7.i.i = phi i32 [ %i.cx, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i ], [ 0, %bb.at ] ; 6 uses
  %i.cu = icmp ult i32 %.sroa.0.02.i.i7.i.i, 7
  br i1 %i.cu, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i6.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i unwind label %.loopexit.split-lp.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i: ; preds = %.lr.ph.i.i6.i.i
  %.not.i.i.i11.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i, 0
  br i1 %.not.i.i.i11.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.preheader

.lr.ph.i.i.i14.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.cv = mul nuw nsw i32 %.sroa.0.02.i.i7.i.i, %.sroa.0.02.i.i7.i.i ; 2 uses
  %xtraiter167 = and i32 %i.cv, 7                 ; 3 uses
  %i.cw = icmp ult i32 %.sroa.0.02.i.i7.i.i, 3
  br i1 %i.cw, label %.lr.ph.i.i.i14.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.preheader.new

.lr.ph.i.i.i14.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i14.i.i.preheader
  %unroll_iter171 = and i32 %i.cv, 56
  br label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %.lr.ph.i.i.i14.i.i, %.lr.ph.i.i.i14.i.i.preheader.new
  %niter172 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.preheader.new ], [ %niter172.next.7, %.lr.ph.i.i.i14.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter172.next.7 = add i32 %niter172, 8         ; 2 uses
  %niter172.ncmp.7 = icmp eq i32 %niter172.next.7, %unroll_iter171
  br i1 %niter172.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i
  %lcmp.mod169.not = icmp eq i32 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.preheader
  %lcmp.mod170 = icmp ne i32 %xtraiter167, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.i.i14.i.i.epil

.lr.ph.i.i.i14.i.i.epil:                          ; preds = %.lr.ph.i.i.i14.i.i.epil, %.lr.ph.i.i.i14.i.i.epil.preheader
  %epil.iter168 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph.i.i.i14.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter168.next = add i32 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i32 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil, !llvm.loop !4150

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.epil, %bb.au, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.cx = add i32 %.sroa.0.02.i.i7.i.i, 1
  %i.cy = load atomic i64, ptr %i.cq acquire, align 8
  %i.cz = and i64 %i.cy, 1
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, %bb.at
  %i.db = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.dc = icmp eq i64 %i.db, 31
  br i1 %i.dc, label %.preheader.preheader.i.i.i, label %bb.bz

.preheader.preheader.i.i.i:                       ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.dd = load atomic i64, ptr %i.cp acquire, align 8
  %i.de = and i64 %i.dd, 2
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.av, label %.preheader.1.i.i.i

bb.av:                                            ; preds = %.preheader.preheader.i.i.i
  %i.dg = atomicrmw or ptr %i.cp, i64 4 acq_rel, align 8
  %i.dh = and i64 %i.dg, 2
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %bb.av, %.preheader.preheader.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 16 ; 2 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8
  %i.dl = and i64 %i.dk, 2
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.aw, label %.preheader.2.i.i.i

bb.aw:                                            ; preds = %.preheader.1.i.i.i
  %i.dn = atomicrmw or ptr %i.dj, i64 4 acq_rel, align 8
  %i.do = and i64 %i.dn, 2
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.2.i.i.i

.preheader.2.i.i.i:                               ; preds = %bb.aw, %.preheader.1.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 24 ; 2 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8
  %i.ds = and i64 %i.dr, 2
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.ax, label %.preheader.3.i.i.i

bb.ax:                                            ; preds = %.preheader.2.i.i.i
  %i.du = atomicrmw or ptr %i.dq, i64 4 acq_rel, align 8
  %i.dv = and i64 %i.du, 2
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.3.i.i.i

.preheader.3.i.i.i:                               ; preds = %bb.ax, %.preheader.2.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 32 ; 2 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8
  %i.dz = and i64 %i.dy, 2
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.ay, label %.preheader.4.i.i.i

bb.ay:                                            ; preds = %.preheader.3.i.i.i
  %i.eb = atomicrmw or ptr %i.dx, i64 4 acq_rel, align 8
  %i.ec = and i64 %i.eb, 2
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.4.i.i.i

.preheader.4.i.i.i:                               ; preds = %bb.ay, %.preheader.3.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 40 ; 2 uses
  %i.ef = load atomic i64, ptr %i.ee acquire, align 8
  %i.eg = and i64 %i.ef, 2
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.az, label %.preheader.5.i.i.i

bb.az:                                            ; preds = %.preheader.4.i.i.i
  %i.ei = atomicrmw or ptr %i.ee, i64 4 acq_rel, align 8
  %i.ej = and i64 %i.ei, 2
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.5.i.i.i

.preheader.5.i.i.i:                               ; preds = %bb.az, %.preheader.4.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 48 ; 2 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8
  %i.en = and i64 %i.em, 2
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.ba, label %.preheader.6.i.i.i

bb.ba:                                            ; preds = %.preheader.5.i.i.i
  %i.ep = atomicrmw or ptr %i.el, i64 4 acq_rel, align 8
  %i.eq = and i64 %i.ep, 2
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.6.i.i.i

.preheader.6.i.i.i:                               ; preds = %bb.ba, %.preheader.5.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 56 ; 2 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8
  %i.eu = and i64 %i.et, 2
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.bb, label %.preheader.7.i.i.i

bb.bb:                                            ; preds = %.preheader.6.i.i.i
  %i.ew = atomicrmw or ptr %i.es, i64 4 acq_rel, align 8
  %i.ex = and i64 %i.ew, 2
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.7.i.i.i

.preheader.7.i.i.i:                               ; preds = %bb.bb, %.preheader.6.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 64 ; 2 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8
  %i.fb = and i64 %i.fa, 2
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.bc, label %.preheader.8.i.i.i

bb.bc:                                            ; preds = %.preheader.7.i.i.i
  %i.fd = atomicrmw or ptr %i.ez, i64 4 acq_rel, align 8
  %i.fe = and i64 %i.fd, 2
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.8.i.i.i

.preheader.8.i.i.i:                               ; preds = %bb.bc, %.preheader.7.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 72 ; 2 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8
  %i.fi = and i64 %i.fh, 2
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.bd, label %.preheader.9.i.i.i

bb.bd:                                            ; preds = %.preheader.8.i.i.i
  %i.fk = atomicrmw or ptr %i.fg, i64 4 acq_rel, align 8
  %i.fl = and i64 %i.fk, 2
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.9.i.i.i

.preheader.9.i.i.i:                               ; preds = %bb.bd, %.preheader.8.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 80 ; 2 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8
  %i.fp = and i64 %i.fo, 2
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.be, label %.preheader.10.i.i.i

bb.be:                                            ; preds = %.preheader.9.i.i.i
  %i.fr = atomicrmw or ptr %i.fn, i64 4 acq_rel, align 8
  %i.fs = and i64 %i.fr, 2
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.10.i.i.i

.preheader.10.i.i.i:                              ; preds = %bb.be, %.preheader.9.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 88 ; 2 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8
  %i.fw = and i64 %i.fv, 2
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.bf, label %.preheader.11.i.i.i

bb.bf:                                            ; preds = %.preheader.10.i.i.i
  %i.fy = atomicrmw or ptr %i.fu, i64 4 acq_rel, align 8
  %i.fz = and i64 %i.fy, 2
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.11.i.i.i

.preheader.11.i.i.i:                              ; preds = %bb.bf, %.preheader.10.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 96 ; 2 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8
  %i.gd = and i64 %i.gc, 2
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.bg, label %.preheader.12.i.i.i

bb.bg:                                            ; preds = %.preheader.11.i.i.i
end_hunk_4
begin_hunk_5_@_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0Csc4241EHy6Do_9typst_kit:bb.a
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.an ], [ false, %bb.y ], [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.v ], [ false, %bb.bg ], [ false, %bb.bk ], [ false, %bb.z ], [ false, %bb.o ], [ false, %bb.bi ], [ false, %bb.w ], [ true, %bb.j ], [ false, %bb.ap ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4556, !noalias !4557, !nonnull !17, !noundef !17
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ac = add i64 %i.s, 1
  store i64 %i.ac, ptr %i.r, align 8, !alias.scope !4556, !noalias !4557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !41, !noundef !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.al = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.al, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.am = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !17, !align !25, !noundef !17 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !range !46, !noundef !17 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %bb.p
  %i.av = load atomic i64, ptr %i.at acquire, align 8 ; 3 uses
  switch i64 %i.av, label %.thread26 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %.noexc38
  %i.aw = load atomic i64, ptr %i.at acquire, align 8 ; 3 uses
  switch i64 %i.aw, label %.thread26 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.ax = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc37:                                         ; preds = %bb.q
  %i.ay = extractvalue { i64, i32 } %i.ax, 0      ; 3 uses
  %i.az = extractvalue { i64, i32 } %i.ax, 1      ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.aq
  %i.bb = icmp slt i64 %i.ay, %i.aq
  %i.bc = icmp samesign ult i32 %i.az, %i.as
  %spec.select.i = select i1 %i.ba, i1 %i.bc, i1 %i.bb
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc37
  %i.bd = cmpxchg ptr %i.at, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 3)
  br i1 %i.be, label %.thread29, label %.split7.us.i

bb.s:                                             ; preds = %.noexc37
  %i.bg = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.aq, i32 noundef range(i32 -1, 1000000000) %i.as, i64 noundef %i.ay, i32 noundef %i.az)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.s
  %i.bh = extractvalue { i64, i32 } %i.bg, 0
  %i.bi = extractvalue { i64, i32 } %i.bg, 1
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, i64 noundef %i.bh, i32 noundef %i.bi)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.av, %.split.us.i ], [ %i.av, %.split.us.i ], [ %i.aw, %.split.i ], [ %i.aw, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread29
    i64 2, label %bb.x
    i64 3, label %.thread26
  ], !prof !72

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread29:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bl = cmpxchg ptr %i.bk, i32 0, i32 1 acquire monotonic, align 4, !noalias !4559
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.noexc41, label %bb.v, !prof !16

bb.v:                                             ; preds = %.thread29
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bk)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.v, %.thread29
  %i.bn = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4559
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.ab, label %bb.w, !prof !16

bb.w:                                             ; preds = %.noexc41
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.w
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %bb.ab

bb.x:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bv = cmpxchg ptr %i.bu, i32 0, i32 1 acquire monotonic, align 4, !noalias !4560
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.noexc46, label %bb.y, !prof !16

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bu)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.y, %bb.x
  %i.bx = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4560
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.au, label %bb.z, !prof !16

bb.z:                                             ; preds = %.noexc46
  %i.ca = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.z
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i8
  br label %bb.au

.thread26:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.cd = load atomic i8, ptr %i.j acquire, align 8
  %.not2.i = icmp eq i8 %i.cd, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit

.lr.ph.i:                                         ; preds = %.thread26, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ch, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread26 ] ; 6 uses
  %i.ce = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.ce, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i50 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i50, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.cf = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.cf, 7                    ; 3 uses
  %i.cg = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.cg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cf, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4491

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.aa, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.ch = add i32 %.sroa.0.03.i, 1
  %i.ci = load atomic i8, ptr %i.j acquire, align 8
  %.not.i49 = icmp eq i8 %i.ci, 0
  br i1 %.not.i49, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit

bb.ab:                                            ; preds = %.noexc42, %.noexc41
  %.sroa.01.0.i.i = phi i8 [ %i.bs, %.noexc42 ], [ 0, %.noexc41 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !noalias !4559
  %.not.i.i.not = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.not, label %bb.ag, label %bb.ac, !prof !16

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4561
  store ptr %i.bk, ptr %i.a, align 8, !noalias !4561
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cl, align 8, !noalias !4561
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #45
          to label %bb.ae unwind label %bb.ad, !noalias !4562

bb.ad:                                            ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %.body unwind label %bb.af, !noalias !4562

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4562
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.co = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4563)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !4563, !noalias !4564, !nonnull !17, !noundef !17 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !4563, !noalias !4564, !noundef !17 ; 7 uses
  %.idx87 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx87
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %._crit_edge86, label %.lr.ph85

bb.ah:                                            ; preds = %.lr.ph85
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.ag, %bb.ah
  %i.cy = phi ptr [ %i.cv, %bb.ah ], [ %i.cq, %bb.ag ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ah ], [ 0, %bb.ag ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !4565, !noalias !4566, !noundef !17
  %.not.i.i52 = icmp eq i64 %i.db, %i.h
  br i1 %.not.i.i52, label %bb.ai, label %bb.ah

bb.ai:                                            ; preds = %.lr.ph85
  call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %i.dc = icmp ult i64 %i.cs, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %.not.i.i.i = icmp samesign ult i64 %i.cz, %i.cs
  br i1 %.not.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cz ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.dd, align 8, !noalias !4569 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !4569
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = xor i64 %i.cz, -1
  %i.dg = add nsw i64 %i.cs, %i.df
  %i.dh = mul nuw nsw i64 %i.dg, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.de, i64 %i.dh, i1 false), !noalias !4570
  %i.di = add nsw i64 %i.cs, -1                   ; 2 uses
  store i64 %i.di, ptr %i.cr, align 8, !alias.scope !4571, !noalias !4572
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %bb.ak, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.ai
  %i.dj = phi i64 [ %i.cs, %bb.ai ], [ %i.di, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cz, i64 noundef %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #49
          to label %.noexc53 unwind label %bb.aj

.noexc53:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  unreachable

bb.aj:                                            ; preds = %bb.al, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, %._crit_edge86
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr nonnull %i.bk, i8 %.sroa.01.0.i.i) #46
          to label %.body unwind label %bb.at

bb.ak:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.dm = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !4573
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit unwind label %bb.aj

._crit_edge86:                                    ; preds = %bb.ah, %bb.ag
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #45
          to label %bb.c unwind label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.ak, %bb.al
  br i1 %i.co, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.do = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.an, !prof !16

bb.an:                                            ; preds = %bb.am
  %i.dr = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.an
  br i1 %i.dr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.ao

bb.ao:                                            ; preds = %.noexc56
  store atomic i8 1, ptr %i.cj monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55: ; preds = %bb.ao, %.noexc56, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.ds = atomicrmw xchg ptr %i.bk, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit58, !prof !23

bb.ap:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit58: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.du, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit78, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit58
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bj ], [ -2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit78 ], [ -2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit58 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  %i.dv = load i64, ptr %i.f, align 8, !range !39, !alias.scope !4574, !noundef !17
  switch i64 %i.dv, label %bb.as [
    i64 -2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEEECsc4241EHy6Do_9typst_kit.exit
    i64 -1, label %bb.ar
end_hunk_5
begin_hunk_6_@_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit:bb.a
  %.sroa.07.3.ph.ph.ph = phi i1 [ false, %bb.an ], [ false, %bb.y ], [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.v ], [ false, %bb.bg ], [ false, %bb.bk ], [ false, %bb.z ], [ false, %bb.o ], [ false, %bb.bi ], [ false, %bb.w ], [ true, %bb.j ], [ false, %bb.ap ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4672, !noalias !4673, !nonnull !17, !noundef !17
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ac = add i64 %i.s, 1
  store i64 %i.ac, ptr %i.r, align 8, !alias.scope !4672, !noalias !4673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !41, !noundef !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.al = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.al, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.am = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !17, !align !25, !noundef !17 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !range !46, !noundef !17 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %bb.p
  %i.av = load atomic i64, ptr %i.at acquire, align 8 ; 3 uses
  switch i64 %i.av, label %.thread28 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %.noexc43
  %i.aw = load atomic i64, ptr %i.at acquire, align 8 ; 3 uses
  switch i64 %i.aw, label %.thread28 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.ax = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc42:                                         ; preds = %bb.q
  %i.ay = extractvalue { i64, i32 } %i.ax, 0      ; 3 uses
  %i.az = extractvalue { i64, i32 } %i.ax, 1      ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.aq
  %i.bb = icmp slt i64 %i.ay, %i.aq
  %i.bc = icmp samesign ult i32 %i.az, %i.as
  %spec.select.i = select i1 %i.ba, i1 %i.bc, i1 %i.bb
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc42
  %i.bd = cmpxchg ptr %i.at, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 3)
  br i1 %i.be, label %.thread31, label %.split7.us.i

bb.s:                                             ; preds = %.noexc42
  %i.bg = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.aq, i32 noundef range(i32 -1, 1000000000) %i.as, i64 noundef %i.ay, i32 noundef %i.az)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc43:                                         ; preds = %bb.s
  %i.bh = extractvalue { i64, i32 } %i.bg, 0
  %i.bi = extractvalue { i64, i32 } %i.bg, 1
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, i64 noundef %i.bh, i32 noundef %i.bi)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.av, %.split.us.i ], [ %i.av, %.split.us.i ], [ %i.aw, %.split.i ], [ %i.aw, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread31
    i64 2, label %bb.x
    i64 3, label %.thread28
  ], !prof !72

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread31:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bl = cmpxchg ptr %i.bk, i32 0, i32 1 acquire monotonic, align 4, !noalias !4675
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.noexc46, label %bb.v, !prof !16

bb.v:                                             ; preds = %.thread31
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bk)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.v, %.thread31
  %i.bn = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4675
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.ab, label %bb.w, !prof !16

bb.w:                                             ; preds = %.noexc46
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.w
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %bb.ab

bb.x:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bv = cmpxchg ptr %i.bu, i32 0, i32 1 acquire monotonic, align 4, !noalias !4676
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.noexc51, label %bb.y, !prof !16

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bu)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.y, %bb.x
  %i.bx = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4676
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.au, label %bb.z, !prof !16

bb.z:                                             ; preds = %.noexc51
  %i.ca = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.z
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i8
  br label %bb.au

.thread28:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.cd = load atomic i8, ptr %i.j acquire, align 8
  %.not2.i = icmp eq i8 %i.cd, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit

.lr.ph.i:                                         ; preds = %.thread28, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ch, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread28 ] ; 6 uses
  %i.ce = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.ce, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i55 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i55, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.cf = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.cf, 7                    ; 3 uses
  %i.cg = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.cg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cf, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4603

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.aa, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.ch = add i32 %.sroa.0.03.i, 1
  %i.ci = load atomic i8, ptr %i.j acquire, align 8
  %.not.i54 = icmp eq i8 %i.ci, 0
  br i1 %.not.i54, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit

bb.ab:                                            ; preds = %.noexc47, %.noexc46
  %.sroa.01.0.i.i = phi i8 [ %i.bs, %.noexc47 ], [ 0, %.noexc46 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !noalias !4675
  %.not.i.i.not = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.not, label %bb.ag, label %bb.ac, !prof !16

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4677
  store ptr %i.bk, ptr %i.a, align 8, !noalias !4677
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cl, align 8, !noalias !4677
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #45
          to label %bb.ae unwind label %bb.ad, !noalias !4678

bb.ad:                                            ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %.body unwind label %bb.af, !noalias !4678

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4678
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.co = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !4679, !noalias !4680, !nonnull !17, !noundef !17 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !4679, !noalias !4680, !noundef !17 ; 7 uses
  %.idx89 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx89
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %._crit_edge88, label %.lr.ph87

bb.ah:                                            ; preds = %.lr.ph87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.ag, %bb.ah
  %i.cy = phi ptr [ %i.cv, %bb.ah ], [ %i.cq, %bb.ag ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ah ], [ 0, %bb.ag ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !4681, !noalias !4682, !noundef !17
  %.not.i.i57 = icmp eq i64 %i.db, %i.h
  br i1 %.not.i.i57, label %bb.ai, label %bb.ah

bb.ai:                                            ; preds = %.lr.ph87
  call void @llvm.experimental.noalias.scope.decl(metadata !4683)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  %i.dc = icmp ult i64 %i.cs, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %.not.i.i.i = icmp samesign ult i64 %i.cz, %i.cs
  br i1 %.not.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cz ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.dd, align 8, !noalias !4685 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !4685
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = xor i64 %i.cz, -1
  %i.dg = add nsw i64 %i.cs, %i.df
  %i.dh = mul nuw nsw i64 %i.dg, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.de, i64 %i.dh, i1 false), !noalias !4686
  %i.di = add nsw i64 %i.cs, -1                   ; 2 uses
  store i64 %i.di, ptr %i.cr, align 8, !alias.scope !4687, !noalias !4688
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %bb.ak, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.ai
  %i.dj = phi i64 [ %i.cs, %bb.ai ], [ %i.di, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cz, i64 noundef %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #49
          to label %.noexc58 unwind label %bb.aj

.noexc58:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  unreachable

bb.aj:                                            ; preds = %bb.al, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, %._crit_edge88
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr nonnull %i.bk, i8 %.sroa.01.0.i.i) #46
          to label %.body unwind label %bb.at

bb.ak:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.dm = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !4689
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit unwind label %bb.aj

._crit_edge88:                                    ; preds = %bb.ah, %bb.ag
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #45
          to label %bb.c unwind label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.ak, %bb.al
  br i1 %i.co, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.do = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, label %bb.an, !prof !16

bb.an:                                            ; preds = %bb.am
  %i.dr = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %bb.an
  br i1 %i.dr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, label %bb.ao

bb.ao:                                            ; preds = %.noexc61
  store atomic i8 1, ptr %i.cj monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60: ; preds = %bb.ao, %.noexc61, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.ds = atomicrmw xchg ptr %i.bk, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit63, !prof !23

bb.ap:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit63: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit84, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit63
  %.sroa.4.0.copyload.sink = phi i32 [ %.sroa.4.0.copyload, %bb.bj ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit84 ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit63 ]
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.4.0.copyload.sink, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4690)
  call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  %i.du = load i32, ptr %.sroa.414.0..sroa_idx, align 8, !range !40, !alias.scope !4693, !noundef !17
end_hunk_6
begin_hunk_7_@_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0Csc4241EHy6Do_9typst_kit:bb.a
  %.sroa.028.3.ph.ph.ph = phi i1 [ false, %bb.am ], [ false, %bb.x ], [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.u ], [ false, %bb.be ], [ false, %bb.y ], [ false, %bb.n ], [ false, %bb.bg ], [ false, %.invoke ], [ false, %bb.v ], [ true, %bb.i ], [ false, %bb.ao ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !4794, !noalias !4795, !nonnull !17, !noundef !17
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !4794, !noalias !4795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !41, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ai = trunc nuw i8 %i.ag to i1
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.am, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.an = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.n:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !17, !align !25, !noundef !17 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !range !46, !noundef !17 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %bb.o
  %i.aw = load atomic i64, ptr %i.au acquire, align 8 ; 3 uses
  switch i64 %i.aw, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %.noexc59
  %i.ax = load atomic i64, ptr %i.au acquire, align 8 ; 3 uses
  switch i64 %i.ax, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.ay = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc58:                                         ; preds = %bb.p
  %i.az = extractvalue { i64, i32 } %i.ay, 0      ; 3 uses
  %i.ba = extractvalue { i64, i32 } %i.ay, 1      ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ar
  %i.bc = icmp slt i64 %i.az, %i.ar
  %i.bd = icmp samesign ult i32 %i.ba, %i.at
  %spec.select.i = select i1 %i.bb, i1 %i.bd, i1 %i.bc
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc58
  %i.be = cmpxchg ptr %i.au, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 3)
  br i1 %i.bf, label %.thread28, label %.split7.us.i

bb.r:                                             ; preds = %.noexc58
  %i.bh = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.ar, i32 noundef range(i32 -1, 1000000000) %i.at, i64 noundef %i.az, i32 noundef %i.ba)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc59:                                         ; preds = %bb.r
  %i.bi = extractvalue { i64, i32 } %i.bh, 0
  %i.bj = extractvalue { i64, i32 } %i.bh, 1
  invoke void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, i64 noundef %i.bi, i32 noundef %i.bj)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.aw, %.split.us.i ], [ %i.aw, %.split.us.i ], [ %i.ax, %.split.i ], [ %i.ax, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread28
    i64 2, label %bb.w
    i64 3, label %.thread
  ], !prof !72

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #45
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread28:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bm = cmpxchg ptr %i.bl, i32 0, i32 1 acquire monotonic, align 4, !noalias !4797
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %.noexc62, label %bb.u, !prof !16

bb.u:                                             ; preds = %.thread28
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bl)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.u, %.thread28
  %i.bo = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4797
  %i.bp = and i64 %i.bo, 9223372036854775807
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.aa, label %bb.v, !prof !16

bb.v:                                             ; preds = %.noexc62
  %i.br = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.v
  %i.bs = xor i1 %i.br, true
  %i.bt = zext i1 %i.bs to i8
  br label %bb.aa

bb.w:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bw = cmpxchg ptr %i.bv, i32 0, i32 1 acquire monotonic, align 4, !noalias !4798
  %i.bx = extractvalue { i32, i1 } %i.bw, 1
  br i1 %i.bx, label %.noexc67, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bv)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %bb.x, %bb.w
  %i.by = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4798
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.as, label %bb.y, !prof !16

bb.y:                                             ; preds = %.noexc67
  %i.cb = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.y
  %i.cc = xor i1 %i.cb, true
  %i.cd = zext i1 %i.cc to i8
  br label %bb.as

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.ce = load atomic i8, ptr %i.l acquire, align 8
  %.not2.i = icmp eq i8 %i.ce, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ci, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.cf = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.cf, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i71 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i71, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.cg = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.cg, 7                    ; 3 uses
  %i.ch = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.ch, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cg, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4725

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.z, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.ci = add i32 %.sroa.0.03.i, 1
  %i.cj = load atomic i8, ptr %i.l acquire, align 8
  %.not.i70 = icmp eq i8 %i.cj, 0
  br i1 %.not.i70, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.loopexit

bb.aa:                                            ; preds = %.noexc63, %.noexc62
  %.sroa.01.0.i.i = phi i8 [ %i.bt, %.noexc63 ], [ 0, %.noexc62 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.cl = load atomic i8, ptr %i.ck monotonic, align 4, !noalias !4797
  %.not.i.i.not = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.not, label %bb.af, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4799
  store ptr %i.bl, ptr %i.a, align 8, !noalias !4799
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cm, align 8, !noalias !4799
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #45
          to label %bb.ad unwind label %bb.ac, !noalias !4800

bb.ac:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %.body unwind label %bb.ae, !noalias !4800

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4800
  unreachable

bb.af:                                            ; preds = %bb.aa
  %i.cp = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4801)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !4801, !noalias !4802, !nonnull !17, !noundef !17 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !4801, !noalias !4802, !noundef !17 ; 7 uses
  %.idx91 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx91
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %._crit_edge90, label %.lr.ph89

bb.ag:                                            ; preds = %.lr.ph89
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.cx = add nuw nsw i64 %i.da, 1
  %i.cy = icmp eq ptr %i.cw, %i.cu
  br i1 %i.cy, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.af, %bb.ag
  %i.cz = phi ptr [ %i.cw, %bb.ag ], [ %i.cr, %bb.af ] ; 2 uses
  %i.da = phi i64 [ %i.cx, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !4803, !noalias !4804, !noundef !17
  %.not.i.i73 = icmp eq i64 %i.dc, %i.i
  br i1 %.not.i.i73, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph89
  call void @llvm.experimental.noalias.scope.decl(metadata !4805)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4806)
  %i.dd = icmp ult i64 %i.ct, 384307168202282326
  call void @llvm.assume(i1 %i.dd)
  %.not.i.i.i = icmp samesign ult i64 %i.da, %i.ct
  br i1 %.not.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.da ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.de, align 8, !noalias !4807 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !4807
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = xor i64 %i.da, -1
  %i.dh = add nsw i64 %i.ct, %i.dg
  %i.di = mul nuw nsw i64 %i.dh, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.df, i64 %i.di, i1 false), !noalias !4808
  %i.dj = add nsw i64 %i.ct, -1                   ; 2 uses
  store i64 %i.dj, ptr %i.cs, align 8, !alias.scope !4809, !noalias !4810
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %bb.aj, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.ah
  %i.dk = phi i64 [ %i.ct, %bb.ah ], [ %i.dj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 2 uses
  %i.dl = icmp samesign ult i64 %i.dk, 384307168202282326
  call void @llvm.assume(i1 %i.dl)
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.da, i64 noundef %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #49
          to label %.noexc74 unwind label %bb.ai

.noexc74:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ak, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, %._crit_edge90
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr nonnull %i.bl, i8 %.sroa.01.0.i.i) #46
          to label %.body unwind label %bb.ar

bb.aj:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.dn = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !4811
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit unwind label %bb.ai

._crit_edge90:                                    ; preds = %bb.ag, %bb.af
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #45
          to label %bb.b unwind label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.aj, %bb.ak
  br i1 %i.cp, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.dp = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dq = and i64 %i.dp, 9223372036854775807
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76, label %bb.am, !prof !16

bb.am:                                            ; preds = %bb.al
  %i.ds = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.am
  br i1 %i.ds, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76, label %bb.an

bb.an:                                            ; preds = %.noexc77
  store atomic i8 1, ptr %i.ck monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76: ; preds = %bb.an, %.noexc77, %bb.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.dt = atomicrmw xchg ptr %i.bl, i32 0 release, align 4
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit79, !prof !23

bb.ao:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit79: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i76, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i32 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.not34 = icmp eq i32 %.sroa.4.0.copyload, 2
  br i1 %.not34, label %.invoke, label %.thread69, !prof !23

.invoke:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit100, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit79
  %i.dv = phi ptr [ @151, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit79 ], [ @154, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit100 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #45
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_7
begin_hunk_8_@_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChanneluE4send0Csc4241EHy6Do_9typst_kit:bb.a
          cleanup                                 ; 2 uses
  %i.w = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !4908
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.f, label %.thread38

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #48
          to label %.thread38 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4906, !noalias !4907, !nonnull !17, !noundef !17
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ac = add i64 %i.s, 1
  store i64 %i.ac, ptr %i.r, align 8, !alias.scope !4906, !noalias !4907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.j unwind label %bb.ba

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !range !41, !noundef !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !16

.noexc:                                           ; preds = %bb.k
  %i.al = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.al, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc, %bb.k, %bb.j
  %i.am = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.m, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !17, !align !25, !noundef !17 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !range !46, !noundef !17 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %bb.n
  %i.av = load atomic i64, ptr %i.at acquire, align 8 ; 3 uses
  switch i64 %i.av, label %.thread [
    i64 0, label %bb.n
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.n:                                             ; preds = %.split.us.i
  call void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
  br label %.split.us.i

.split.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, %.noexc30
  %i.aw = load atomic i64, ptr %i.at acquire, align 8 ; 3 uses
  switch i64 %i.aw, label %.thread [
    i64 0, label %.noexc29
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

.noexc29:                                         ; preds = %.split.i
  %i.ax = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ay = extractvalue { i64, i32 } %i.ax, 0      ; 3 uses
  %i.az = extractvalue { i64, i32 } %i.ax, 1      ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.aq
  %i.bb = icmp slt i64 %i.ay, %i.aq
  %i.bc = icmp samesign ult i32 %i.az, %i.as
  %spec.select.i = select i1 %i.ba, i1 %i.bc, i1 %i.bb
  br i1 %spec.select.i, label %.noexc30, label %bb.o

bb.o:                                             ; preds = %.noexc29
  %i.bd = cmpxchg ptr %i.at, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 3)
  br i1 %i.be, label %.thread23, label %.split7.us.i

.noexc30:                                         ; preds = %.noexc29
  %i.bg = call { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.aq, i32 noundef range(i32 -1, 1000000000) %i.as, i64 noundef %i.ay, i32 noundef %i.az) ; 2 uses
  %i.bh = extractvalue { i64, i32 } %i.bg, 0
  %i.bi = extractvalue { i64, i32 } %i.bg, 1
  call void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, i64 noundef %i.bh, i32 noundef %i.bi)
  br label %.split.i

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.o
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.o ], [ %i.av, %.split.us.i ], [ %i.av, %.split.us.i ], [ %i.aw, %.split.i ], [ %i.aw, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %.thread23
    i64 2, label %bb.s
    i64 3, label %.thread
  ], !prof !72

bb.p:                                             ; preds = %.split7.us.i
  unreachable

bb.q:                                             ; preds = %.split7.us.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #45
  unreachable

.thread23:                                        ; preds = %bb.o, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bl = cmpxchg ptr %i.bk, i32 0, i32 1 acquire monotonic, align 4, !noalias !4909
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.noexc33, label %bb.r, !prof !16

bb.r:                                             ; preds = %.thread23
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bk)
  br label %.noexc33

.noexc33:                                         ; preds = %bb.r, %.thread23
  %i.bn = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4909
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.v, label %.noexc34, !prof !16

.noexc34:                                         ; preds = %.noexc33
  %i.bq = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %bb.v

bb.s:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !17, !align !25, !noundef !17 ; 9 uses
  %i.bv = cmpxchg ptr %i.bu, i32 0, i32 1 acquire monotonic, align 4, !noalias !4910
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.noexc38, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bu)
  br label %.noexc38

.noexc38:                                         ; preds = %bb.t, %bb.s
  %i.bx = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4910
  %i.by = and i64 %i.bx, 9223372036854775807
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.al, label %.noexc39, !prof !16

.noexc39:                                         ; preds = %.noexc38
  %i.ca = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i8
  br label %bb.al

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.cd = load atomic i8, ptr %i.i acquire, align 1
  %.not2.i = icmp eq i8 %i.cd, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketuE10wait_readyCsc4241EHy6Do_9typst_kit.exit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ch, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.ce = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.ce, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i42 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i42, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.cf = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.cf, 7                    ; 3 uses
  %i.cg = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.cg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cf, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4847

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.u, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.ch = add i32 %.sroa.0.03.i, 1
  %i.ci = load atomic i8, ptr %i.i acquire, align 1
  %.not.i41 = icmp eq i8 %i.ci, 0
  br i1 %.not.i41, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketuE10wait_readyCsc4241EHy6Do_9typst_kit.exit

bb.v:                                             ; preds = %.noexc34, %.noexc33
  %.sroa.01.0.i.i = phi i8 [ %i.bs, %.noexc34 ], [ 0, %.noexc33 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !noalias !4909
  %.not.i.i.not = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.not, label %bb.aa, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4911
  store ptr %i.bk, ptr %i.a, align 8, !noalias !4911
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cl, align 8, !noalias !4911
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #45
          to label %bb.y unwind label %bb.x, !noalias !4912

bb.x:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %.thread31 unwind label %bb.z, !noalias !4912

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4912
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.co = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4913)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !4913, !noalias !4914, !nonnull !17, !noundef !17 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !4913, !noalias !4914, !noundef !17 ; 7 uses
  %.idx89 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx89
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %._crit_edge88, label %.lr.ph87

bb.ab:                                            ; preds = %.lr.ph87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.aa, %bb.ab
  %i.cy = phi ptr [ %i.cv, %bb.ab ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ab ], [ 0, %bb.aa ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !4915, !noalias !4916, !noundef !17
  %.not.i.i44 = icmp eq i64 %i.db, %i.h
  br i1 %.not.i.i44, label %bb.ac, label %bb.ab

bb.ac:                                            ; preds = %.lr.ph87
  call void @llvm.experimental.noalias.scope.decl(metadata !4917)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4918)
  %i.dc = icmp ult i64 %i.cs, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %.not.i.i.i = icmp samesign ult i64 %i.cz, %i.cs
  br i1 %.not.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cz ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.dd, align 8, !noalias !4919 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !4919
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = xor i64 %i.cz, -1
  %i.dg = add nsw i64 %i.cs, %i.df
  %i.dh = mul nuw nsw i64 %i.dg, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.de, i64 %i.dh, i1 false), !noalias !4920
  %i.di = add nsw i64 %i.cs, -1                   ; 2 uses
  store i64 %i.di, ptr %i.cr, align 8, !alias.scope !4921, !noalias !4922
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %bb.ae, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.ac
  %i.dj = phi i64 [ %i.cs, %bb.ac ], [ %i.di, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cz, i64 noundef %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #49
          to label %.noexc45 unwind label %bb.ad

.noexc45:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  unreachable

bb.ad:                                            ; preds = %bb.af, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, %._crit_edge88
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr nonnull %i.bk, i8 %.sroa.01.0.i.i) #46
          to label %.thread31 unwind label %bb.ak

bb.ae:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.dm = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !4923
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit unwind label %bb.ad

._crit_edge88:                                    ; preds = %bb.ab, %bb.aa
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #45
          to label %bb.b unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.ae, %bb.af
  br i1 %i.co, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.do = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47, label %.noexc48, !prof !16

.noexc48:                                         ; preds = %bb.ag
  %i.dr = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.dr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47, label %bb.ah

bb.ah:                                            ; preds = %.noexc48
  store atomic i8 1, ptr %i.cj monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47: ; preds = %bb.ah, %.noexc48, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit
  %i.ds = atomicrmw xchg ptr %i.bk, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit50, !prof !23

bb.ai:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bk)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit50

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit50: ; preds = %bb.ai, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.du = load i8, ptr %i.j, align 1, !range !41, !noundef !17
  %i.dv = trunc nuw i8 %i.du to i1
  store i8 0, ptr %i.j, align 1
  br i1 %i.dv, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketuE10wait_readyCsc4241EHy6Do_9typst_kit.exit, label %bb.aj, !prof !16

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit50
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #45
  unreachable

bb.ak:                                            ; preds = %bb.ad, %bb.at, %.thread38
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !6411
  %.not.i.i.not = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6412
  store ptr %0, ptr %i.a, align 8, !noalias !6412
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !6412
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #45
          to label %bb.g unwind label %bb.f, !noalias !6413

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %common.resume unwind label %bb.h, !noalias !6413

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6413
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.z, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.u, align 8
  store ptr %.0.val, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6414, !noalias !6415, !noundef !17 ; 4 uses
  %i.x = load i64, ptr %i.s, align 8, !range !21, !alias.scope !6414, !noalias !6415, !noundef !17
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE8grow_oneCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.o unwind label %bb.k, !noalias !6415

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !6416
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.n:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.l
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit(ptr nonnull %0, i8 %.sroa.01.0.i.i) #46
          to label %common.resume unwind label %bb.v

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6414, !noalias !6415, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ag = add nsw i64 %i.w, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !6414, !noalias !6415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = icmp slt i64 %i.w, 384307168202282325
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !17 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = zext i1 %i.am to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0 = phi i8 [ %i.an, %bb.p ], [ 0, %bb.o ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ao seq_cst, align 8
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.as = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.as, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.at = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.u:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.u
  ret void

bb.v:                                             ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427 = alloca [48 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6460)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !6460
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !6460
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %.sroa.0.043.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.043.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %i.ab, %.backedge.i ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %i.aa, %.backedge.i ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.u, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.v = mul nuw nsw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter107 = and i32 %i.v, 7                  ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter111 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

.backedge.sink.split.i:                           ; preds = %bb.k, %bb.d
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6460
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %.backedge.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !6419

.backedge.i.loopexit92.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !6420

.backedge.i.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.i33.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i33.i.epil.preheader

.lr.ph.i33.i.epil.preheader:                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i33.i.epil

.lr.ph.i33.i.epil:                                ; preds = %.lr.ph.i33.i.epil, %.lr.ph.i33.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i33.i.epil, !llvm.loop !6421

.backedge.i:                                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.epil, %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !6460
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !6460
  %.sroa.0.043.be.i = add i32 %.sroa.0.043.i, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !6460 ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ac, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.x, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = and i64 %i.ac, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !6460
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.aj, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.l, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.ak, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i, label %.backedge.sink.split.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i: ; preds = %bb.k
  %.not.i20.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i20.i, label %.backedge.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i
  %i.al = mul nuw nsw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter101 = and i32 %i.al, 7                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.am, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter105 = and i32 %i.al, 56
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %.backedge.i.loopexit92.unr-lcssa, label %.lr.ph.i23.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i: ; preds = %bb.j
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i30.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i30.i, label %.backedge.i, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.ao, label %.lr.ph.i33.i.epil.preheader, label %.lr.ph.i33.i.preheader.new

.lr.ph.i33.i.preheader.new:                       ; preds = %.lr.ph.i33.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i, %.lr.ph.i33.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit93.unr-lcssa, label %.lr.ph.i33.i

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !6460 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i37.i:                                     ; preds = %bb.m, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.at, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i37.i
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6460
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i37.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.au = mul nuw nsw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter113 = and i32 %i.au, 7                 ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter117 = and i32 %i.au, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter118 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter118.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter118.next.7 = add i32 %niter118, 8         ; 2 uses
  %niter118.ncmp.7 = icmp eq i32 %niter118.next.7, %unroll_iter117
  br i1 %niter118.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod115.not = icmp eq i32 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod116 = icmp ne i32 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter114 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter114.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter114.next = add i32 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i32 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6422

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, %bb.n
  %i.aw = add i32 %.sroa.0.02.i.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !6460 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.m
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.m ], [ %i.ax, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !6460
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !6460
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !6460
  br label %bb.o

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.h
  %i.bf = load i32, ptr %i.i, align 8, !range !46, !noundef !17 ; 2 uses
  %.not = icmp eq i32 %i.bf, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !6460
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !6460
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !6461
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %.sroa.0.02.i.i7 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bl, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6461
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10: ; preds = %.lr.ph.i.i6
  %.not.i.i.i11 = icmp eq i32 %.sroa.0.02.i.i7, 0
  br i1 %.not.i.i.i11, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10
  %i.bm = mul nuw nsw i32 %.sroa.0.02.i.i7, %.sroa.0.02.i.i7 ; 2 uses
  %xtraiter119 = and i32 %i.bm, 7                 ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i7, 3
  br i1 %i.bn, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter123 = and i32 %i.bm, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter124 = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter124.next.7, %.lr.ph.i.i.i14 ]
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  %niter124.next.7 = add i32 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i32 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter120 = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i.i.i14.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6461
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !6425

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bo = add i32 %.sroa.0.02.i.i7, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !6461
  %i.bq = and i64 %i.bp, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bg, align 8, !noalias !6461 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427.0..sroa_idx, i64 48, i1 false)
  %i.bs = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 31
  br i1 %i.bt, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.cc, %bb.s ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !6461
  %i.bx = and i64 %i.bw, 2
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bz = atomicrmw or ptr %i.bv, i64 4 acq_rel, align 8, !noalias !6461
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.cc = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !noalias !6461
  %i.cg = and i64 %i.cf, 2
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.ci = atomicrmw or ptr %i.ce, i64 4 acq_rel, align 8, !noalias !6461
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.cc, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i
  %i.cl = atomicrmw or ptr %i.bh, i64 2 acq_rel, align 8, !noalias !6461
  %i.cm = and i64 %i.cl, 4
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.u

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1992, i64 noundef 8) #42, !noalias !6461
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit

bb.u:                                             ; preds = %bb.t
  %i.co = icmp samesign ult i64 %i.s, 29
  br i1 %i.co, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.cp, %bb.w ], [ %i.bs, %bb.u ] ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8, !noalias !6461
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cv = atomicrmw or ptr %i.cr, i64 4 acq_rel, align 8, !noalias !6461
  %i.cw = and i64 %i.cv, 2
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cp, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.t, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i
  %i.cy = icmp eq i64 %.sroa.026.0.copyload, -2
  br i1 %i.cy, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit.thread, label %bb.ao

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit
  %i.cz = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.da = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.db = extractvalue { i64, i32 } %i.da, 0      ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %.split, label %bb.al

bb.y:                                             ; preds = %.split, %bb.al, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6462
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dd = load i8, ptr %i.o, align 8, !range !18, !noalias !6463, !noundef !17
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.y
  %i.df = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !6462 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.df, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dh = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6462, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6462
  %.not.i.i.i18 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !23

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6462
  %i.di = call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !6462 ; 2 uses
  store ptr %i.di, ptr %i.e, align 8, !noalias !6462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6462
  store ptr %i.g, ptr %i.c, align 8, !noalias !6462
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.di)
          to label %bb.ac unwind label %bb.aa, !noalias !6462

bb.aa:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6464)
  call void @llvm.experimental.noalias.scope.decl(metadata !6465)
  call void @llvm.experimental.noalias.scope.decl(metadata !6466)
  %i.dk = load ptr, ptr %i.e, align 8, !alias.scope !6467, !noalias !6462, !nonnull !17, !noundef !17
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !6468
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %bb.ae, !noalias !6462

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6462
  call void @llvm.experimental.noalias.scope.decl(metadata !6469)
  call void @llvm.experimental.noalias.scope.decl(metadata !6470)
  call void @llvm.experimental.noalias.scope.decl(metadata !6471)
  %i.dn = load ptr, ptr %i.e, align 8, !alias.scope !6472, !noalias !6462, !nonnull !17, !noundef !17
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !6473
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #48, !noalias !6462
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6462
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit

bb.ae:                                            ; preds = %bb.ak, %bb.ab
end_hunk_9
begin_hunk_10_@_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvCsc4241EHy6Do_9typst_kit:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6570
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.t, %bb.u, %.body.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.f ], [ %lpad.phi, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.bh ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.t ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsc4241EHy6Do_9typst_kit.exit
  %i.ab = trunc nuw i8 %.sroa.01.0.i.i to i1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6571)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6571, !noalias !6572, !noundef !17 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 384307168202282326
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %.loopexit75, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.ag = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !6571, !noalias !6572, !nonnull !17, !noundef !17 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ad, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i, %bb.i
  %.sroa.02.010.i.i = phi i64 [ %i.bf, %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i ], [ 0, %bb.i ] ; 5 uses
  %i.al = phi ptr [ %i.am, %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.aj, %bb.i ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6573)
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !6573, !noalias !6574, !nonnull !17, !noundef !17 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !6575, !noundef !17
  %.not.i.i.i = icmp eq i64 %i.ap, %i.ah
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !6573, !noalias !6574, !noundef !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = cmpxchg ptr %i.as, i64 0, i64 %i.ar acq_rel acquire, align 8, !noalias !6575
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.k, label %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !6573, !noalias !6574, !noundef !17 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store atomic ptr %i.aw, ptr %i.ay release, align 8, !noalias !6575
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !6575, !nonnull !17, !noundef !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bc = atomicrmw xchg ptr %i.bb, i32 1 release, align 4, !noalias !6575
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.n, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.be = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.bb)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i unwind label %bb.bh ; 0 uses

_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i
  %i.bf = add nuw nsw i64 %.sroa.02.010.i.i, 1
  %i.bg = icmp eq ptr %i.am, %i.ak
  br i1 %i.bg, label %.loopexit75, label %.lr.ph.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.n, %bb.m
  %i.bh = icmp samesign ult i64 %.sroa.02.010.i.i, %i.ad
  tail call void @llvm.assume(i1 %i.bh)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6576)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6577)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.sroa.02.010.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.bi, align 8, !noalias !6578 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6578
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = xor i64 %.sroa.02.010.i.i, -1
  %i.bl = add nsw i64 %i.ad, %i.bk
  %i.bm = mul nuw nsw i64 %i.bl, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bj, i64 %i.bm, i1 false), !noalias !6579
  %i.bn = add nsw i64 %i.ad, -1                   ; 2 uses
  store i64 %i.bn, ptr %i.ac, align 8, !alias.scope !6580, !noalias !6581
  %.not.i.i9 = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i.i9, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %bb.o, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i, i64 noundef %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #49
          to label %.noexc10 unwind label %bb.bh

.noexc10:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  unreachable

bb.o:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.j, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !17
  store ptr %i.bp, ptr %i.n, align 8
  br i1 %i.ab, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.bt = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.q
  br i1 %i.bt, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.w monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.r, %.noexc11, %bb.p, %bb.o
  %i.bu = atomicrmw xchg ptr %1, i32 0 release, align 4
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.s:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit unwind label %.loopexit.split-lp

.loopexit75:                                      ; preds = %_RNCNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csc4241EHy6Do_9typst_kit.exit.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bx = load i8, ptr %i.bw, align 8, !range !41, !noundef !17
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.bb, label %bb.af

.loopexit:                                        ; preds = %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.invoke, %bb.q, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6585)
  %i.bz = load ptr, ptr %i.j, align 8, !alias.scope !6586, !nonnull !17, !noundef !17
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !6586
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #48
          to label %common.resume unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.s
  %.val8 = load ptr, ptr %i.n, align 8, !noundef !17 ; 11 uses
  %i.cc = icmp eq ptr %.val8, null
  br i1 %i.cc, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 57
  %i.ce = load i8, ptr %i.cd, align 1, !range !41, !noalias !6587, !noundef !17
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.val8, i64 56 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg acquire, align 1, !noalias !6587
  %.not2.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not2.i.i, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.w, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.cl, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.w ] ; 6 uses
  %i.ci = icmp ult i32 %.sroa.0.03.i.i, 7
  br i1 %i.ci, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i.i14
  %.not.i.i.i16 = icmp eq i32 %.sroa.0.03.i.i, 0
  br i1 %.not.i.i.i16, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.cj = mul nuw nsw i32 %.sroa.0.03.i.i, %.sroa.0.03.i.i ; 2 uses
  %xtraiter = and i32 %i.cj, 7                    ; 3 uses
  %i.ck = icmp ult i32 %.sroa.0.03.i.i, 3
  br i1 %i.ck, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.cj, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !6587
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6520

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.x, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.cl = add i32 %.sroa.0.03.i.i, 1
  %i.cm = load atomic i8, ptr %i.cg acquire, align 1, !noalias !6587
  %.not.i.i15 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i15, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.w
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !6587 ; 2 uses
  store i64 -2, ptr %.val8, align 8, !noalias !6587
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -2
  br i1 %.not.i, label %.invoke, label %bb.z, !prof !23

bb.y:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !6587 ; 2 uses
  store i64 -2, ptr %.val8, align 8, !noalias !6587
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %.not11.i, label %.invoke, label %bb.aa, !prof !23

.invoke:                                          ; preds = %bb.y, %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i
  %i.cn = phi ptr [ @225, %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i ], [ @226, %bb.y ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn) #49
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_readyCsc4241EHy6Do_9typst_kit.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.739, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56.0..sroa_idx.i, i64 48, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 64, i64 noundef 8) #42, !noalias !6587
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.739, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i, i64 48, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.val8, i64 56
  store atomic i8 1, ptr %i.co release, align 8, !noalias !6587
  br label %bb.ab

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cp, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.038.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.aa ], [ %.sroa.04.0.copyload.i, %bb.z ]
  store i64 %.sroa.038.0.ph, ptr %0, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.461.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.739, i64 48, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6591)
  %i.cq = load ptr, ptr %i.j, align 8, !alias.scope !6592, !nonnull !17, !noundef !17
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !6592
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit21

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit21

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit21: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit26

bb.ae:                                            ; preds = %bb.u, %bb.bh
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.af:                                            ; preds = %.loopexit75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6594
  store ptr %i.k, ptr %i.h, align 8, !noalias !6593
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.643.0..sroa_idx, align 8, !noalias !6593
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.748.0..sroa_idx, align 8, !noalias !6593
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %1, ptr %.sroa.853.0..sroa_idx, align 8, !noalias !6593
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %.sroa.01.0.i.i, ptr %.sroa.958.0..sroa_idx, align 8, !noalias !6593
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cu = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !range !18, !noalias !6595, !noundef !17
  %i.cx = icmp eq i8 %i.cw, 1
  br i1 %i.cx, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.af
  %i.cy = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.cu, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.au, !noalias !6594 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5g_ECsc4241EHy6Do_9typst_kit.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %.noexc.i, %bb.af
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.cu, %bb.af ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6596
  %i.da = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6597, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6597
  %.not.i.i.i22 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i22, label %bb.ag, label %bb.an, !prof !23

bb.ag:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6597
  %i.db = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.ah unwind label %bb.au, !noalias !6594 ; 4 uses

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.db, ptr %i.f, align 8, !noalias !6597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6597
  store i8 2, ptr %.sroa.958.0..sroa_idx, align 8, !noalias !6597
  store ptr %i.k, ptr %i.c, align 8, !noalias !6593
  %.sroa.643.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.643.0..sroa_idx46, align 8, !noalias !6593
  %.sroa.748.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.748.0..sroa_idx51, align 8, !noalias !6593
  %.sroa.853.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.853.0..sroa_idx56, align 8, !noalias !6593
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %.sroa.01.0.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !6597
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.db)
          to label %bb.ak unwind label %bb.ai, !noalias !6596

bb.ai:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !6598
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aj, label %.body.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #48
          to label %.body.i unwind label %bb.am, !noalias !6597

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6597
  %i.df = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !6599
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit24.i.i.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit24.i.i.i unwind label %bb.au, !noalias !6594

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit24.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6597
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5g_ECsc4241EHy6Do_9typst_kit.exit.i

bb.am:                                            ; preds = %bb.at, %bb.ar, %bb.aj
  %i.dh = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChanneluE10disconnectCsc4241EHy6Do_9typst_kit:bb.a
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge.i10, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, %.noexc11
  %.sroa.0.02.i8 = phi ptr [ %i.as, %.noexc11 ], [ %i.an, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i8, i64 24 ; 2 uses
  %.sroa.0.0.val.i9 = load ptr, ptr %.sroa.0.02.i8, align 8, !noalias !6630, !nonnull !17, !noundef !17
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i9, i64 24
  %i.au = cmpxchg ptr %i.at, i64 0, i64 2 acq_rel acquire, align 8, !noalias !6630
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %bb.l, label %.noexc11

._crit_edge.i10:                                  ; preds = %.noexc11, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.al) #50
          to label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph.i7
  %i.aw = load ptr, ptr %.sroa.0.02.i8, align 8, !noalias !6630, !nonnull !17, !noundef !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !6630, !nonnull !17, !noundef !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.ba = atomicrmw xchg ptr %i.az, i32 1 release, align 4, !noalias !6630
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.m, label %.noexc11

.noexc11:                                         ; preds = %bb.m, %bb.l, %.lr.ph.i7
  %i.bc = icmp eq ptr %i.as, %i.aq
  br i1 %i.bc, label %._crit_edge.i10, label %.lr.ph.i7

bb.m:                                             ; preds = %bb.l
  %i.bd = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.az)
          to label %.noexc11 unwind label %.loopexit ; 0 uses

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12: ; preds = %._crit_edge.i10, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  br i1 %i.o, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12
  %i.be = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.bh, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12
  %i.bi = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB5_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 17 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.013.i = alloca [40 x i8], align 8        ; 10 uses
  %.sroa.616.i = alloca [12 x i8], align 4        ; 10 uses
  %.sroa.08.i = alloca [40 x i8], align 8         ; 6 uses
  %.sroa.6.i = alloca [12 x i8], align 4          ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [64 x i8], align 8                ; 5 uses
  %i.w = alloca [56 x i8], align 8                ; 8 uses
  %i.x = alloca [56 x i8], align 8                ; 13 uses
  %i.y = alloca [56 x i8], align 8                ; 11 uses
  %i.z = alloca [64 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.ah
    i64 2, label %bb.bc
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 -1, ptr %i.aa, align 8, !noalias !6782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6782
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !6782
  %i.ae = load atomic i64, ptr %i.ac monotonic, align 8, !noalias !6783 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 16, !noalias !6783, !noundef !17 ; 2 uses
  %i.ag = and i64 %i.af, %i.ae
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.am = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.i.lr.ph.i
  %i.ao = phi i64 [ %i.af, %.lr.ph.i.lr.ph.i ], [ %i.dk, %bb.ad ]
  %i.ap = phi i64 [ %i.ae, %.lr.ph.i.lr.ph.i ], [ %i.dj, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6784)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.aq = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.bu, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ %i.bt, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.ar = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.as = add i64 %i.aq, -1
  %i.at = and i64 %i.as, %.sroa.02.043.i.i        ; 3 uses
  %i.au = load i64, ptr %i.ai, align 8, !noalias !6785, !noundef !17
  %i.av = sub i64 0, %i.au
  %i.aw = and i64 %.sroa.02.043.i.i, %i.av
  %i.ax = load ptr, ptr %i.aj, align 8, !noalias !6785, !nonnull !17, !noundef !17
  %i.ay = load i64, ptr %i.ak, align 16, !noalias !6785, !noundef !17
  %i.az = icmp ult i64 %i.at, %i.ay
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.at ; 6 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8, !noalias !6785 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.02.043.i.i, %i.bb
  br i1 %i.bc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = load i64, ptr %i.ai, align 8, !noalias !6785, !noundef !17
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = add i64 %.sroa.02.043.i.i, 1
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bh = add nuw i64 %i.at, 1
  %i.bi = load i64, ptr %i.al, align 128, !noalias !6785, !noundef !17
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bk, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i unwind label %.body.thread37.loopexit.i, !noalias !6782

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.bl = mul nuw nsw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter165 = and i32 %i.bl, 7                 ; 3 uses
  %i.bm = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bm, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter169 = and i32 %i.bl, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter170 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter170.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  %niter170.next.7 = add i32 %niter170, 8         ; 2 uses
  %niter170.ncmp.7 = icmp eq i32 %niter170.next.7, %unroll_iter169
  br i1 %niter170.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bn = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !6785
  %i.bo = load i64, ptr %i.ai, align 8, !noalias !6785, !noundef !17
  %i.bp = add i64 %i.bo, %i.bn
  %i.bq = icmp eq i64 %i.bp, %.sroa.02.043.i.i
  br i1 %i.bq, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.i, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.br = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter171 = and i32 %i.br, 5                 ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bs, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter175 = and i32 %i.br, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter176 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter176.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  %niter176.next.7 = add i32 %niter176, 8         ; 2 uses
  %niter176.ncmp.7 = icmp eq i32 %niter176.next.7, %unroll_iter175
  br i1 %niter176.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod180 = icmp ne i32 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter178 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter178.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6785
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !6637

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter172 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter172.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6785
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !6638

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod167.not = icmp eq i32 %xtraiter165, 0
  br i1 %lcmp.mod167.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod168 = icmp ne i32 %xtraiter165, 0
  call void @llvm.assume(i1 %lcmp.mod168)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter166 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter166.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6785
  %epil.iter166.next = add i32 %epil.iter166, 1   ; 2 uses
  %epil.iter166.cmp.not = icmp eq i32 %epil.iter166.next, %xtraiter165
  br i1 %epil.iter166.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6639

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bt = load atomic i64, ptr %i.ac monotonic, align 16, !noalias !6785 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bu = load i64, ptr %i.ad, align 16, !noalias !6785, !noundef !17 ; 2 uses
  %i.bv = and i64 %i.bu, %i.bt
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bx = load i64, ptr %i.ai, align 8, !noalias !6785, !noundef !17
  %i.by = add i64 %i.bx, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bz = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bz, %bb.j ], [ %i.by, %bb.i ]
  %i.ca = cmpxchg weak ptr %i.ac, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !6785
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ca, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.thread.i, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter177 = and i32 %i.ar, 7                 ; 3 uses
  %i.cb = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.cb, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter181 = and i32 %i.ar, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter182 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter182.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  call void @llvm.x86.sse2.pause(), !noalias !6785
  %niter182.next.7 = add i32 %niter182, 8         ; 2 uses
  %niter182.ncmp.7 = icmp eq i32 %niter182.next.7, %unroll_iter181
  br i1 %niter182.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

.body.thread37.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread37.loopexit.split-lp.i:               ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.x, %bb.s, %bb.n, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.h
  %i.cc = load i32, ptr %i.aa, align 8, !range !46, !noalias !6782, !noundef !17 ; 2 uses
  %.not.i = icmp eq i32 %i.cc, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.thread.i: ; preds = %bb.k
  store ptr %i.ba, ptr %i.t, align 8, !alias.scope !6784, !noalias !6782
  %i.cd = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.cd, ptr %i.ab, align 8, !alias.scope !6784, !noalias !6782
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6781, !noalias !6780
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 40, i1 false), !noalias !6780
  %.sroa.5.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx22.i, align 8, !noalias !6786
  %.sroa.624.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.624.0..sroa_idx25.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.624.0..sroa_idx.i, i64 12, i1 false), !noalias !6780
  store atomic i64 %i.cd, ptr %i.ba release, align 8, !noalias !6787
  %i.cf = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.cf) #50, !noalias !6782
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.i
  %i.cg = load i64, ptr %i.u, align 8, !noalias !6782, !noundef !17 ; 2 uses
  %i.ch = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.aa unwind label %.body.thread37.loopexit.split-lp.i, !noalias !6782 ; 2 uses

bb.m:                                             ; preds = %bb.ab, %.split.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6788
  store ptr %i.t, ptr %i.s, align 8, !noalias !6782
  store ptr %.8.val, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !6782
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6782
end_hunk_11
begin_hunk_12_@_RNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB5_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6797)
  %i.cs = load ptr, ptr %i.r, align 8, !alias.scope !6798, !noalias !6788, !nonnull !17, !noundef !17
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !6799
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i unwind label %.body.thread37.loopexit.split-lp.i, !noalias !6782

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6788
  br label %bb.ad

bb.t:                                             ; preds = %bb.z, %bb.q
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6788
  unreachable

bb.u:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6788
  store ptr %i.cm, ptr %i.q, align 8, !noalias !6788
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store atomic i64 0, ptr %i.cw release, align 8, !noalias !6788
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store atomic ptr null, ptr %i.cx release, align 8, !noalias !6788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6788
  store ptr %i.t, ptr %i.o, align 8, !noalias !6788
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !6782
  store ptr %i.u, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !6782
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %i.cm)
          to label %bb.v unwind label %bb.y, !noalias !6788

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6788
  %i.cy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !6788, !noundef !17 ; 3 uses
  store ptr %i.cy, ptr %i.n, align 8, !noalias !6788
  store ptr %i.cm, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !6788
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !6800
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i unwind label %.body.thread37.loopexit.split-lp.i, !noalias !6782

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6788
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !6801
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.z, label %.body.thread.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #48
          to label %.body.thread.i unwind label %bb.t, !noalias !6788

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %.noexc12.i
  invoke fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.s) #50
          to label %bb.ad unwind label %.body.thread37.loopexit.split-lp.i, !noalias !6782

bb.aa:                                            ; preds = %bb.l
  %i.df = extractvalue { i64, i32 } %i.ch, 0      ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.cg
  br i1 %i.dg, label %.split.i, label %bb.ab

.split.i:                                         ; preds = %bb.aa
  %i.dh = extractvalue { i64, i32 } %i.ch, 1      ; 2 uses
  %i.di = icmp ult i32 %i.dh, 1000000000
  call void @llvm.assume(i1 %i.di)
  %.not44.i = icmp samesign ult i32 %i.dh, %i.cc
  br i1 %.not44.i, label %bb.m, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not43.i = icmp slt i64 %i.df, %i.cg
  br i1 %.not43.i, label %bb.m, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 56, i1 false), !alias.scope !6782
  store i64 0, ptr %i.z, align 8, !alias.scope !6780, !noalias !6781
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit

bb.ad:                                            ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6788
  %i.dj = load atomic i64, ptr %i.ac monotonic, align 16, !noalias !6802 ; 2 uses
  %i.dk = load i64, ptr %i.ad, align 16, !noalias !6802, !noundef !17 ; 2 uses
  %i.dl = and i64 %i.dk, %i.dj
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.ad, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.sroa.5.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.5.0.copyload76.i = load i32, ptr %.sroa.5.0..sroa_idx75.i, align 8, !alias.scope !6781, !noalias !6780 ; 2 uses
  %.not9.i = icmp eq i32 %.sroa.5.0.copyload76.i, 2
  br i1 %.not9.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i
  %.sroa.624.0..sroa_idx77.i = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.43.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 40, i1 false), !alias.scope !6782
  %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.624.0..sroa_idx77.i, i64 12, i1 false), !alias.scope !6782
  store i64 1, ptr %i.z, align 8, !alias.scope !6780, !noalias !6781
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i32 %.sroa.5.0.copyload76.i, ptr %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !6780, !noalias !6781
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit

bb.af:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.thread.i
  store i64 2, ptr %i.z, align 8, !alias.scope !6780, !noalias !6781
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit

common.resume:                                    ; preds = %bb.dm, %.body.i, %.body.i.i, %.body.thread.i19, %.body.thread.i9, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body36.i, %.body.thread.i ], [ %eh.lpad-body27.i, %.body.thread.i9 ], [ %.pn.pn68.i, %.body.thread.i19 ], [ %eh.lpad-body23.i, %.body.i ], [ %i.jz, %bb.dm ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.z, %bb.y, %bb.q, %bb.p, %.body.thread37.loopexit.split-lp.i, %.body.thread37.loopexit.i
  %eh.lpad-body36.i = phi { ptr, i32 } [ %i.dc, %bb.z ], [ %i.co, %bb.p ], [ %i.dc, %bb.y ], [ %i.co, %bb.q ], [ %lpad.loopexit.i, %.body.thread37.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread37.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y) #46
          to label %common.resume unwind label %bb.ag, !noalias !6780

bb.ag:                                            ; preds = %.body.thread.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6780
  unreachable

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.ae, %bb.af, %bb.ac
  %i.do = phi i64 [ 1, %bb.ae ], [ 2, %bb.af ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.di

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6804)
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8, !noalias !6805 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.ds = load atomic ptr, ptr %i.dr acquire, align 8, !noalias !6805
  %i.dt = and i64 %i.dq, 1
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i4, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.thread.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.thread.i: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.i, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 40, i1 false), !noalias !6803
  %.sroa.5.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.5.0.copyload35.i = load i32, ptr %.sroa.5.0..sroa_idx34.i, align 8, !alias.scope !6804, !noalias !6803
  %.sroa.616.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.616.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.616.0..sroa_idx36.i, i64 12, i1 false), !noalias !6803
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i.i4:                                      ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %.backedge.i.i, %.lr.ph.i.i4
  %.sroa.03.079.i.i = phi i64 [ %i.dq, %.lr.ph.i.i4 ], [ %i.ee, %.backedge.i.i ] ; 3 uses
  %.sroa.07.078.i.i = phi ptr [ %i.ds, %.lr.ph.i.i4 ], [ %i.ef, %.backedge.i.i ] ; 2 uses
  %.sroa.0.077.i.i = phi i32 [ 0, %.lr.ph.i.i4 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.042.076.i.i = phi ptr [ null, %.lr.ph.i.i4 ], [ %.sroa.042.0.be.i.i, %.backedge.i.i ] ; 4 uses
  %i.dw = lshr exact i64 %.sroa.03.079.i.i, 1
  %i.dx = and i64 %i.dw, 31                       ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 31
  br i1 %i.dy, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dz = icmp ult i32 %.sroa.0.077.i.i, 7
  br i1 %i.dz, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i11, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit64.i.i, !noalias !6805

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i11: ; preds = %bb.aj
  %.not.i.i.i12 = icmp eq i32 %.sroa.0.077.i.i, 0
  br i1 %.not.i.i.i12, label %.loopexit.i.i, label %.lr.ph.i.i.i15.preheader

.lr.ph.i.i.i15.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i11
  %i.ea = mul nuw nsw i32 %.sroa.0.077.i.i, %.sroa.0.077.i.i ; 2 uses
  %xtraiter159 = and i32 %i.ea, 7                 ; 3 uses
  %i.eb = icmp ult i32 %.sroa.0.077.i.i, 3
  br i1 %i.eb, label %.lr.ph.i.i.i15.epil.preheader, label %.lr.ph.i.i.i15.preheader.new

.lr.ph.i.i.i15.preheader.new:                     ; preds = %.lr.ph.i.i.i15.preheader
  %unroll_iter163 = and i32 %i.ea, 56
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %.lr.ph.i.i.i15, %.lr.ph.i.i.i15.preheader.new
  %niter164 = phi i32 [ 0, %.lr.ph.i.i.i15.preheader.new ], [ %niter164.next.7, %.lr.ph.i.i.i15 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  %niter164.next.7 = add i32 %niter164, 8         ; 2 uses
  %niter164.ncmp.7 = icmp eq i32 %niter164.next.7, %unroll_iter163
  br i1 %niter164.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i15

bb.al:                                            ; preds = %bb.ai
  %i.ec = icmp eq i64 %i.dx, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.042.076.i.i, null
  %or.cond.i.i = select i1 %i.ec, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockINtNtNtNtB12_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i15
  %lcmp.mod161.not = icmp eq i32 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %.loopexit.i.i, label %.lr.ph.i.i.i15.epil.preheader

.lr.ph.i.i.i15.epil.preheader:                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i15.preheader
  %lcmp.mod162 = icmp ne i32 %xtraiter159, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %.lr.ph.i.i.i15.epil

.lr.ph.i.i.i15.epil:                              ; preds = %.lr.ph.i.i.i15.epil, %.lr.ph.i.i.i15.epil.preheader
  %epil.iter160 = phi i32 [ 0, %.lr.ph.i.i.i15.epil.preheader ], [ %epil.iter160.next, %.lr.ph.i.i.i15.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  %epil.iter160.next = add i32 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i32 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i15.epil, !llvm.loop !6683

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i15.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i11, %bb.ak
  %i.ed = add i32 %.sroa.0.077.i.i, 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.loopexit63.i.i, %bb.as, %bb.ar, %.loopexit.i.i
  %.sroa.042.0.be.i.i = phi ptr [ %.sroa.042.3.i.i, %.loopexit63.i.i ], [ %.sroa.042.076.i.i, %.loopexit.i.i ], [ %i.el, %bb.ar ], [ %i.el, %bb.as ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ew, %.loopexit63.i.i ], [ %i.ed, %.loopexit.i.i ], [ %.sroa.0.077.i.i, %bb.ar ], [ %.sroa.0.077.i.i, %bb.as ]
  %i.ee = load atomic i64, ptr %i.dp acquire, align 8, !noalias !6805 ; 2 uses
  %i.ef = load atomic ptr, ptr %i.dr acquire, align 8, !noalias !6805
  %i.eg = and i64 %i.ee, 1
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.ai, label %._crit_edge.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockINtNtNtNtB12_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.am, %bb.al
  %.sroa.042.3.i.i = phi ptr [ %.sroa.042.076.i.i, %bb.al ], [ %i.ej, %bb.am ] ; 8 uses
  %i.ei = icmp eq ptr %.sroa.07.078.i.i, null
  br i1 %i.ei, label %bb.an, label %bb.at

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6805
  %i.ej = tail call noalias noundef align 8 dereferenceable_or_null(1992) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1992, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6805 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.noexc20.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockINtNtNtNtB12_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i, !prof !23

.noexc20.i.i:                                     ; preds = %bb.am
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1992) #45
          to label %.noexc.i unwind label %.body.thread29.i, !noalias !6806

.noexc.i:                                         ; preds = %.noexc20.i.i
  unreachable

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockINtNtNtNtB12_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6805
  %i.el = tail call noalias noundef align 8 dereferenceable_or_null(1992) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1992, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6805 ; 6 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ao, label %bb.ap, !prof !23

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1992) #45
          to label %.noexc21.i.i unwind label %.loopexit.split-lp.i.i, !noalias !6805

.noexc21.i.i:                                     ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.en = cmpxchg ptr %i.dr, ptr null, ptr %i.el release monotonic, align 8, !noalias !6805
  %i.eo = extractvalue { ptr, i1 } %i.en, 1
  br i1 %i.eo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store atomic ptr %i.el, ptr %i.dv release, align 8, !noalias !6805
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ep = icmp eq ptr %.sroa.042.3.i.i, null
  br i1 %i.ep, label %.backedge.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.3.i.i, i64 noundef 1992, i64 noundef 8) #42, !noalias !6805
  br label %.backedge.i.i

bb.at:                                            ; preds = %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockINtNtNtNtB12_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %.sroa.07.078.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockINtNtNtNtB12_2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEEEECsc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.el, %bb.aq ] ; 3 uses
  %i.eq = add i64 %.sroa.03.079.i.i, 2
  %i.er = cmpxchg weak ptr %i.dp, i64 %.sroa.03.079.i.i, i64 %i.eq seq_cst acquire, align 8, !noalias !6805
  %.sroa.18.0.in.i.i.i5 = extractvalue { i64, i1 } %i.er, 1
  br i1 %.sroa.18.0.in.i.i.i5, label %bb.au, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i: ; preds = %bb.at
  %..i.i.i.i6 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.i, i32 6) ; 2 uses
  %i.es = mul nuw nsw i32 %..i.i.i.i6, %..i.i.i.i6 ; 2 uses
  %.not.i28.i.i = icmp eq i32 %.sroa.0.077.i.i, 0
  br i1 %.not.i28.i.i, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i
  %xtraiter = and i32 %i.es, 5                    ; 3 uses
  %i.et = icmp ult i32 %.sroa.0.077.i.i, 3
  br i1 %i.et, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter = and i32 %i.es, 56
  br label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit63.i.i.loopexit.unr-lcssa, label %.lr.ph.i31.i.i

bb.au:                                            ; preds = %bb.at
  br i1 %i.ec, label %bb.av, label %._crit_edge.i.i

bb.av:                                            ; preds = %bb.au
  %.not15.i.i = icmp eq ptr %.sroa.042.3.i.i, null
  br i1 %.not15.i.i, label %bb.aw, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.thread38.i, !prof !23

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #45
          to label %.noexc5.i unwind label %.body.thread29.i, !noalias !6806

.noexc5.i:                                        ; preds = %bb.aw
  unreachable

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_sendCsc4241EHy6Do_9typst_kit.exit.thread38.i: ; preds = %bb.av
  store atomic ptr %.sroa.042.3.i.i, ptr %i.dr release, align 8, !noalias !6805
  %i.eu = atomicrmw add ptr %i.dp, i64 2 release, align 8, !noalias !6805 ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 1984
  store atomic ptr %.sroa.042.3.i.i, ptr %i.ev release, align 8, !noalias !6805
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.i, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 40, i1 false), !noalias !6803
  %.sroa.5.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.5.0.copyload42.i = load i32, ptr %.sroa.5.0..sroa_idx41.i, align 8, !alias.scope !6804, !noalias !6803
  %.sroa.616.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.616.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.616.0..sroa_idx43.i, i64 12, i1 false), !noalias !6803
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE5writeCsc4241EHy6Do_9typst_kit.exit.thread.i

.loopexit63.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i31.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %.loopexit63.i.i.loopexit.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !6805
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.epil, !llvm.loop !6684

.loopexit63.i.i:                                  ; preds = %.loopexit63.i.i.loopexit.unr-lcssa, %.lr.ph.i31.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i
  %i.ew = add i32 %.sroa.0.077.i.i, 1
  br label %.backedge.i.i

.loopexit64.i.i:                                  ; preds = %bb.ak
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i:                           ; preds = %bb.ao
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax
end_hunk_12
begin_hunk_13_@_RNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB5_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit:bb.a
  %i.jr = and i64 %i.jq, 9223372036854775807
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i, label %.noexc31.i, !prof !16

.noexc31.i:                                       ; preds = %bb.de
  %i.jt = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48, !noalias !6814
  br i1 %i.jt, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i, label %bb.df

bb.df:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.fq monotonic, align 4, !noalias !6814
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i: ; preds = %bb.df, %.noexc31.i, %bb.de, %bb.dd
  %i.ju = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !6814
  %i.jv = icmp eq i32 %i.ju, 2
  br i1 %i.jv, label %bb.dg, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.dg:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val), !noalias !6814
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit

bb.dh:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE10try_removeCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i, %bb.bq
  %lpad.thr_comm.i28 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsc4241EHy6Do_9typst_kit(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i) #46
          to label %.body.thread.i19 unwind label %bb.ce, !noalias !6814

.body.thread.i19:                                 ; preds = %bb.dh, %bb.bh, %.split.thread.i, %.body.i
  %.pn.pn68.i = phi { ptr, i32 } [ %eh.lpad-body23.i, %.body.i ], [ %i.ft, %bb.bh ], [ %lpad.thr_comm.i28, %bb.dh ], [ %lpad.thr_comm87.i, %.split.thread.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w) #46
          to label %common.resume unwind label %bb.ce, !noalias !6812

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit25.i, %bb.db, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i, %bb.dg
  %.pre = phi i64 [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsc4241EHy6Do_9typst_kit.exit25.i ], [ %.pre.pre, %bb.db ], [ 1, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i30.i ], [ 1, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.di

bb.di:                                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit
  %i.jw = phi i64 [ %.pre, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4zeroINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit ], [ %i.ff, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit ], [ %i.do, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4sendCsc4241EHy6Do_9typst_kit.exit ]
  %.not = icmp eq i64 %i.jw, 2
  br i1 %.not, label %bb.do, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6868)
  %i.jx = load i64, ptr %i.v, align 8, !range !19, !alias.scope !6868, !noalias !6869, !noundef !17
  %i.jy = trunc nuw i64 %i.jx to i1
  br i1 %i.jy, label %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0Csc4241EHy6Do_9typst_kit.exit, label %bb.dk, !prof !16

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #45
          to label %bb.dl unwind label %bb.dm, !noalias !6870

bb.dl:                                            ; preds = %bb.dk
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5error16SendTimeoutErrorINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v) #46
          to label %common.resume unwind label %bb.dn, !noalias !6869

bb.dn:                                            ; preds = %bb.dm
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6869
  unreachable

_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0Csc4241EHy6Do_9typst_kit.exit: ; preds = %bb.dj
  %i.kb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.kb, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dp

bb.do:                                            ; preds = %bb.di
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.kc, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4send0Csc4241EHy6Do_9typst_kit.exit, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB5_6SenderuE4sendCsc4241EHy6Do_9typst_kit(i64 %.0.val, ptr %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.aa
    i64 2, label %bb.as
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 40, i1 false)
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !6986 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !6986, !noundef !17 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.da, %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cz, %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6987)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bm, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.044.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bl, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03843.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03843.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.044.i.i        ; 4 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !6987, !noundef !17
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.044.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !6987, !nonnull !17, !noundef !17 ; 2 uses
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !6987, !noundef !17
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !6987 ; 2 uses
  %i.au = icmp eq i64 %.sroa.02.044.i.i, %i.at
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.aa, align 8, !noalias !6987, !noundef !17
  %i.aw = add i64 %i.av, %i.at
  %i.ax = add i64 %.sroa.02.044.i.i, 1
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = add nuw i64 %i.al, 1
  %i.ba = load i64, ptr %i.ad, align 128, !noalias !6987, !noundef !17
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bc = icmp ult i32 %.sroa.0.03843.i.i, 7
  br i1 %i.bc, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6987
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03843.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.bd = mul nuw nsw i32 %.sroa.0.03843.i.i, %.sroa.0.03843.i.i ; 2 uses
  %xtraiter177 = and i32 %i.bd, 7                 ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.03843.i.i, 3
  br i1 %i.be, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter181 = and i32 %i.bd, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter182 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter182.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  %niter182.next.7 = add i32 %niter182, 8         ; 2 uses
  %niter182.ncmp.7 = icmp eq i32 %niter182.next.7, %unroll_iter181
  br i1 %niter182.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit142.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bf = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !6987
  %i.bg = load i64, ptr %i.aa, align 8, !noalias !6987, !noundef !17
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = icmp eq i64 %i.bh, %.sroa.02.044.i.i
  br i1 %i.bi, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsc4241EHy6Do_9typst_kit.exit.i, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03843.i.i, i32 6) ; 2 uses
  %i.bj = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03843.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter183 = and i32 %i.bj, 5                 ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.03843.i.i, 3
  br i1 %i.bk, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter187 = and i32 %i.bj, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter188 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter188.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  %niter188.next.7 = add i32 %niter188, 8         ; 2 uses
  %niter188.ncmp.7 = icmp eq i32 %niter188.next.7, %unroll_iter187
  br i1 %niter188.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit141.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter190 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter190.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6987
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !6874

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit141.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit141.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod186 = icmp ne i32 %xtraiter183, 0
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter184 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter184.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6987
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !6875

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit142.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit142.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod180 = icmp ne i32 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter178 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter178.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6987
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6876

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit142.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit141.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bl = load atomic i64, ptr %i.u monotonic, align 16, !noalias !6987 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03843.i.i, 1
  %i.bm = load i64, ptr %i.v, align 16, !noalias !6987, !noundef !17 ; 2 uses
  %i.bn = and i64 %i.bm, %i.bl
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

bb.i:                                             ; preds = %bb.e
  %i.bp = load i64, ptr %i.aa, align 8, !noalias !6987, !noundef !17
  %i.bq = add i64 %i.bp, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.br = add i64 %.sroa.02.044.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.br, %bb.j ], [ %i.bq, %bb.i ]
  %i.bs = cmpxchg weak ptr %i.u, i64 %.sroa.02.044.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !6987
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bs, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCsc4241EHy6Do_9typst_kit.exit.i, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03843.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter189 = and i32 %i.aj, 7                 ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.03843.i.i, 3
  br i1 %i.bt, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter193 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter194 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter194.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  call void @llvm.x86.sse2.pause(), !noalias !6987
  %niter194.next.7 = add i32 %niter194, 8         ; 2 uses
  %niter194.ncmp.7 = icmp eq i32 %niter194.next.7, %unroll_iter193
  br i1 %niter194.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.h
  %i.bu = load i32, ptr %i.s, align 8, !range !46, !noundef !17 ; 2 uses
  %.not.i = icmp eq i32 %i.bu, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al ; 2 uses
  store ptr %i.bv, ptr %i.q, align 8, !alias.scope !6987
  %i.bw = add i64 %.sroa.02.044.i.i, 1            ; 2 uses
  store i64 %i.bw, ptr %i.t, align 8, !alias.scope !6987
  store atomic i64 %i.bw, ptr %i.bv release, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bx) #50
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

bb.l:                                             ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsc4241EHy6Do_9typst_kit.exit.i
  %i.by = load i64, ptr %i.r, align 8, !noundef !17 ; 2 uses
  %i.bz = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ca = extractvalue { i64, i32 } %i.bz, 0      ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %.split.i, label %bb.z

bb.m:                                             ; preds = %bb.z, %.split.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6988
  store ptr %i.q, ptr %i.p, align 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.r, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.cc = load i8, ptr %i.af, align 8, !range !18, !noalias !6989, !noundef !17
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.m
  %i.ce = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !6988 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.ce, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !6988, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !6988
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.t, !prof !23

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6988
  %i.ch = call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !6988 ; 2 uses
  store ptr %i.ch, ptr %i.o, align 8, !noalias !6988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6988
  store ptr %i.q, ptr %i.m, align 8, !noalias !6988
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store ptr %i.r, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChanneluE4send0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ch)
          to label %bb.q unwind label %bb.o, !noalias !6988

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6990)
  call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  call void @llvm.experimental.noalias.scope.decl(metadata !6992)
  %i.cj = load ptr, ptr %i.o, align 8, !alias.scope !6993, !noalias !6988, !nonnull !17, !noundef !17
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !6994
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #48
          to label %common.resume unwind label %bb.s, !noalias !6988

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6988
  call void @llvm.experimental.noalias.scope.decl(metadata !6995)
  call void @llvm.experimental.noalias.scope.decl(metadata !6996)
  call void @llvm.experimental.noalias.scope.decl(metadata !6997)
  %i.cm = load ptr, ptr %i.o, align 8, !alias.scope !6998, !noalias !6988, !nonnull !17, !noundef !17
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !6999
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #48, !noalias !6988
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6988
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i

bb.s:                                             ; preds = %bb.y, %bb.p
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6988
  unreachable

common.resume:                                    ; preds = %bb.ax, %bb.bl, %bb.bm, %.body.i.i, %bb.cs, %bb.aq, %.thread54.i.i, %bb.o, %bb.p, %bb.x, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.aq ], [ %i.cw, %bb.y ], [ %i.ci, %bb.o ], [ %i.cw, %bb.x ], [ %i.ci, %bb.p ], [ %lpad.phi.i.i, %.thread54.i.i ], [ %i.fh, %bb.ax ], [ %i.hh, %bb.bm ], [ %lpad.thr_comm.split-lp.i, %bb.cs ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.hh, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6988
  store ptr %i.cg, ptr %i.n, align 8, !noalias !6988
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store atomic i64 0, ptr %i.cq release, align 8, !noalias !6988
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store atomic ptr null, ptr %i.cr release, align 8, !noalias !6988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6988
  store ptr %i.q, ptr %i.l, align 8, !noalias !6988
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8
  store ptr %i.r, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChanneluE4send0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cg)
          to label %bb.u unwind label %bb.x, !noalias !6988

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6988
  %i.cs = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !6988, !noundef !17 ; 3 uses
  store ptr %i.cs, ptr %i.k, align 8, !noalias !6988
  store ptr %i.cg, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !6988
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !7000
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #48, !noalias !6988
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6988
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i

bb.x:                                             ; preds = %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !7001
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.y, label %common.resume

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #48
          to label %common.resume unwind label %bb.s, !noalias !6988

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4send0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.p) #50, !noalias !6988
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i

_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6988
  %i.cz = load atomic i64, ptr %i.u monotonic, align 16, !noalias !7002 ; 2 uses
  %i.da = load i64, ptr %i.v, align 16, !noalias !7002, !noundef !17 ; 2 uses
  %i.db = and i64 %i.da, %i.cz
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

.split.i:                                         ; preds = %bb.l
  %i.dd = extractvalue { i64, i32 } %i.bz, 1      ; 2 uses
  %i.de = icmp ult i32 %i.dd, 1000000000
  call void @llvm.assume(i1 %i.de)
  %.not15.i = icmp samesign ult i32 %i.dd, %i.bu
  br i1 %.not15.i, label %bb.m, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

bb.z:                                             ; preds = %bb.l
  %.not14.i = icmp slt i64 %i.ca, %i.by
  br i1 %.not14.i, label %bb.m, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i, %.split.i, %bb.z, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCsc4241EHy6Do_9typst_kit.exit.i
  %.sroa.0.0.i = phi i8 [ 2, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCsc4241EHy6Do_9typst_kit.exit.i ], [ 1, %bb.b ], [ 1, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %bb.z ], [ 0, %.split.i ], [ 1, %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsc4241EHy6Do_9typst_kit.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4sendCsc4241EHy6Do_9typst_kit.exit

bb.aa:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8, !noalias !7003 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.di = load atomic ptr, ptr %i.dh acquire, align 8, !noalias !7003
  %i.dj = and i64 %i.dg, 1
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i4, label %_RNCNvMs2_NtNtCsaL1QbXo9JQH_3std4sync4mpmcINtB7_6SenderuE4send0Csc4241EHy6Do_9typst_kit.exit

.lr.ph.i.i4:                                      ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.backedge.i.i, %.lr.ph.i.i4
  %.sroa.03.079.i.i = phi i64 [ %i.dg, %.lr.ph.i.i4 ], [ %i.du, %.backedge.i.i ] ; 3 uses
  %.sroa.07.078.i.i = phi ptr [ %i.di, %.lr.ph.i.i4 ], [ %i.dv, %.backedge.i.i ] ; 2 uses
  %.sroa.0.077.i.i = phi i32 [ 0, %.lr.ph.i.i4 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.042.076.i.i = phi ptr [ null, %.lr.ph.i.i4 ], [ %.sroa.042.0.be.i.i, %.backedge.i.i ] ; 4 uses
  %i.dm = lshr exact i64 %.sroa.03.079.i.i, 1
  %i.dn = and i64 %i.dm, 31                       ; 3 uses
  %i.do = icmp eq i64 %i.dn, 31
  br i1 %i.do, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dp = icmp ult i32 %.sroa.0.077.i.i, 7
  br i1 %i.dp, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit64.i.i, !noalias !7003

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.ac
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.077.i.i, 0
  br i1 %.not.i.i.i9, label %.loopexit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dq = mul nuw nsw i32 %.sroa.0.077.i.i, %.sroa.0.077.i.i ; 2 uses
  %xtraiter171 = and i32 %i.dq, 7                 ; 3 uses
  %i.dr = icmp ult i32 %.sroa.0.077.i.i, 3
  br i1 %i.dr, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter175 = and i32 %i.dq, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter176 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter176.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  %niter176.next.7 = add i32 %niter176, 8         ; 2 uses
  %niter176.ncmp.7 = icmp eq i32 %niter176.next.7, %unroll_iter175
  br i1 %niter176.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

bb.ae:                                            ; preds = %bb.ab
  %i.ds = icmp eq i64 %i.dn, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.042.076.i.i, null
  %or.cond.i.i = select i1 %i.ds, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockuEEEECsc4241EHy6Do_9typst_kit.exit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i12
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %.loopexit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter172 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter172.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !6914

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i8, %bb.ad
  %i.dt = add i32 %.sroa.0.077.i.i, 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.loopexit63.i.i, %bb.al, %bb.ak, %.loopexit.i.i
  %.sroa.042.0.be.i.i = phi ptr [ %.sroa.042.3.i.i, %.loopexit63.i.i ], [ %.sroa.042.076.i.i, %.loopexit.i.i ], [ %i.eb, %bb.ak ], [ %i.eb, %bb.al ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ek, %.loopexit63.i.i ], [ %i.dt, %.loopexit.i.i ], [ %.sroa.0.077.i.i, %bb.ak ], [ %.sroa.0.077.i.i, %bb.al ]
  %i.du = load atomic i64, ptr %i.df acquire, align 8, !noalias !7003 ; 2 uses
  %i.dv = load atomic ptr, ptr %i.dh acquire, align 8, !noalias !7003
  %i.dw = and i64 %i.du, 1
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ab, label %._crit_edge.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockuEEEECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.af, %bb.ae
  %.sroa.042.3.i.i = phi ptr [ %.sroa.042.076.i.i, %bb.ae ], [ %i.dz, %bb.af ] ; 8 uses
  %i.dy = icmp eq ptr %.sroa.07.078.i.i, null
  br i1 %i.dy, label %bb.ag, label %bb.am

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7003
  %i.dz = tail call noalias noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !7003 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.noexc20.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockuEEEECsc4241EHy6Do_9typst_kit.exit.i.i, !prof !23

.noexc20.i.i:                                     ; preds = %bb.af
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #45, !noalias !7003
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockuEEEECsc4241EHy6Do_9typst_kit.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !7003
  %i.eb = tail call noalias noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !7003 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ah, label %bb.ai, !prof !23

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #45
          to label %.noexc21.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7003

.noexc21.i.i:                                     ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ed = cmpxchg ptr %i.dh, ptr null, ptr %i.eb release monotonic, align 8, !noalias !7003
  %i.ee = extractvalue { ptr, i1 } %i.ed, 1
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store atomic ptr %i.eb, ptr %i.dl release, align 8, !noalias !7003
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ef = icmp eq ptr %.sroa.042.3.i.i, null
  br i1 %i.ef, label %.backedge.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.3.i.i, i64 noundef 256, i64 noundef 8) #42, !noalias !7003
  br label %.backedge.i.i

bb.am:                                            ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockuEEEECsc4241EHy6Do_9typst_kit.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %.sroa.07.078.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4list5BlockuEEEECsc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.eb, %bb.aj ] ; 3 uses
  %i.eg = add i64 %.sroa.03.079.i.i, 2
  %i.eh = cmpxchg weak ptr %i.df, i64 %.sroa.03.079.i.i, i64 %i.eg seq_cst acquire, align 8, !noalias !7003
  %.sroa.18.0.in.i.i.i5 = extractvalue { i64, i1 } %i.eh, 1
  br i1 %.sroa.18.0.in.i.i.i5, label %bb.an, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i: ; preds = %bb.am
  %..i.i.i.i6 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.i, i32 6) ; 2 uses
  %i.ei = mul nuw nsw i32 %..i.i.i.i6, %..i.i.i.i6 ; 2 uses
  %.not.i28.i.i = icmp eq i32 %.sroa.0.077.i.i, 0
  br i1 %.not.i28.i.i, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i
  %xtraiter = and i32 %i.ei, 5                    ; 3 uses
  %i.ej = icmp ult i32 %.sroa.0.077.i.i, 3
  br i1 %i.ej, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter = and i32 %i.ei, 56
  br label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit63.i.i.loopexit.unr-lcssa, label %.lr.ph.i31.i.i

bb.an:                                            ; preds = %bb.am
  br i1 %i.ds, label %bb.ao, label %._crit_edge.i.i

bb.ao:                                            ; preds = %bb.an
  %.not15.i.i = icmp eq ptr %.sroa.042.3.i.i, null
  br i1 %.not15.i.i, label %bb.ap, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #45, !noalias !7003
  unreachable

.loopexit63.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i31.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %.loopexit63.i.i.loopexit.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod170 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !7003
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.epil, !llvm.loop !6915

.loopexit63.i.i:                                  ; preds = %.loopexit63.i.i.loopexit.unr-lcssa, %.lr.ph.i31.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i27.i.i
  %i.ek = add i32 %.sroa.0.077.i.i, 1
  br label %.backedge.i.i

.loopexit64.i.i:                                  ; preds = %bb.ad
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp.i.i:                           ; preds = %bb.ah
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit64.i.i
  %.sroa.042.1.ph.i.i = phi ptr [ %.sroa.042.076.i.i, %.loopexit64.i.i ], [ %.sroa.042.3.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit64.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.el = icmp eq ptr %.sroa.042.1.ph.i.i, null
  br i1 %i.el, label %common.resume, label %.thread54.i.i

.thread54.i.i:                                    ; preds = %bb.aq
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.1.ph.i.i, i64 noundef 256, i64 noundef 8) #42, !noalias !7003
  br label %common.resume

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.an
  %.sroa.9.0.i = phi i64 [ %i.dn, %bb.an ], [ 0, %.backedge.i.i ]
  %.sroa.4.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.an ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.042.4.i.i = phi ptr [ %.sroa.042.3.i.i, %bb.an ], [ %.sroa.042.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.em = icmp eq ptr %.sroa.042.4.i.i, null
  br i1 %i.em, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsc4241EHy6Do_9typst_kit.exit.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.4.i.i, i64 noundef 256, i64 noundef 8) #42, !noalias !7003
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsc4241EHy6Do_9typst_kit.exit.i

end_hunk_13
begin_hunk_14_@_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages6obtain:bb.a
    i64 3, label %bb.h
    i64 0, label %bb.j
    i64 1, label %bb.i
  ], !prof !30

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ult ptr %i.aj, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.ak, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.aj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !7870, !noalias !7869
  store i8 3, ptr %i.c, align 8, !alias.scope !7870, !noalias !7869
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7869
  %.sroa.048.0.copyload62 = load i64, ptr %i.e, align 8 ; 2 uses
  store i64 -1, ptr %0, align 8
  %i.ar = icmp eq i64 %.sroa.048.0.copyload62, 0
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootEBF_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %.sroa.048.0.copyload62, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !7871
  %.val.i.pre = load ptr, ptr %i.h, align 8, !alias.scope !7872
  %.val1.i.pre = load i8, ptr %i.t, align 1, !alias.scope !7872
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootEBF_.exit

bb.l:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7868
  %.sroa.048.0.copyload = load i64, ptr %i.e, align 8
  store i64 %.sroa.048.0.copyload, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %.sroa.554.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootEBF_.exit: ; preds = %bb.k, %bb.j, %bb.l
  %.val1.i = phi i8 [ %.val1.i.pre, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %bb.l ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.k ], [ %i.x, %bb.j ], [ %i.x, %bb.l ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !7872)
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootEBF_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.as = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %bb.m
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !7872
  %.not.i.i.i.i = icmp eq i64 %i.at, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7872
  %i.au = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !7872, !noundef !17 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %bb.n, !prof !16

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #45, !noalias !7872
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.av = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.as, ptr %i.aw, align 8, !noalias !7872
  store i64 8, ptr %i.b, align 8, !noalias !7872
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !noalias !7872
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7872
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootEBF_.exit, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.o:                                             ; preds = %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECsc4241EHy6Do_9typst_kit.exit, %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !range !21, !alias.scope !50, !noundef !17 ; 2 uses
  %i.az = icmp eq i64 %.val, 0
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsc4241EHy6Do_9typst_kit.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !7873
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsc4241EHy6Do_9typst_kit.exit

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsc4241EHy6Do_9typst_kit.exit, %bb.b
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsc4241EHy6Do_9typst_kit.exit, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsc4241EHy6Do_9typst_kit.exit ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i32 %3, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7915)
  %i.t = load atomic i64, ptr %1 monotonic, align 128, !noalias !7915
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, %bb.b
  %.sroa.0.038.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i ] ; 12 uses
  %.sroa.02.0.i = phi i64 [ %i.t, %bb.b ], [ %i.ay, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i ] ; 7 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i, i32 6) ; 2 uses
  %i.u = mul nuw nsw i32 %umin, %umin             ; 2 uses
  %i.v = load i64, ptr %i.l, align 16, !noalias !7915, !noundef !17
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %.sroa.02.0.i              ; 3 uses
  %i.y = load i64, ptr %i.m, align 8, !noalias !7915, !noundef !17
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %.sroa.02.0.i, %i.z
  %i.ab = load ptr, ptr %i.n, align 8, !noalias !7915, !nonnull !17, !noundef !17
  %i.ac = load i64, ptr %i.o, align 32, !noalias !7915, !noundef !17
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !7915 ; 3 uses
  %i.ag = add i64 %.sroa.02.0.i, 1
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i
  br i1 %i.ai, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = add nuw i64 %i.x, 1
  %i.ak = load i64, ptr %i.q, align 128, !noalias !7915, !noundef !17
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.am = icmp ult i32 %.sroa.0.038.i, 7
  br i1 %i.am, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !7915
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.sroa.0.038.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.an = mul nuw nsw i32 %.sroa.0.038.i, %.sroa.0.038.i ; 2 uses
  %xtraiter = and i32 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.038.i, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit63.unr-lcssa, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.ap = load atomic i64, ptr %i.p monotonic, align 128, !noalias !7915 ; 2 uses
  %i.aq = load i64, ptr %i.l, align 16, !noalias !7915, !noundef !17 ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = and i64 %i.ap, %i.ar
  %i.at = icmp eq i64 %i.as, %.sroa.02.0.i
  br i1 %i.at, label %bb.i, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i: ; preds = %bb.h
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.038.i, i32 6) ; 2 uses
  %i.au = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i13.i = icmp eq i32 %.sroa.0.038.i, 0
  br i1 %.not.i13.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i16.i.preheader

.lr.ph.i16.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i
  %xtraiter71 = and i32 %i.au, 5                  ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.038.i, 3
  br i1 %i.av, label %.lr.ph.i16.i.epil.preheader, label %.lr.ph.i16.i.preheader.new

.lr.ph.i16.i.preheader.new:                       ; preds = %.lr.ph.i16.i.preheader
  %unroll_iter75 = and i32 %i.au, 56
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i, %.lr.ph.i16.i.preheader.new
  %niter76 = phi i32 [ 0, %.lr.ph.i16.i.preheader.new ], [ %niter76.next.7, %.lr.ph.i16.i ]
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  %niter76.next.7 = add i32 %niter76, 8           ; 2 uses
  %niter76.ncmp.7 = icmp eq i32 %niter76.next.7, %unroll_iter75
  br i1 %niter76.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit62.unr-lcssa, label %.lr.ph.i16.i

bb.i:                                             ; preds = %bb.h
  %i.aw = and i64 %i.aq, %i.ap
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit.thread

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod79.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod80 = icmp ne i32 %xtraiter77, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter78 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter78.next, %.lr.ph.i26.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !7915
  %epil.iter78.next = add i32 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i32 %epil.iter78.next, %xtraiter77
  br i1 %epil.iter78.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i26.i.epil, !llvm.loop !7876

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit62.unr-lcssa: ; preds = %.lr.ph.i16.i
  %lcmp.mod73.not = icmp eq i32 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i16.i.epil.preheader

.lr.ph.i16.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit62.unr-lcssa, %.lr.ph.i16.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter71, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i16.i.epil

.lr.ph.i16.i.epil:                                ; preds = %.lr.ph.i16.i.epil, %.lr.ph.i16.i.epil.preheader
  %epil.iter72 = phi i32 [ 0, %.lr.ph.i16.i.epil.preheader ], [ %epil.iter72.next, %.lr.ph.i16.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !7915
  %epil.iter72.next = add i32 %epil.iter72, 1     ; 2 uses
  %epil.iter72.cmp.not = icmp eq i32 %epil.iter72.next, %xtraiter71
  br i1 %epil.iter72.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i16.i.epil, !llvm.loop !7877

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit63.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit63.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !7915
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i.i.epil, !llvm.loop !7878

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit63.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit62.unr-lcssa, %.lr.ph.i16.i.epil, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i12.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, %bb.g
  %i.ay = load atomic i64, ptr %1 monotonic, align 128, !noalias !7915
  %.sroa.0.1.i = add i32 %.sroa.0.038.i, 1
  br label %bb.c

bb.j:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.m, align 8, !noalias !7915, !noundef !17
  %i.ba = add i64 %i.az, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.ba, %bb.j ], [ %i.af, %bb.e ]
  %i.bb = cmpxchg weak ptr %1, i64 %.sroa.02.0.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !7915
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bb, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.l, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i: ; preds = %bb.k
  %.not.i23.i = icmp eq i32 %.sroa.0.038.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i
  %xtraiter77 = and i32 %i.u, 7                   ; 3 uses
  %i.bc = icmp ult i32 %.sroa.0.038.i, 3
  br i1 %i.bc, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter81 = and i32 %i.u, 56
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter82 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter82.next.7, %.lr.ph.i26.i ]
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  call void @llvm.x86.sse2.pause(), !noalias !7915
  %niter82.next.7 = add i32 %niter82, 8           ; 2 uses
  %niter82.ncmp.7 = icmp eq i32 %niter82.next.7, %unroll_iter81
  br i1 %niter82.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.i
  %i.bd = load i32, ptr %i.j, align 8, !range !46, !noundef !17 ; 2 uses
  %.not = icmp eq i32 %i.bd, -1
  br i1 %.not, label %bb.p, label %bb.o

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.af

bb.l:                                             ; preds = %bb.k
  store ptr %i.ae, ptr %i.h, align 8, !alias.scope !7915
  %i.be = load i64, ptr %i.m, align 8, !noalias !7915, !noundef !17
  %i.bf = add i64 %i.be, %.sroa.02.0.i            ; 2 uses
  store i64 %i.bf, ptr %i.k, align 8, !alias.scope !7915
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7916
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !noalias !7916
  store atomic i64 %i.bf, ptr %i.ae release, align 8, !noalias !7916
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bh)
          to label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit unwind label %bb.m, !noalias !7916

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #46
          to label %common.resume unwind label %bb.n, !noalias !7916

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !7916
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.aa, %bb.ab, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %i.bv, %bb.r ], [ %i.cj, %bb.aa ], [ %i.bv, %bb.s ], [ %i.cj, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.l
  %.sroa.0.0.copyload4 = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7916
end_hunk_14
