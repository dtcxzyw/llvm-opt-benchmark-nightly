Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc6SenderINtNtB4_6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail:bb.a

.lr.ph.i.i8.i.i.i.i.i:                            ; preds = %._crit_edge.i6.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11.i.i.i.i.i, %.lr.ph.i.i8.i.i.i.i.i
  %.sroa.01.06.i.i9.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i8.i.i.i.i.i ], [ %i.dw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11.i.i.i.i.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i9.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.06.i.i9.i.i.i.i.i, i64 24, i1 false), !noalias !804
  %i.dx = load i64, ptr %i.dv, align 8, !noalias !804, !noundef !10
  %.val.i.i10.i.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !804, !nonnull !10, !noundef !10
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i10.i.i.i.i.i, i64 24
  %i.dz = cmpxchg ptr %i.dy, i64 0, i64 %i.dx acq_rel acquire, align 8, !noalias !804
  %i.ea = extractvalue { i64, i1 } %i.dz, 1
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.a, align 8, !noalias !804, !nonnull !10, !noundef !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !804, !nonnull !10, !noundef !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 2 uses
  %i.ef = atomicrmw xchg ptr %i.ee, i32 1 release, align 4, !noalias !804
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.eh = load ptr, ptr %i.a, align 8, !alias.scope !809, !noalias !804, !nonnull !10, !noundef !10
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !810
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #36, !noalias !804
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !804
  %i.ek = icmp eq ptr %i.dw, %i.dt
  br i1 %i.ek, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12.i.i.i.i.i, label %bb.ac

bb.ag:                                            ; preds = %bb.ad
  %i.el = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ee) #33, !noalias !804 ; 0 uses
  br label %bb.ae

bb.ah:                                            ; preds = %.lr.ph.i3.i.i.i.i.i
  %i.em = load ptr, ptr %.sroa.0.02.i4.i.i.i.i.i, align 8, !noalias !800, !nonnull !10, !noundef !10
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !800, !nonnull !10, !noundef !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40 ; 2 uses
  %i.eq = atomicrmw xchg ptr %i.ep, i32 1 release, align 4, !noalias !800
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah, %.lr.ph.i3.i.i.i.i.i
  %i.es = icmp eq ptr %i.dk, %i.di
  br i1 %i.es, label %._crit_edge.i6.i.i.i.i.i, label %.lr.ph.i3.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.et = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ep) #33, !noalias !800 ; 0 uses
  br label %bb.ai

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11.i.i.i.i.i, %._crit_edge.i6.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i
  br i1 %i.bk, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12.i.i.i.i.i
  %i.eu = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ev = and i64 %i.eu, 9223372036854775807
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.al, !prof !12

bb.al:                                            ; preds = %bb.ak
  %i.ex = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ex, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  store atomic i8 1, ptr %i.bh monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12.i.i.i.i.i
  %i.ey = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %bb.an, label %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drops0_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, !prof !18

bb.an:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val) #33
  br label %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drops0_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i

_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drops0_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %bb.an, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.fb = atomicrmw xchg ptr %i.fa, i8 1 acq_rel, align 1
  %.not.i5.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i5.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderINtNtB4_6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.ao

bb.ao:                                            ; preds = %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drops0_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.fc) #33
  %i.fd = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.fd) #33
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderINtNtB4_6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderINtNtB4_6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.b, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drop0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %bb.f, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drops_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %bb.n, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBV_3ops4drop4Drop4drops0_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %bb.ao
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %i.d, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 16, !noundef !10 ; 2 uses
  %i.j = and i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.l) #38
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

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i, %bb.e
  %i.u = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i ] ; 5 uses
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.v     ; 3 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !10
  %i.y = sub i64 0, %i.x
  %i.z = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.y
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10
  %i.ab = load i64, ptr %i.s, align 16, !noundef !10
  %i.ac = icmp ult i64 %i.w, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.w ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.w, 1
  %i.aj = load i64, ptr %i.t, align 128, !noundef !10
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.al, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.am = mul nuw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter40 = and i32 %i.am, 7                  ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter44 = and i32 %i.am, 56
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
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !811

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %i.ao, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.n ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.05.0.i.i.i.i.i.i, %bb.n ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.q, align 8, !noundef !10
  %i.aq = add i64 %i.ap, %i.z
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.k ], [ %i.ae, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !24, !alias.scope !824, !noundef !10
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6KYBFtxZ0jn_12notify_types5event5EventECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.au) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  tail call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error5ErrorECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.ar) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.aw = atomicrmw xchg ptr %i.av, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.o

bb.o:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 16, !alias.scope !827, !noundef !10 ; 2 uses
  %i.ax = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !827, !nonnull !10, !noundef !10
  %i.ay = shl nuw nsw i64 %.val1.i.i.i.i.i.i, 6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ay, i64 noundef 8) #33, !noalias !827
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.az) #33
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ba) #33
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

bb.p:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 acq_rel, align 8
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.bf = atomicrmw or ptr %i.be, i64 1 seq_cst, align 8
  %i.bg = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bi = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bj = and i64 %i.bi, 62
  %i.bk = icmp eq i64 %i.bj, 62
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ], [ 0, %bb.r ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bl, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i9.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i9.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.preheader

.lr.ph.i.i.i.i.i12.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i
  %i.bm = mul nuw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bm, 7                    ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i12.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i12.i.i.preheader.new

.lr.ph.i.i.i.i.i12.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i12.i.i.preheader
  %unroll_iter = and i32 %i.bm, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i12.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i12.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.epil.preheader

.lr.ph.i.i.i.i.i12.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i12.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i12.i.i.epil

.lr.ph.i.i.i.i.i12.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i12.i.i.epil, %.lr.ph.i.i.i.i.i12.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i12.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i12.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, label %.lr.ph.i.i.i.i.i12.i.i.epil, !llvm.loop !818

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i12.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i8.i.i, %bb.s
  %i.bo = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.bp = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bq = and i64 %i.bp, 62
  %i.br = icmp eq i64 %i.bq, 62
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.r ], [ %i.bp, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.r ], [ %i.bo, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i6.i.i ]
  %i.bs = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bt = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bv = atomicrmw xchg ptr %i.bu, ptr null acq_rel, align 8 ; 2 uses
  %i.bw = lshr i64 %i.bt, 1                       ; 2 uses
  %i.bx = icmp ne i64 %i.bw, %i.bs                ; 2 uses
  %i.by = icmp eq ptr %i.bv, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bv, %._crit_edge.i.i.i.i.i.i ], [ %i.cd, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bx, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i5.i.i = phi i32 [ %i.cc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bz = icmp ult i32 %.sroa.0.1.i.i.i.i5.i.i, 7
  br i1 %i.bz, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i5.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.ca = mul nuw i32 %.sroa.0.1.i.i.i.i5.i.i, %.sroa.0.1.i.i.i.i5.i.i ; 2 uses
  %xtraiter22 = and i32 %i.ca, 7                  ; 3 uses
  %i.cb = icmp ult i32 %.sroa.0.1.i.i.i.i5.i.i, 3
  br i1 %i.cb, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.ca, 56
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
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i26.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i26.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i26.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !819

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.t
  %i.cc = add i32 %.sroa.0.1.i.i.i.i5.i.i, 1
  %i.cd = atomicrmw xchg ptr %i.bu, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bt, %.loopexit.i.i.i.i.i.i ], [ %i.dg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i ]
  %i.ce = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.ce, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE20discard_all_messagesCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i, label %bb.u

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i
  %i.cf = phi i64 [ %i.dh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i ], [ %i.bw, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.dg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i ], [ %i.bt, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 6 uses
  %i.cg = and i64 %i.cf, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cg, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.v, label %bb.x

bb.u:                                             ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE20discard_all_messagesCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 1984 ; 3 uses
  %i.ci = load atomic ptr, ptr %i.ch acquire, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.v, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.cn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.ck = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.ck, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.cl = mul nuw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.cl, 7                  ; 3 uses
  %i.cm = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.cl, 56
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
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !820

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.w
  %i.cn = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.co = load atomic ptr, ptr %i.ch acquire, align 8
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.v
  %i.cq = load atomic ptr, ptr %i.ch acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 1992, i64 noundef 8) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i

bb.x:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.154.i.i.i.i.i.i, i64 %i.cg ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8
  %i.cu = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.x, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.cz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.x ] ; 6 uses
  %i.cw = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.cw, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cx = mul nuw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cx, 7                  ; 3 uses
  %i.cy = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.cy, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cx, 56
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
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i40.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !821

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.y
  %i.cz = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.da = load atomic i64, ptr %i.cs acquire, align 8
  %i.db = and i64 %i.da, 1
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.x
  %i.dd = load i64, ptr %i.cr, align 8, !range !24, !alias.scope !828, !noundef !10
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6KYBFtxZ0jn_12notify_types5event5EventECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.df) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i

bb.aa:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i
  tail call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error5ErrorECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cr) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i4.i.i: ; preds = %bb.aa, %bb.z, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %i.cq, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i.i ], [ %.sroa.011.154.i.i.i.i.i.i, %bb.z ], [ %.sroa.011.154.i.i.i.i.i.i, %bb.aa ] ; 2 uses
  %i.dg = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.dh = lshr i64 %i.dg, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dh, %i.bs
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE20discard_all_messagesCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i: ; preds = %bb.u, %._crit_edge58.i.i.i.i.i.i
  %i.di = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.di, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE20discard_all_messagesCsgZlHlzpN0xi_7uu_tail.exit.i.i.i.i.i, %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.dk = atomicrmw xchg ptr %i.dj, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

bb.ac:                                            ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 acq_rel, align 8
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10disconnectCsgZlHlzpN0xi_7uu_tail(ptr noundef nonnull align 8 %.8.val) #33
  %i.do = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dp = atomicrmw xchg ptr %i.do, i8 1 acq_rel, align 1
  %.not.i16.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i16.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.dq) #33
  %i.dr = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.dr) #33
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drop0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEEECsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %bb.p, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEENtNtNtBX_3ops4drop4Drop4drops_0CsgZlHlzpN0xi_7uu_tail.exit.i.i.i, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.g, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit, !prof !18

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.g, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgZlHlzpN0xi_7uu_tail.exit, !prof !18

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgZlHlzpN0xi_7uu_tail.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val2, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.c, align 8, !range !27, !noundef !10
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0CsgZlHlzpN0xi_7uu_tail:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread27
  %i.ce = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1880
  %i.cf = and i64 %i.ce, 9223372036854775807
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.ch = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !1880
  %i.ci = xor i1 %i.ch, true
  %i.cj = zext i1 %i.ci to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.cj, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cl = load atomic i8, ptr %i.ck monotonic, align 4, !noalias !1880
  %.not.i.i.not = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit13, label %bb.w, !prof !12

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1881
  store ptr %i.cb, ptr %i.b, align 8, !noalias !1881
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cm, align 8, !noalias !1881
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #37, !noalias !1882
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit13: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit
  %i.cn = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !1883, !noalias !1884, !nonnull !10, !noundef !10 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 72 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1883, !noalias !1884, !noundef !10 ; 7 uses
  %.idx72 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx72
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %._crit_edge71, label %.lr.ph70

bb.x:                                             ; preds = %.lr.ph70
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit13, %bb.x
  %i.cx = phi ptr [ %i.cu, %bb.x ], [ %i.cp, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit13 ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit13 ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !1885, !noalias !1886, !noundef !10
  %.not.i.i21 = icmp eq i64 %i.da, %i.h
  br i1 %.not.i.i21, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph70
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.db = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  %.not.i.i.i = icmp samesign ult i64 %i.cy, %i.cr
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cy ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.dc, align 8, !noalias !1889 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !1889
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = xor i64 %i.cy, -1
  %i.df = add nsw i64 %i.cr, %i.de
  %i.dg = mul nuw nsw i64 %i.df, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr nonnull align 8 %i.dd, i64 %i.dg, i1 false), !noalias !1890
  %i.dh = add nsw i64 %i.cr, -1                   ; 2 uses
  store i64 %i.dh, ptr %i.cq, align 8, !alias.scope !1891, !noalias !1892
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i, label %bb.ah, !prof !37

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.y
  %i.di = phi i64 [ %i.cr, %bb.y ], [ %i.dh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i ] ; 2 uses
  %i.dj = icmp samesign ult i64 %i.di, 384307168202282326
  call void @llvm.assume(i1 %i.dj)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cy, i64 noundef %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #37, !noalias !1893
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !10, !align !14, !noundef !10 ; 8 uses
  %i.dm = cmpxchg ptr %i.dl, i32 0, i32 1 acquire monotonic, align 4, !noalias !1894
  %i.dn = extractvalue { i32, i1 } %i.dm, 1
  br i1 %i.dn, label %bb.ab, label %bb.aa, !prof !12

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dl) #33, !noalias !1894
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.do = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1894
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit25, label %bb.ac, !prof !12

bb.ac:                                            ; preds = %bb.ab
  %i.dr = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !1894
  %i.ds = xor i1 %i.dr, true
  %i.dt = zext i1 %i.ds to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit25

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit25: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i22 = phi i8 [ %i.dt, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %i.dv = load atomic i8, ptr %i.du monotonic, align 4, !noalias !1894
  %.not.i.i23.not = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i23.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1895
  store ptr %i.dl, ptr %i.c, align 8, !noalias !1895
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i22, ptr %i.dw, align 8, !noalias !1895
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #37, !noalias !1896
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit25
  %i.dx = trunc nuw i8 %.sroa.01.0.i.i22 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !1897, !noalias !1898, !nonnull !10, !noundef !10 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 72 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !1897, !noalias !1898, !noundef !10 ; 7 uses
  %.idx = mul nuw nsw i64 %i.eb, 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.ef = add nuw nsw i64 %i.ei, 1
  %i.eg = icmp eq ptr %i.ee, %i.ec
  br i1 %i.eg, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit, %bb.ae
  %i.eh = phi ptr [ %i.ee, %bb.ae ], [ %i.dz, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit ] ; 2 uses
  %i.ei = phi i64 [ %i.ef, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !1899, !noalias !1900, !noundef !10
  %.not.i.i27 = icmp eq i64 %i.ek, %i.h
  br i1 %.not.i.i27, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i26)
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %i.el = icmp ult i64 %i.eb, 384307168202282326
  call void @llvm.assume(i1 %i.el)
  %.not.i.i.i28 = icmp samesign ult i64 %i.ei, %i.eb
  br i1 %.not.i.i.i28, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i30, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i29

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i30: ; preds = %bb.af
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ei ; 4 uses
  %.sroa.0.0.copyload1.i.i31 = load ptr, ptr %i.em, align 8, !noalias !1903 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i32 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i32, i64 16, i1 false), !noalias !1903
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = xor i64 %i.ei, -1
  %i.ep = add nsw i64 %i.eb, %i.eo
  %i.eq = mul nuw nsw i64 %i.ep, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.en, i64 %i.eq, i1 false), !noalias !1904
  %i.er = add nsw i64 %i.eb, -1                   ; 2 uses
  store i64 %i.er, ptr %i.ea, align 8, !alias.scope !1905, !noalias !1906
  %.not.i4.i33 = icmp eq ptr %.sroa.0.0.copyload1.i.i31, null
  br i1 %.not.i4.i33, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i29, label %bb.aq, !prof !37

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i29: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i30, %bb.af
  %i.es = phi i64 [ %i.eb, %bb.af ], [ %i.er, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i30 ] ; 2 uses
  %i.et = icmp samesign ult i64 %i.es, 384307168202282326
  call void @llvm.assume(i1 %i.et)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ei, i64 noundef %i.es, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #37, !noalias !1907
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.eu = load atomic i8, ptr %i.j acquire, align 8
  %.not2.i = icmp eq i8 %i.eu, 0
  br i1 %.not2.i, label %.lr.ph.i38, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit

.lr.ph.i38:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ey, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.ev = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.ev, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i38
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i38
  %.not.i.i40 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i40, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.ew = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.ew, 7                    ; 3 uses
  %i.ex = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.ex, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ew, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod83 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1845

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ey = add i32 %.sroa.0.03.i, 1
  %i.ez = load atomic i8, ptr %i.j acquire, align 8
  %.not.i39 = icmp eq i8 %i.ez, 0
  br i1 %.not.i39, label %.lr.ph.i38, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -2, ptr %i.f, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not, label %bb.ax, label %bb.aw, !prof !18

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.fa = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !1908
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #36
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cn, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit
  %i.fc = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.ak, !prof !12

bb.ak:                                            ; preds = %bb.aj
  %i.ff = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ff, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ck monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit
  %i.fg = atomicrmw xchg ptr %i.cb, i32 0 release, align 4
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit42, !prof !18

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cb) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit42: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.fi, align 8
  br label %bb.an

._crit_edge71:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit13
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #37
  unreachable

bb.an:                                            ; preds = %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit42
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.aw ], [ -2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45 ], [ -2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit42 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  %i.fj = load i64, ptr %i.f, align 8, !range !38, !alias.scope !1909, !noundef !10
  switch i64 %i.fj, label %bb.ap [
    i64 -2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit
    i64 -1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6KYBFtxZ0jn_12notify_types5event5EventECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %.sroa.410.0..sroa_idx) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

bb.ap:                                            ; preds = %bb.an
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs6mPptk5f3AV_6notify5error5ErrorECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.f) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.aq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i30
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i26, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i26)
  store ptr %.sroa.0.0.copyload1.i.i31, ptr %i.d, align 8
  %i.fk = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i31, i64 1 release, align 8, !noalias !1910
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit43

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #36
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit43

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit43: ; preds = %bb.aq, %bb.ar
  br i1 %i.dx, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit43
  %i.fm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fn = and i64 %i.fm, 9223372036854775807
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.at, !prof !12

bb.at:                                            ; preds = %bb.as
  %i.fp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.fp, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.au

bb.au:                                            ; preds = %bb.at
  store atomic i8 1, ptr %i.du monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44: ; preds = %bb.au, %bb.at, %bb.as, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit43
  %i.fq = atomicrmw xchg ptr %i.dl, i32 0 release, align 4
  %i.fr = icmp eq i32 %i.fq, 2
  br i1 %i.fr, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45, !prof !18

bb.av:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dl) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit45: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fs, align 8
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #37
  unreachable

bb.aw:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, i64 48, i1 false)
  br label %bb.an

bb.ax:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0CsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #7 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !35, !noundef !10 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #38
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !10
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings4from:bb.a
  br label %bb.ht

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit298: ; preds = %bb.hu, %bb.ht, %bb.hv
  %i.ahs = icmp eq i64 %.sroa.0347.0.copyload348, 0
  %or.cond502 = select i1 %.sroa.047.0.not, i1 true, i1 %i.ahs
  br i1 %or.cond502, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit302, label %bb.hy

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit302: ; preds = %bb.hy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5202
  %i.aht = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !5202 ; 4 uses
  %i.ahu = icmp eq ptr %i.aht, null
  br i1 %i.ahu, label %bb.hx, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit299, !prof !18

bb.hx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit302
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39, !noalias !5202
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit299: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aht, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  store i32 1, ptr %.sroa.4415.0..sroa_idx, align 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aht, ptr %i.ahv, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @112, ptr %i.ahw, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsEBF_.exit

bb.hy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit298
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5349.0.copyload351, i64 noundef %.sroa.0347.0.copyload348, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5203
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit302

bb.hz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit
  %i.ahx = icmp samesign ult i64 %.sroa.9377.0, 192153584101141163
  call void @llvm.assume(i1 %i.ahx)
  %i.ahy = icmp samesign ugt i64 %.sroa.9377.0, 1
  br i1 %i.ahy, label %bb.ia, label %.thread490

.thread490:                                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread, %bb.hz, %bb.ia
  %.sroa.0375.1487 = phi i64 [ %.sroa.0375.1489, %bb.ia ], [ %.sroa.0375.0, %bb.hz ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ]
  %.sroa.6376.1484 = phi ptr [ %.sroa.6376.1486, %bb.ia ], [ %.sroa.6376.0, %bb.hz ], [ %i.aes, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ]
  %.sroa.9377.1481 = phi i64 [ %.sroa.9377.1483, %bb.ia ], [ %.sroa.9377.0, %bb.hz ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ]
  %.sroa.046.0 = phi i8 [ %i.aib, %bb.ia ], [ 0, %bb.hz ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ]
  store i64 %.sroa.0309.0, ptr %0, align 8
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kb, ptr %.sroa.4386.0..sroa_idx, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kc, ptr %.sroa.5387.0..sroa_idx, align 8
  %.sroa.6388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0375.1487, ptr %.sroa.6388.0..sroa_idx, align 8
  %.sroa.7389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.6376.1484, ptr %.sroa.7389.0..sroa_idx, align 8
  %.sroa.8390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9377.1481, ptr %.sroa.8390.0..sroa_idx, align 8
  %.sroa.9391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.16.0, ptr %.sroa.9391.0..sroa_idx, align 8
  %.sroa.10392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.18.0, ptr %.sroa.10392.0..sroa_idx, align 8
  %.sroa.12394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.20308.0, ptr %.sroa.12394.0..sroa_idx, align 8
  %.sroa.13395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.22.0, ptr %.sroa.13395.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.0.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.kg, ptr %.sroa.15396.0..sroa_idx, align 1
  %.sroa.16397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %.sroa.046.0, ptr %.sroa.16397.0..sroa_idx, align 2
  %.sroa.17398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 75
  store i8 %i.kh, ptr %.sroa.17398.0..sroa_idx, align 1
  %.sroa.18399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ki, ptr %.sroa.18399.0..sroa_idx, align 4
  %.sroa.19400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %.sroa.01.0, ptr %.sroa.19400.0..sroa_idx, align 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsEBF_.exit

bb.ia:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread, %bb.hz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit
  %.sroa.0375.1489 = phi i64 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ], [ %.sroa.0375.0, %bb.hz ], [ %.sroa.0375.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit ]
  %.sroa.6376.1486 = phi ptr [ %i.aes, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ], [ %.sroa.6376.0, %bb.hz ], [ %.sroa.6376.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit ]
  %.sroa.9377.1483 = phi i64 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit.thread ], [ %.sroa.9377.0, %bb.hz ], [ %.sroa.9377.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit ]
  %i.ahz = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 5) #33
  %i.aia = xor i1 %i.ahz, true
  %i.aib = zext i1 %i.aia to i8
  br label %.thread490

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsEBF_.exit: ; preds = %_RNCNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB7_8Settings4from0B9_.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit299, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit259, %bb.bx, %.thread490
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i8 0, 3) i8 @_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings6verify(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not5 = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not5, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val.i = load i64, ptr %i.h, align 8, !range !22, !noalias !5206, !noundef !10
  %i.i = icmp eq i64 %.val.i, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.k = load i8, ptr %i.j, align 1, !range !16, !noundef !10 ; 2 uses
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit.loopexit: ; preds = %bb.b, %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 77
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !16
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit.loopexit, %bb.c
  %i.m = phi i8 [ %.pre, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit.loopexit ], [ %i.k, %bb.c ]
  %.not2 = icmp eq i8 %i.m, 2
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit
  %i.n = load i64, ptr %0, align 8, !range !40, !noundef !10 ; 2 uses
  %.not3 = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !41
  %.sroa.01.0.in.in = select i1 %.not3, i64 %i.p, i64 %i.n
  %.sroa.01.0.in = icmp eq i64 %.sroa.01.0.in.in, 3
  %spec.select = select i1 %.sroa.01.0.in, i8 2, i8 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit
  %.sroa.0.0 = phi i8 [ 1, %bb.c ], [ 0, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit ], [ %spec.select, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings9has_stdin(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val.i = load i64, ptr %i.g, align 8, !range !22, !noalias !5209, !noundef !10
  %i.h = icmp eq i64 %.val.i, -1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.i, %i.e
  %or.cond = select i1 %i.h, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit, label %.lr.ph

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_8is_stdinEBU_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.h, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10start_recvCsgZlHlzpN0xi_7uu_tail(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.043 = phi i32 [ 0, %bb.a ], [ %.sroa.0.043.be, %.backedge ] ; 14 uses
  %.sroa.012.0 = phi ptr [ %i.c, %bb.a ], [ %i.o, %.backedge ] ; 3 uses
  %.sroa.07.0 = phi i64 [ %i.a, %bb.a ], [ %i.n, %.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.07.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %.sroa.0.043, 7
  br i1 %i.h, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i, label %.backedge.sink.split

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i: ; preds = %bb.c
  %.not.i = icmp eq i32 %.sroa.0.043, 0
  br i1 %.not.i, label %.backedge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i
  %i.i = mul nuw i32 %.sroa.0.043, %.sroa.0.043   ; 2 uses
  %xtraiter77 = and i32 %i.i, 7                   ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.043, 3
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter81 = and i32 %i.i, 56
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter82 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter82.next.7, %.lr.ph.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter82.next.7 = add i32 %niter82, 8           ; 2 uses
  %niter82.ncmp.7 = icmp eq i32 %niter82.next.7, %unroll_iter81
  br i1 %niter82.ncmp.7, label %.backedge.loopexit.unr-lcssa, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.07.0, 2                   ; 2 uses
  %i.l = and i64 %.sroa.07.0, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.h

.backedge.sink.split:                             ; preds = %bb.c, %bb.l
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %.backedge

.backedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod79.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %.backedge, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.backedge.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod80 = icmp ne i32 %xtraiter77, 0
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter78 = phi i32 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter78.next, %.lr.ph.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter78.next = add i32 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i32 %epil.iter78.next, %xtraiter77
  br i1 %epil.iter78.cmp.not, label %.backedge, label %.lr.ph.i.epil, !llvm.loop !5210

.backedge.loopexit64.unr-lcssa:                   ; preds = %.lr.ph.i23
  %lcmp.mod73.not = icmp eq i32 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.backedge, label %.lr.ph.i23.epil.preheader

.lr.ph.i23.epil.preheader:                        ; preds = %.backedge.loopexit64.unr-lcssa, %.lr.ph.i23.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter71, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i23.epil

.lr.ph.i23.epil:                                  ; preds = %.lr.ph.i23.epil, %.lr.ph.i23.epil.preheader
  %epil.iter72 = phi i32 [ 0, %.lr.ph.i23.epil.preheader ], [ %epil.iter72.next, %.lr.ph.i23.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter72.next = add i32 %epil.iter72, 1     ; 2 uses
  %epil.iter72.cmp.not = icmp eq i32 %epil.iter72.next, %xtraiter71
  br i1 %epil.iter72.cmp.not, label %.backedge, label %.lr.ph.i23.epil, !llvm.loop !5211

.backedge.loopexit65.unr-lcssa:                   ; preds = %.lr.ph.i33
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge, label %.lr.ph.i33.epil.preheader

.lr.ph.i33.epil.preheader:                        ; preds = %.backedge.loopexit65.unr-lcssa, %.lr.ph.i33.preheader
  %lcmp.mod70 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.i33.epil

.lr.ph.i33.epil:                                  ; preds = %.lr.ph.i33.epil, %.lr.ph.i33.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge, label %.lr.ph.i33.epil, !llvm.loop !5212

.backedge:                                        ; preds = %.backedge.loopexit65.unr-lcssa, %.lr.ph.i33.epil, %.backedge.loopexit64.unr-lcssa, %.lr.ph.i23.epil, %.backedge.loopexit.unr-lcssa, %.lr.ph.i.epil, %.backedge.sink.split, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19
  %i.n = load atomic i64, ptr %0 acquire, align 128
  %i.o = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.043.be = add i32 %.sroa.0.043, 1
  br label %bb.b

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.p = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = icmp eq i64 %i.e, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted = xor i64 %i.p, %.sroa.07.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %i.s = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.k, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = and i64 %i.p, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %spec.select, %bb.f ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.0, null
  br i1 %i.v, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.w, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.i ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.h
  %i.x = cmpxchg weak ptr %0, i64 %.sroa.07.0, i64 %.sroa.01.0 seq_cst acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.x, 1
  br i1 %.sroa.18.0.in.i, label %bb.m, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29

bb.l:                                             ; preds = %bb.h
  %i.y = icmp ult i32 %.sroa.0.043, 7
  br i1 %i.y, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19, label %.backedge.sink.split

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19: ; preds = %bb.l
  %.not.i20 = icmp eq i32 %.sroa.0.043, 0
  br i1 %.not.i20, label %.backedge, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19
  %i.z = mul nuw i32 %.sroa.0.043, %.sroa.0.043   ; 2 uses
  %xtraiter71 = and i32 %i.z, 7                   ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.043, 3
  br i1 %i.aa, label %.lr.ph.i23.epil.preheader, label %.lr.ph.i23.preheader.new

.lr.ph.i23.preheader.new:                         ; preds = %.lr.ph.i23.preheader
  %unroll_iter75 = and i32 %i.z, 56
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %.lr.ph.i23.preheader.new
  %niter76 = phi i32 [ 0, %.lr.ph.i23.preheader.new ], [ %niter76.next.7, %.lr.ph.i23 ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter76.next.7 = add i32 %niter76, 8           ; 2 uses
  %niter76.ncmp.7 = icmp eq i32 %niter76.next.7, %unroll_iter75
  br i1 %niter76.ncmp.7, label %.backedge.loopexit64.unr-lcssa, label %.lr.ph.i23

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29: ; preds = %bb.k
  %..i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043, i32 6) ; 2 uses
  %i.ab = mul nuw nsw i32 %..i.i, %..i.i          ; 2 uses
  %.not.i30 = icmp eq i32 %.sroa.0.043, 0
  br i1 %.not.i30, label %.backedge, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29
  %xtraiter = and i32 %i.ab, 5                    ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.043, 3
  br i1 %i.ac, label %.lr.ph.i33.epil.preheader, label %.lr.ph.i33.preheader.new

.lr.ph.i33.preheader.new:                         ; preds = %.lr.ph.i33.preheader
  %unroll_iter = and i32 %i.ab, 56
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33, %.lr.ph.i33.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.preheader.new ], [ %niter.next.7, %.lr.ph.i33 ]
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
  br i1 %niter.ncmp.7, label %.backedge.loopexit65.unr-lcssa, label %.lr.ph.i33

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.f, 30
  br i1 %i.ad, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 1984 ; 2 uses
  %i.af = load atomic ptr, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.lr.ph.i37, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit

.lr.ph.i37:                                       ; preds = %bb.n, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.n ] ; 6 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ah, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i37
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i37
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.ai = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter83 = and i32 %i.ai, 7                  ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter87 = and i32 %i.ai, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter88 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter88.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter88.next.7 = add i32 %niter88, 8           ; 2 uses
  %niter88.ncmp.7 = icmp eq i32 %niter88.next.7, %unroll_iter87
  br i1 %niter88.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod85.not = icmp eq i32 %xtraiter83, 0
  br i1 %lcmp.mod85.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod86 = icmp ne i32 %xtraiter83, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter84 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter84.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter84.next = add i32 %epil.iter84, 1     ; 2 uses
  %epil.iter84.cmp.not = icmp eq i32 %epil.iter84.next, %xtraiter83
  br i1 %epil.iter84.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !5213

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.o
  %i.ak = add i32 %.sroa.0.02.i, 1
  %i.al = load atomic ptr, ptr %i.ae acquire, align 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i37, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.n
  %.lcssa.i = phi ptr [ %i.af, %bb.n ], [ %i.al, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 2 uses
  %i.an = and i64 %.sroa.01.0, -2
  %i.ao = add i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 1984
  %i.aq = load atomic ptr, ptr %i.ap monotonic, align 8
  %i.ar = icmp ne ptr %i.aq, null
  %i.as = zext i1 %i.ar to i64
  %spec.select17 = or disjoint i64 %i.ao, %i.as
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select17, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE9wait_nextCsgZlHlzpN0xi_7uu_tail.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.012.0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.au, align 8
  br label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4readCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr captures(address) %.16.val, i64 %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = icmp eq ptr %.16.val, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %.24.val, 31
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %.16.val, i64 %.24.val ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.l, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.i = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.j = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.j, 7                     ; 3 uses
  %i.k = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.j, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod10 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !5214

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.l = add i32 %.sroa.0.02.i, 1
  %i.m = load atomic i64, ptr %i.e acquire, align 8
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.p = add nuw nsw i64 %.24.val, 1              ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  br i1 %i.q, label %.lr.ph.i1, label %bb.h

bb.d:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.l

.lr.ph.i1:                                        ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit, %bb.g
  %.sroa.0.03.i = phi i64 [ %i.z, %bb.g ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %.16.val, i64 %.sroa.0.03.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = and i64 %i.t, 2
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %.lr.ph.i1.1

bb.e:                                             ; preds = %.lr.ph.i1
  %i.w = atomicrmw or ptr %i.s, i64 4 acq_rel, align 8
  %i.x = and i64 %i.w, 2
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit, label %.lr.ph.i1.1

.lr.ph.i1.1:                                      ; preds = %bb.e, %.lr.ph.i1
  %i.z = add nuw nsw i64 %.sroa.0.03.i, 2         ; 2 uses
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %.16.val, i64 %.sroa.0.03.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 2 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8
  %i.ad = and i64 %i.ac, 2
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i1.1
  %i.af = atomicrmw or ptr %i.ab, i64 4 acq_rel, align 8
  %i.ag = and i64 %i.af, 2
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i1.1
  %exitcond.not.i.1 = icmp eq i64 %i.z, 30
  br i1 %exitcond.not.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit.sink.split, label %.lr.ph.i1

bb.h:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_writeCsgZlHlzpN0xi_7uu_tail.exit
  %i.ai = atomicrmw or ptr %i.e, i64 2 acq_rel, align 8
  %i.aj = and i64 %i.ai, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit, label %bb.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit.sink.split: ; preds = %bb.k, %bb.g, %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef 1992, i64 noundef 8) #33
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.j, %bb.e, %bb.f, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit.sink.split, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i64 %.24.val, 29
  br i1 %i.al, label %.lr.ph.i3, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit.sink.split

.lr.ph.i3:                                        ; preds = %bb.i, %bb.k
  %.sroa.0.03.i4 = phi i64 [ %i.am, %bb.k ], [ %i.p, %bb.i ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.0.03.i4, 1       ; 2 uses
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %.16.val, i64 %.sroa.0.03.i4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 2
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i3
  %i.as = atomicrmw or ptr %i.ao, i64 4 acq_rel, align 8
  %i.at = and i64 %i.as, 2
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i3
  %exitcond.not.i5 = icmp eq i64 %i.am, 30
  br i1 %exitcond.not.i5, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit.sink.split, label %.lr.ph.i3

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE7destroyCsgZlHlzpN0xi_7uu_tail.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.l = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10start_recvCsgZlHlzpN0xi_7uu_tail(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #33
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0uECsgZlHlzpN0xi_7uu_tail.exit
  %i.o = load i32, ptr %i.i, align 8, !range !19, !noundef !10 ; 2 uses
  %.not = icmp eq i32 %i.o, -1
  br i1 %.not, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0uECsgZlHlzpN0xi_7uu_tail.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %i.j, align 8, !noundef !10
  %.val3 = load i64, ptr %i.k, align 8
  call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4readCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.f, ptr %.val, i64 %.val3) #33
  %i.p = load i64, ptr %i.f, align 8, !range !38, !noundef !10
  %i.q = icmp eq i64 %i.p, -2
  br i1 %i.q, label %bb.m, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.s = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #33 ; 2 uses
  %i.t = extractvalue { i64, i32 } %i.s, 0        ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.r
  br i1 %i.u, label %.split, label %bb.j

bb.d:                                             ; preds = %.split, %bb.j, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5237
  store ptr %i.g, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.v = load i8, ptr %i.n, align 8, !range !16, !noalias !5238, !noundef !10
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.i.i, !prof !12

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.d
  %i.x = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgZlHlzpN0xi_7uu_tail(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #33, !noalias !5237 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvs_0uEs_0uECsgZlHlzpN0xi_7uu_tail.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.d
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.x, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %i.m, %bb.d ] ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10disconnectCsgZlHlzpN0xi_7uu_tail:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  call void @llvm.experimental.noalias.scope.decl(metadata !5287)
  %i.av = load ptr, ptr %i.b, align 8, !alias.scope !5288, !noalias !5283, !nonnull !10, !noundef !10
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !5289
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #36, !noalias !5283
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5283
  %i.ay = icmp eq ptr %i.ak, %i.ah
  br i1 %i.ay, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, label %bb.g

bb.k:                                             ; preds = %bb.h
  %i.az = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.as) #33, !noalias !5283 ; 0 uses
  br label %bb.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ba = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !5279, !nonnull !10, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !5279, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !5279
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l, %.lr.ph.i
  %i.bg = icmp eq ptr %i.y, %i.w
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.bd) #33, !noalias !5279 ; 0 uses
  br label %bb.m

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i, %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !5290, !nonnull !10, !noundef !10 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !5290, !noundef !10 ; 2 uses
  %.idx.i2 = mul nuw nsw i64 %i.bl, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i2
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %._crit_edge.i6, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, %bb.u
  %.sroa.0.02.i4 = phi ptr [ %i.bo, %bb.u ], [ %i.bj, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i4, i64 24 ; 2 uses
  %.sroa.0.0.val.i5 = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !5290, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i5, i64 24
  %i.bq = cmpxchg ptr %i.bp, i64 0, i64 2 acq_rel acquire, align 8, !noalias !5290
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  br i1 %i.br, label %bb.t, label %bb.u

._crit_edge.i6:                                   ; preds = %bb.u, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5291)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5292, !noalias !5293, !noundef !10 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 384307168202282326
  call void @llvm.assume(i1 %i.bu)
  store i64 0, ptr %i.bs, align 8, !alias.scope !5292, !noalias !5293
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !5292, !noalias !5293, !nonnull !10, !noundef !10 ; 2 uses
  %.idx.i.i7 = mul nuw nsw i64 %i.bt, 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i7
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %._crit_edge.i6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11, %.lr.ph.i.i8
  %.sroa.01.06.i.i9 = phi ptr [ %i.bw, %.lr.ph.i.i8 ], [ %i.ca, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i9, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.06.i.i9, i64 24, i1 false), !noalias !5294
  %i.cb = load i64, ptr %i.bz, align 8, !noalias !5294, !noundef !10
  %.val.i.i10 = load ptr, ptr %i.a, align 8, !noalias !5294, !nonnull !10, !noundef !10
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i10, i64 24
  %i.cd = cmpxchg ptr %i.cc, i64 0, i64 %i.cb acq_rel acquire, align 8, !noalias !5294
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.a, align 8, !noalias !5294, !nonnull !10, !noundef !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !5294, !nonnull !10, !noundef !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.cj = atomicrmw xchg ptr %i.ci, i32 1 release, align 4, !noalias !5294
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !5295)
  call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  call void @llvm.experimental.noalias.scope.decl(metadata !5297)
  call void @llvm.experimental.noalias.scope.decl(metadata !5298)
  %i.cl = load ptr, ptr %i.a, align 8, !alias.scope !5299, !noalias !5294, !nonnull !10, !noundef !10
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !5300
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #36, !noalias !5294
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5294
  %i.co = icmp eq ptr %i.ca, %i.bx
  br i1 %i.co, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12, label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.cp = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ci) #33, !noalias !5294 ; 0 uses
  br label %bb.q

bb.t:                                             ; preds = %.lr.ph.i3
  %i.cq = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !5290, !nonnull !10, !noundef !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !5290, !nonnull !10, !noundef !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 2 uses
  %i.cu = atomicrmw xchg ptr %i.ct, i32 1 release, align 4, !noalias !5290
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %.lr.ph.i3
  %i.cw = icmp eq ptr %i.bo, %i.bm
  br i1 %i.cw, label %._crit_edge.i6, label %.lr.ph.i3

bb.v:                                             ; preds = %bb.t
  %i.cx = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ct) #33, !noalias !5290 ; 0 uses
  br label %bb.u

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgZlHlzpN0xi_7uu_tail.exit.i.i11, %._crit_edge.i6, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  br i1 %i.o, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12
  %i.cy = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cz = and i64 %i.cy, 9223372036854775807
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.db = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.db, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit12
  %i.dc = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.dd = icmp eq i32 %i.dc, 2
  br i1 %i.dd, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit, !prof !18

bb.z:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.z
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4readCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr captures(address) %.32.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.32.val, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 57
  %i.c = load i8, ptr %i.b, align 1, !range !13, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 56 ; 2 uses
  %i.f = load atomic i8, ptr %i.e acquire, align 1
  %.not2.i = icmp eq i8 %i.f, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit

.lr.ph.i:                                         ; preds = %bb.c, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.j, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.c ] ; 6 uses
  %i.g = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.g, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.h = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.h, 7                     ; 3 uses
  %i.i = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.h, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !5301

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.j = add i32 %.sroa.0.03.i, 1
  %i.k = load atomic i8, ptr %i.e acquire, align 1
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.c
  %.sroa.08.0.copyload = load i64, ptr %.32.val, align 8 ; 2 uses
  store i64 -2, ptr %.32.val, align 8
  %.not = icmp eq i64 %.sroa.08.0.copyload, -2
  br i1 %.not, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEECsgZlHlzpN0xi_7uu_tail.exit, !prof !18

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %.32.val, align 8 ; 2 uses
  store i64 -2, ptr %.32.val, align 8
  %.not18 = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not18, label %bb.h, label %bb.g, !prof !18

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.510.0..sroa_idx, i64 48, i1 false)
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.32.val, i64 noundef 64, i64 noundef 8) #33
  br label %bb.i

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10wait_readyCsgZlHlzpN0xi_7uu_tail.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #37
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.32.val, i64 56
  store atomic i8 1, ptr %i.l release, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #37
  unreachable

bb.i:                                             ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEECsgZlHlzpN0xi_7uu_tail.exit, %bb.g
  %.sroa.08.0.copyload.sink = phi i64 [ %.sroa.08.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEEEECsgZlHlzpN0xi_7uu_tail.exit ], [ %.sroa.0.0.copyload, %bb.g ], [ -2, %bb.a ]
  store i64 %.sroa.08.0.copyload.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4recvCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  %i.n = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !noalias !5357
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %1) #33, !noalias !5357
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !5357
  %i.q = and i64 %i.p, 9223372036854775807
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !5357
  %i.t = xor i1 %i.s, true
  %i.u = zext i1 %i.t to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.w = load atomic i8, ptr %i.v monotonic, align 4, !noalias !5357
  %.not.i.i.not = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5358
  store ptr %1, ptr %i.g, align 8, !noalias !5358
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.x, align 8, !noalias !5358
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #37, !noalias !5359
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgZlHlzpN0xi_7uu_tail.exit
  %i.y = trunc nuw i8 %.sroa.01.0.i.i to i1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5360)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !5360, !noalias !5361, !noundef !10 ; 6 uses
  %i.ab = icmp ult i64 %i.aa, 384307168202282326
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  %i.ad = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5360, !noalias !5361, !nonnull !10, !noundef !10 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.aa, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.f
  %.sroa.02.010.i.i = phi i64 [ %i.bc, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ 0, %bb.f ] ; 5 uses
  %i.ai = phi ptr [ %i.aj, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %i.ag, %bb.f ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5362)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !5362, !noalias !5363, !nonnull !10, !noundef !10 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load i64, ptr %i.al, align 8, !noalias !5364, !noundef !10
  %.not.i.i.i = icmp eq i64 %i.am, %i.ae
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsgZlHlzpN0xi_7uu_tail.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !5362, !noalias !5363, !noundef !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aq = cmpxchg ptr %i.ap, i64 0, i64 %i.ao acq_rel acquire, align 8, !noalias !5364
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %bb.h, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5362, !noalias !5363, !noundef !10 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store atomic ptr %i.at, ptr %i.av release, align 8, !noalias !5364
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !5364, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.az = atomicrmw xchg ptr %i.ay, i32 1 release, align 4, !noalias !5364
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.k, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ay) #33, !noalias !5364 ; 0 uses
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer8add_path:bb.a
  br i1 %i.y, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.s) #33 ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = icmp eq ptr %5, null
  br i1 %i.ae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB12_2io8buf_read7BufReadEL_EEECsgZlHlzpN0xi_7uu_tail.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i22

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i22: ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !5799)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val2.i28 = load i64, ptr %i.af, align 8, !alias.scope !5799, !noundef !10 ; 2 uses
  %i.ag = icmp eq i64 %.val2.i28, 0
  br i1 %i.ag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgZlHlzpN0xi_7uu_tail.exit32, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i29

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i29: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i22
  %.val1.i30 = load ptr, ptr %5, align 8, !alias.scope !5799, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i30, i64 noundef %.val2.i28, i64 noundef 1) #33, !noalias !5799
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgZlHlzpN0xi_7uu_tail.exit32

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsgZlHlzpN0xi_7uu_tail.exit32: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i22, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i29
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val.i31 = load i32, ptr %i.ah, align 8, !range !27, !alias.scope !5799, !noundef !10
  %i.ai = call noundef i32 @close(i32 noundef %.val.i31) #33, !noalias !5799 ; 0 uses
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB12_2io8buf_read7BufReadEL_EEECsgZlHlzpN0xi_7uu_tail.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %.sroa.511.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #33
  %i.aj = icmp eq i64 %i.p, 0
  br i1 %i.aj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.sroa.2, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.10.0..sroa_idx10, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5796
  br label %bb.m

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5800
  %i.ak = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.al = and i64 %i.ak, 3
  switch i64 %i.al, label %default.unreachable36 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
    i64 1, label %bb.l
  ], !prof !23

default.unreachable36:                            ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.am = icmp ult ptr %i.aa, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.ak, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %i.aa, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !5801, !noalias !5800
  store i8 3, ptr %i.a, align 8, !alias.scope !5801, !noalias !5800
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33, !noalias !5800
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.j, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5800
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.3.sroa.0.023 = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit ], [ %i.aa, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !5802)
  call void @llvm.experimental.noalias.scope.decl(metadata !5803)
  %.not.i.i24 = icmp slt i64 %4, 0
  br i1 %.not.i.i24, label %bb.p, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.as = icmp eq i64 %4, 0
  br i1 %i.as, label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB4_8PathData3new.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5804
  %i.at = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5804 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.o ], [ 0, %bb.m ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %4) #39, !noalias !5805
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !5806
  br label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB4_8PathData3new.exit

_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB4_8PathData3new.exit: ; preds = %bb.n, %bb.q
  %i.av = phi ptr [ %i.at, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %5, ptr %i.aw, align 8, !alias.scope !5802, !noalias !5807
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr @92, ptr %i.ax, align 8, !alias.scope !5802, !noalias !5807
  store i64 %i.x, ptr %i.c, align 8, !alias.scope !5806, !noalias !5808
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.sroa.0.023, ptr %.sroa.3.0..sroa_idx4, align 8, !alias.scope !5806, !noalias !5808
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.sroa.2, i64 160, i1 false), !alias.scope !5806, !noalias !5808
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %4, ptr %i.ay, align 8, !alias.scope !5802, !noalias !5807
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store ptr %i.av, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !5802, !noalias !5807
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i64 %4, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5802, !noalias !5807
  call fastcc void @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB2_12FileHandling6insert(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(216) %i.c, i1 noundef zeroext %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load i64, ptr %i.e, align 8, !range !11, !noundef !10 ; 2 uses
  %i.az = icmp eq i64 %.val, 0
  br i1 %i.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit25, label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB4_8PathData3new.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit25

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit25: ; preds = %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB4_8PathData3new.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB12_2io8buf_read7BufReadEL_EEECsgZlHlzpN0xi_7uu_tail.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE10start_recvCsgZlHlzpN0xi_7uu_tail(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, %bb.a
  %.sroa.0.038 = phi i32 [ 0, %bb.a ], [ %.sroa.0.1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32 ] ; 12 uses
  %.sroa.02.0 = phi i64 [ %i.a, %bb.a ], [ %i.al, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32 ] ; 7 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %.sroa.0.038, i32 6) ; 2 uses
  %i.h = mul nuw nsw i32 %umin, %umin             ; 2 uses
  %i.i = load i64, ptr %i.b, align 16, !noundef !10
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, %.sroa.02.0                ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !noundef !10
  %i.m = sub i64 0, %i.l
  %i.n = and i64 %.sroa.02.0, %i.m
  %i.o = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.p = load i64, ptr %i.e, align 32, !noundef !10
  %i.q = icmp ult i64 %i.k, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %i.k ; 2 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 3 uses
  %i.t = add i64 %.sroa.02.0, 1
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %i.s, %.sroa.02.0
  br i1 %i.v, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = add nuw i64 %i.k, 1
  %i.x = load i64, ptr %i.g, align 128, !noundef !10
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.z = icmp ult i32 %.sroa.0.038, 7
  br i1 %i.z, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #33
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i: ; preds = %bb.e
  %.not.i = icmp eq i32 %.sroa.0.038, 0
  br i1 %.not.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i
  %i.aa = mul nuw i32 %.sroa.0.038, %.sroa.0.038  ; 2 uses
  %xtraiter = and i32 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i32 %.sroa.0.038, 3
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.aa, 56
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit60.unr-lcssa, label %.lr.ph.i

bb.g:                                             ; preds = %bb.c
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.f monotonic, align 128 ; 2 uses
  %i.ad = load i64, ptr %i.b, align 16, !noundef !10 ; 2 uses
  %i.ae = xor i64 %i.ad, -1
  %i.af = and i64 %i.ac, %i.ae
  %i.ag = icmp eq i64 %i.af, %.sroa.02.0
  br i1 %i.ag, label %bb.h, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12: ; preds = %bb.g
  %..i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.038, i32 6) ; 2 uses
  %i.ah = mul nuw nsw i32 %..i.i, %..i.i          ; 2 uses
  %.not.i13 = icmp eq i32 %.sroa.0.038, 0
  br i1 %.not.i13, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12
  %xtraiter66 = and i32 %i.ah, 5                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.038, 3
  br i1 %i.ai, label %.lr.ph.i16.epil.preheader, label %.lr.ph.i16.preheader.new

.lr.ph.i16.preheader.new:                         ; preds = %.lr.ph.i16.preheader
  %unroll_iter70 = and i32 %i.ah, 56
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16, %.lr.ph.i16.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i16.preheader.new ], [ %niter71.next.7, %.lr.ph.i16 ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit59.unr-lcssa, label %.lr.ph.i16

bb.h:                                             ; preds = %bb.g
  %i.aj = and i64 %i.ad, %i.ac
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit.unr-lcssa: ; preds = %.lr.ph.i26
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit.unr-lcssa, %.lr.ph.i26.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i26.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i26.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i26.epil, !llvm.loop !5809

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit59.unr-lcssa: ; preds = %.lr.ph.i16
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i16.epil.preheader

.lr.ph.i16.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit59.unr-lcssa, %.lr.ph.i16.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i16.epil

.lr.ph.i16.epil:                                  ; preds = %.lr.ph.i16.epil, %.lr.ph.i16.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i16.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i16.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i16.epil, !llvm.loop !5810

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit60.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit60.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i.epil, !llvm.loop !5811

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit60.unr-lcssa, %.lr.ph.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit59.unr-lcssa, %.lr.ph.i16.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit.unr-lcssa, %.lr.ph.i26.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i, %bb.f, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22
  %i.al = load atomic i64, ptr %0 monotonic, align 128
  %.sroa.0.1 = add i32 %.sroa.0.038, 1
  br label %bb.b

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.m
  %.sroa.0.0 = phi i1 [ true, %bb.m ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.c, align 8, !noundef !10
  %i.an = add i64 %i.am, %i.n
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k
  %.sroa.01.0 = phi i64 [ %i.an, %bb.k ], [ %i.s, %bb.d ]
  %i.ao = cmpxchg weak ptr %0, i64 %.sroa.02.0, i64 %.sroa.01.0 seq_cst monotonic, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.ao, 1
  br i1 %.sroa.18.0.in.i, label %bb.m, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22: ; preds = %bb.l
  %.not.i23 = icmp eq i32 %.sroa.0.038, 0
  br i1 %.not.i23, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22
  %xtraiter72 = and i32 %i.h, 7                   ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.038, 3
  br i1 %i.ap, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter76 = and i32 %i.h, 56
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i26.preheader.new ], [ %niter77.next.7, %.lr.ph.i26 ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.loopexit.unr-lcssa, label %.lr.ph.i26

bb.m:                                             ; preds = %bb.l
  store ptr %i.r, ptr %1, align 8
  %i.aq = load i64, ptr %i.c, align 8, !noundef !10
  %i.ar = add i64 %i.aq, %.sroa.02.0
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  br label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs6KYBFtxZ0jn_12notify_types5event5EventNtNtCs6mPptk5f3AV_6notify5error5ErrorEE4readCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, ptr nofree captures(address_is_null) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = icmp eq ptr %.0.val, null
  br i1 %i.e, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store atomic i64 %.8.val, ptr %.0.val release, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.i = load atomic i8, ptr %i.h seq_cst, align 8
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify.exit

bb.c:                                             ; preds = %bb.b
  %i.j = cmpxchg ptr %i.g, i32 0, i32 1 acquire monotonic, align 4, !noalias !5855
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !12

end_hunk_4
